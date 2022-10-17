#include "parameters.h"
#include "region.h"
#include <ap_int.h>
#include "hls_stream.h"
#include <math.h>
#include <string.h> // memcpy

const float thresh=THRESH;


#define MODE_INIT 1
#define MODE_OUT 2
#define MODE_TEST 3
#define MODE_TRAIN 4

//int find_region(const region_t regions[MAX_REGIONS], const ap_uint<8> n_regions, const float d[MAX_AOV_DIM]){
//
//	int idx = -1;
//	float score = -1;
//	for(int i=0; i < n_regions; i++){
//#pragma HLS loop_tripcount min=0 max=16
//#pragma HLS PIPELINE II=4
//		//#pragma HLS unroll
//		//		if (i>=n_regions)
//		//			break;
//
//		bool is_idx = true;
//		float tmp_score = 0;
//		float dist = 0;
//		float area = 0;
//		find_region_label1:for(int j=0; j < MAX_AOV_DIM; j++){
//			//compute the distance and scale.
//			//#pragma HLS PIPELINE II=1
//			float ldist = (d[j] - regions[i].center[j]);
//			float hdist = (regions[i].max[j] - regions[i].center[j]);
//			float absdist = ldist*ldist;
//			float scale = hdist*hdist;
//			area += scale;
//			dist += absdist > scale ? absdist : scale;
//			//determine if we're out of the bound
//			if(regions[i].min[j] > d[j] || regions[i].max[j] < d[j])
//				is_idx = false;
//		}
//		//used to just be smallest area.
//		tmp_score = 1/area;
//		if(is_idx && (idx < 0 || tmp_score > score)){
//			idx = i;
//			score = tmp_score;
//		}
//	}
//	return idx;
//}

bool hasRegion(const region_t regions[MAX_REGIONS], const ap_uint<8> n_regions, const float d[MAX_AOV_DIM]){
	for(int i=0; i < n_regions; i++){

		//		if (i>=n_regions)
		//			break;
#pragma HLS loop_tripcount min=0 max=16
		//#pragma HLS PIPELINE II=4
		for(int j=0; j < MAX_AOV_DIM; j++){
			//#pragma HLS unroll
#pragma HLS loop_tripcount min=1 max=8

			if(regions[i].min[j] <= d[j] && regions[i].max[j] >= d[j]) {
				if (j==MAX_AOV_DIM-1)
					return true;
			} else break;
		}
	}
	return false;
}

bool is_valid(const float val[MAX_AOV_DIM]){

	is_valid_label0:is_valid_label2:for(int i=0; i < MAX_AOV_DIM;  i++) {
		//#pragma HLS PIPELINE II=1
		//#pragma HLS unroll
		if(isnan(val[i]) || val[i] == INFINITY || val[i] == -INFINITY)
			return false;
	}
	return true;
}

void update_train_regions(region_t regions[MAX_REGIONS], const int id, const float val[MAX_AOV_DIM] ) {// , bool is_acc){
#pragma HLS inline
	//TODO for logging

	//forget behavior
	//	for(int i=0; i < n_regions; i++){
	//		regions[i]->stats.update_accuracy_rate(id == i, is_acc);
	//	}
	//we do not have a region.

	//this->env->update_accuracy_rate(id < 0, false);
	//this->stats->update_accuracy_rate(is_acc); //is accept, is error

	//if(id < 0 || !is_acc) return; //if outside of region, or error.
	//we have a region
	//update boundaries to include point.

	update_train_regions_label3:for(int i=0; i < MAX_AOV_DIM; i++) {
		if(val[i] > regions[id].max[i]) regions[id].max[i] = val[i];
		else if(val[i] < regions[id].min[i]) regions[id].min[i] = val[i];
		regions[id].center[i] = (regions[id].max[i] + regions[id].min[i])/2.0;
	}
}

//bool compare(const float data[MAX_AOV_DIM], const float data_key[MAX_AOV_DIM]){
//	for(int i=0; i < MAX_AOV_DIM; i++){
//		if(fabs(data_key[i] - data[i]) > thresh){
//			return false;
//		}
//	}
//	return true;
//}

//find region, ie find the closest region with similar output, error
//characteristics, returning score.
/* We want to merge nearby regions with a good score
 *
 */
//float score_region(const region_t * r1, const region_t * r2) {
//#pragma HLS inline
//	float distance = 0;
//	//compute the distance
//	for(int j=0; j < MAX_AOV_DIM; j++){
//#pragma HLS unroll
//		float d = (regions[idx].center[j] - regions[i].center[j]);
//		distance += d*d;
//	}
//	float overlap;
//	overlap=1;
//	for(int i=0; i < MAX_AOV_DIM; i++){
//#pragma HLS unroll
//
//		float d1 = regions[idx].max[i] - regions[idx].min[i];
//		float d2 = regions[i].max[i] - regions[i].min[i];
//		float ov;
//		if(regions[idx].min[i] < regions[i].min[i])
//			ov = d1 - (regions[i].min[i] - regions[idx].min[i]);
//		else
//			ov = d2 - (regions[idx].min[i] - regions[i].min[i]);
//		ov = ov < 0 ? 0 : ov;
//		overlap *= ov;
//	}
//	float score=0;
//	//printf("b:%f d:%f o:%f = %f\n", behavior, distance, overlap, score);
//	//if we are overlapping with another group, merge regardless.
//	if(overlap > 0) return overlap;
//	//severely penalize groups where there is an interfering group
//	score -= distance; //negatively impact behavior.
//
//	return score;
//}

//int find_closest_region(const region_t regions[MAX_REGIONS], const ap_uint<8> n_regions, const int idx, float * score){
//	//#pragma HLS inline
//#pragma HLS PIPELINE II=32
//
//	float bestscore=0.0;
//
//	int id = -1;
//	for(int i=0; i < MAX_REGIONS; i++){
//#pragma HLS unroll
//
//		if (i>=n_regions)
//			break;
//		if(i != idx) {
//			//printf("score [%d,%d]:", idx, i);
//
//			float distance = 0;
//			float overlap=1;
//
//			for(int j=0; j < MAX_AOV_DIM; j++){
//#pragma HLS unroll
//
//
//				float d = (regions[idx].center[j] - regions[i].center[j]);
//				distance += d*d;
//
//
//
//				float d1 = regions[idx].max[j] - regions[idx].min[j];
//				float d2 = regions[i].max[j] - regions[i].min[j];
//				float ov;
//				if(regions[idx].min[j] < regions[i].min[j])
//					ov = d1 - (regions[i].min[j] - regions[idx].min[j]);
//				else
//					ov = d2 - (regions[idx].min[j] - regions[i].min[j]);
//				ov = ov < 0 ? 0 : ov;
//				overlap *= ov;
//			}
//			float sc;
//			//printf("b:%f d:%f o:%f = %f\n", behavior, distance, overlap, score);
//			//if we are overlapping with another group, merge regardless.
//			if(overlap > 0)
//				sc = overlap;
//			else
//				//severely penalize groups where there is an interfering group
//				sc = -distance; //negatively impact behavior.
//
//
//			//					score_region(&(regions[idx]), &(regions[i]));
//
//
//			if(id == -1 || sc > bestscore){
//				id = i;
//				bestscore = sc;
//			}
//		}
//	}
//	*score=bestscore;
//	return id;
//}

////merge r2 into r1
//void merge_regions(region_t regions[MAX_REGIONS], const int id1, const int id2){
//#pragma HLS inline
//	for(int i=0; i < MAX_AOV_DIM; i++){
//#pragma HLS unroll
//
//		if(regions[id2].min[i] < regions[id1].min[i]){
//			regions[id1].min[i] = regions[id2].min[i];
//		}
//		if(regions[id2].max[i] > regions[id1].max[i]){
//			regions[id1].max[i] = regions[id2].max[i];
//		}
//		regions[id1].center[i] = (regions[id1].max[i] + regions[id1].min[i])/2.0;
//	}
//
//	//move everything over
//	for(int i=0; i < MAX_REGIONS-1; i++){
//		#pragma HLS unroll
//
//		if (i>=id2) {
//			regions[i] = regions[i+1];
//		}
//	}
//}

void insert_point(region_t regions[MAX_REGIONS], ap_uint<8> &n_regions, const float d[MAX_AOV_DIM]) {//, bool is_accept){

	//int id = find_region(regions, n_regions, d);

	if (is_valid(d)) { //&& id<0) {
		//create a new node.
		insert_point_label4:for(int i=0; i < MAX_AOV_DIM; i++){
			regions[n_regions].min[i] = regions[n_regions].max[i] = regions[n_regions].center[i] = d[i];
		}
		n_regions++;

		//if we're full of space, make room for another region.
		if(n_regions == MAX_REGIONS){ //if we're full.
			//find the region with the most similar dynamics that isn't
			//completely obstructed by another region.
			int merge_1=-1;
			int merge_2=-1;
			float score = 0;

			int i_real=0;
			int k_real=1;

			float tmp_score=0;
			int tmp_other=-1;

			//MAX_REGIONS_SUMM
			for(int i=0; i_real < n_regions-1; i++){
				//#pragma HLS unroll
#pragma HLS loop_tripcount min=0 max=136
#pragma HLS PIPELINE II=8



				//int tmp_other = find_closest_region(regions, n_regions, i, &tmp_score);

				//float bestscore=0.0;




				//				for(int k=i+1; k < MAX_REGIONS; k++){
				//			#pragma HLS unroll

				//					if (k_real>=n_regions)
				//						break;
				//if(k != i) {
				//printf("score [%d,%d]:", i, k);

				float distance = 0;
				float overlap=1;

				insert_point_label5:for(int j=0; j < MAX_AOV_DIM; j++){


					float d = (regions[i_real].center[j] - regions[k_real].center[j]);
					distance += d*d;



					float d1 = regions[i_real].max[j] - regions[i_real].min[j];
					float d2 = regions[k_real].max[j] - regions[k_real].min[j];
					float ov;
					if(regions[i_real].min[j] < regions[k_real].min[j])
						ov = d1 - (regions[k_real].min[j] - regions[i_real].min[j]);
					else
						ov = d2 - (regions[i_real].min[j] - regions[k_real].min[j]);
					ov = ov < 0 ? 0 : ov;
					overlap *= ov;
				}
				float sc;
				//printf("b:%f d:%f o:%f = %f\n", behavior, distance, overlap, score);
				//if we are overlapping with another group, merge regardless.
				if(overlap > 0)
					sc = overlap;
				else
					//severely penalize groups where there is an interfering group
					sc = -distance; //negatively impact behavior.



				if(tmp_other == -1 || sc > tmp_score){
					tmp_other = i_real;
					tmp_score = sc;
				}
				//}
				//				}


				if (k_real==n_regions-1) {
					i_real++;
					k_real=i_real+1;


					if(merge_1 < 0 || tmp_score > score){
						score = tmp_score;
						merge_1 = i_real;
						merge_2 = tmp_other;
					}

					tmp_score=0;
					tmp_other = -1;

					/*if (i_real>=n_regions)
						break;*/

				} else {
					k_real++;
				}
			}

			//merge_regions(regions, merge_1, merge_2);
			//merge regions inlining
			insert_point_label6:for(int i=0; i < MAX_AOV_DIM; i++){
				if(regions[merge_2].min[i] < regions[merge_1].min[i]){
					regions[merge_1].min[i] = regions[merge_2].min[i];
				}
				if(regions[merge_2].max[i] > regions[merge_1].max[i]){
					regions[merge_1].max[i] = regions[merge_2].max[i];
				}
				regions[merge_1].center[i] = (regions[merge_1].max[i] + regions[merge_1].min[i])/2.0;
			}

			//move everything over
			//			insert_point_label7:for(int i=merge_2; i < MAX_REGIONS-1; i++){
			////#pragma HLS PIPELINE off
			//#pragma HLS loop_tripcount min=1 max=15
			//				//if (i>=merge_2) {
			//					regions[i] = regions[i+1];
			//				//}
			//			}
			//if (merge_2!=(n_regions-1))
			regions[merge_2]=regions[n_regions-1];
			n_regions--;
		}
	}
}











#define COMMAND_INIT 1
#define COMMAND_TEST 2
#define COMMAND_TRAIN 3

#define STATE_UNINITIALISED 0
#define STATE_READY 1

ap_uint<2> fsmstate=STATE_UNINITIALISED;

struct OutcomeStr {
	ap_uint<8> checkId;
	ap_uint<8> executionId;
	ap_uint<16> uniId;
	float AOV[MAX_AOV_DIM];
};

struct controlStr {
	ap_uint<8> checkId;
	ap_uint<8> taskId;
	ap_uint<8> executionId;
	ap_uint<16> uniId;
	char command;
	char gap0[2];
	float AOV[MAX_AOV_DIM];
};

struct taskFailure {
	ap_uint<8> taskId;
	ap_uint<8> executionId;
};

#include "hls_math.h"
#define sizeOfInputData sizeof(float)*MAX_AOV_DIM


void writeOutcome(bool bubble, volatile char &errorInTask, ap_uint<8>* failedTaskExecutionId, ap_uint<8> checkId, ap_uint<8> taskId, ap_uint<8> executionId, ap_uint<16> uniId, bool error, /*hls::stream< ap_uint<8>> &toScheduler,*/ OutcomeStr* outcomeInRam, float data[MAX_AOV_DIM], taskFailure *failedTask) {
	//#pragma HLS PIPELINE II=8
	//#pragma HLS inline off
	//	OutcomeStr out;

	/*out.checkId=checkId;
	out.uniId=uniId;
	out.error=error;
	 */
	if (!bubble) {
		OutcomeStr outcome;
		outcome.checkId=checkId;
		outcome.uniId=uniId;
		outcome.executionId=executionId;
		memcpy((void*) &(outcome.AOV), (void*) data, sizeOfInputData);

		//if (!(*errorInTask)) {
		if (!(errorInTask && (*failedTaskExecutionId)==executionId)) {
			memcpy(outcomeInRam, &outcome, sizeof(outcome));
			errorInTask = error;

			if (error) {
				*failedTaskExecutionId=executionId;
				failedTask->taskId=taskId;
				failedTask->executionId=executionId;
			}
		}
	}
	//toScheduler.write(taskId);
	//}
}


void run_test(bool bubble, bool* error, region_t regions[MAX_REGIONS], ap_uint<8> n_regions, float data[MAX_AOV_DIM]) {
	if (bubble)
		return;
		*error = !(is_valid(data) && hasRegion(regions, n_regions, data));//find_region(regions, n_regions, data) < 0 ) ;
}

//void resetError(char* errorInTask, ap_uint<8>* failedTaskExecutionId, ap_uint<8> executionId) {
//	if (*errorInTask && (*failedTaskExecutionId)!=executionId) {
//		*errorInTask=0;
//	}
//}

void setProcessingState(volatile char* processing, bool value) {
	if (value)
		(*processing)=0xFF;
	else
		(*processing)=0x0;
}

bool read_data(volatile char* in_vld, ap_uint<8> *checkId, ap_uint<8> *taskId, ap_uint<8> *executionId, ap_uint<16> *uniId, float AOV[MAX_AOV_DIM], controlStr* inputAOV /*volatile char* copying*/) {


	if (!(*in_vld))
		return true; //BUBBLE


	//setProcessingState(copying, true);
	controlStr dest;
	memcpy(&dest, inputAOV, sizeof(controlStr));
	if (dest.command!=0) //forcing a dependence
		*in_vld=false;

	*checkId=dest.checkId;
	*taskId=dest.taskId;
	*executionId=dest.executionId;
	*uniId=dest.uniId;
	memcpy(AOV, dest.AOV, sizeOfInputData);
	return false;
}

//void runTest(controlStr* inputAOV, /*char* readyForData,  char* copyInputAOV,*/
//		OutcomeStr * outcomeInRam, /* hls::stream< ap_uint<8> > &toScheduler,*/ char errorInTask[MAX_TASKS], ap_uint<8> failedTaskExecutionIds[MAX_TASKS], region_t regions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions[MAX_CHECKS], taskFailure *failedTask, char* copying
//) {
//
//#pragma HLS DATAFLOW
//		bool error;
//
//		ap_uint<8> checkId;
//		ap_uint<8> taskId;
//		ap_uint<8> executionId;
//		ap_uint<16> uniId;
//		float AOV[MAX_AOV_DIM];
//#pragma HLS ARRAY_PARTITION variable=AOV type=complete
//
//		read_data(&checkId, &taskId, &executionId, &uniId, AOV, inputAOV, copying);
//		run_test(&error, regions[checkId], n_regions[checkId], AOV);
//		writeOutcome(&(errorInTask[taskId]), &(failedTaskExecutionIds[taskId]), checkId, taskId, executionId, uniId, error, /* toScheduler,*/ outcomeInRam, AOV, failedTask);
//}
//
//void runTest(controlStr* inputAOV, /*char* readyForData,  char* copyInputAOV,*/
//		OutcomeStr * outcomeInRam, /* hls::stream< ap_uint<8> > &toScheduler,*/ char errorInTask[MAX_TASKS], ap_uint<8> failedTaskExecutionIds[MAX_TASKS], region_t regions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions[MAX_CHECKS], taskFailure *failedTask, char* copying
//) {
//
//	//#pragma HLS DATAFLOW
//
//	//PINGPONG__________________________
//	bool ping=false;
//	//1
//	bool errorPing;
//	ap_uint<8> checkIdPing;
//	ap_uint<8> taskIdPing;
//	ap_uint<8> executionIdPing;
//	ap_uint<16> uniIdPing;
//	float AOVPing[MAX_AOV_DIM];
//#pragma HLS ARRAY_PARTITION variable=AOVPing type=complete
//	//2
//	bool errorPong;
//	ap_uint<8> checkIdPong;
//	ap_uint<8> taskIdPong;
//	ap_uint<8> executionIdPong;
//	ap_uint<16> uniIdPong;
//	float AOVPong[MAX_AOV_DIM];
//#pragma HLS ARRAY_PARTITION variable=AOVPong type=complete
//	//3
//	//2
//	bool errorPong;
//	ap_uint<8> checkIdPung;
//	ap_uint<8> taskIdPung;
//	ap_uint<8> executionIdPung;
//	ap_uint<16> uniIdPung;
//	float AOVPung[MAX_AOV_DIM];
//#pragma HLS ARRAY_PARTITION variable=AOVPong type=complete
//	//______________________________________
//
//	read_data(&checkIdPing, &taskIdPing, &executionIdPing, &uniIdPing, AOVPing, inputAOV, copying);
//
//	pipo_loop: while(true) {
//		if (ping) {
//			read_data(&checkIdPing, &taskIdPing, &executionIdPing, &uniIdPing, AOVPing, inputAOV, copying);
//			run_test(&errorPong, regions[checkIdPong], n_regions[checkIdPong], AOVPong);
//			if (!isNew)writeOutcome(&(errorInTask[taskIdPing]), &(failedTaskExecutionIds[taskIdPing]), checkIdPing, taskIdPing, executionIdPing, uniIdPing, errorPing, /* toScheduler,*/ outcomeInRam, AOVPing, failedTask);
//		} else { //ping
//			read_data(&checkIdPong, &taskIdPong, &executionIdPong, &uniIdPong, AOVPong, inputAOV, copying);
//			run_test(&errorPing, regions[checkIdPing], n_regions[checkIdPing], AOVPing);
//			if (!isNew) writeOutcome(&(errorInTask[taskIdPong]), &(failedTaskExecutionIds[taskIdPong]), checkIdPong, taskIdPong, executionIdPong, uniIdPong, errorPong, /* toScheduler,*/ outcomeInRam, AOVPong, failedTask);
//		}
//		ping=!ping;
//	}
//}

#define PING 0
#define PONG 1
#define PUNG 2
void runTest(volatile char *mode, volatile controlStr* inputAOV, volatile char* data_in_vld, /*char* readyForData,  char* copyInputAOV,*/
		OutcomeStr * outcomeInRam, /* hls::stream< ap_uint<8> > &toScheduler,*/ volatile char errorInTask[MAX_TASKS], ap_uint<8> failedTaskExecutionIds[MAX_TASKS], region_t regions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions[MAX_CHECKS], taskFailure *failedTask /*volatile char* copying*/) {
	ap_uint<2> stat=0;

	//1
	bool errorPing;
	ap_uint<8> checkIdPing;
	ap_uint<8> taskIdPing;
	ap_uint<8> executionIdPing;
	ap_uint<16> uniIdPing;
	float AOVPing[MAX_AOV_DIM];
#pragma HLS ARRAY_PARTITION variable=AOVPing type=complete
	//2
	bool errorPong;
	ap_uint<8> checkIdPong;
	ap_uint<8> taskIdPong;
	ap_uint<8> executionIdPong;
	ap_uint<16> uniIdPong;
	float AOVPong[MAX_AOV_DIM];
#pragma HLS ARRAY_PARTITION variable=AOVPong type=complete
	//3
	bool errorPung;
	ap_uint<8> checkIdPung;
	ap_uint<8> taskIdPung;
	ap_uint<8> executionIdPung;
	ap_uint<16> uniIdPung;
	float AOVPung[MAX_AOV_DIM];
#pragma HLS ARRAY_PARTITION variable=AOVPung type=complete
	//______________________________________
	//PIPELINING, PIPELINE DEPHT 3
	bool bubblePing=true;
	bool bubblePong=true;
	bool bubblePung=true;
	//INIT PHASE CAN BE AVOIDED USING BUBBLES
	//IT1
	bubblePing=read_data(data_in_vld, &checkIdPing, &taskIdPing, &executionIdPing, &uniIdPing, AOVPing, (controlStr*)inputAOV);
	//IT2
	run_test(bubblePing, &errorPing, regions[checkIdPing], n_regions[checkIdPing], AOVPing);
	bubblePong=read_data(data_in_vld, &checkIdPong, &taskIdPong, &executionIdPong, &uniIdPong, AOVPong, (controlStr*)inputAOV);
	//WE'RE READY. LOOP BODY
	pipelined_loop: while((*mode)==MODE_TEST) {
#pragma HLS pipeline off
		switch (stat) {
		case PING:
			bubblePung=read_data(data_in_vld, &checkIdPung, &taskIdPung, &executionIdPung, &uniIdPung, AOVPung, (controlStr*)inputAOV);
			run_test(bubblePong, &errorPong, regions[checkIdPong], n_regions[checkIdPong], AOVPong);
			writeOutcome(bubblePing, errorInTask[taskIdPing], &(failedTaskExecutionIds[taskIdPing]), checkIdPing, taskIdPing, executionIdPing, uniIdPing, errorPing, /* toScheduler,*/ outcomeInRam, AOVPing, failedTask);

			stat=PONG;
			break;
		case PONG:
			bubblePing=read_data(data_in_vld, &checkIdPing, &taskIdPing, &executionIdPing, &uniIdPing, AOVPing, (controlStr*)inputAOV);
			run_test(bubblePung, &errorPung, regions[checkIdPung], n_regions[checkIdPung], AOVPung);
			writeOutcome(bubblePong, errorInTask[taskIdPong], &(failedTaskExecutionIds[taskIdPong]), checkIdPong, taskIdPong, executionIdPong, uniIdPong, errorPong, /* toScheduler,*/ outcomeInRam, AOVPong, failedTask);

			stat=PUNG;
			break;
		case PUNG:
			bubblePong=read_data(data_in_vld, &checkIdPong, &taskIdPong, &executionIdPong, &uniIdPong, AOVPong, (controlStr*)inputAOV);
			run_test(bubblePing, &errorPing, regions[checkIdPing], n_regions[checkIdPing], AOVPing);
			writeOutcome(bubblePung, errorInTask[taskIdPung], &(failedTaskExecutionIds[taskIdPung]), checkIdPung, taskIdPung, executionIdPung, uniIdPung, errorPung, /* toScheduler,*/ outcomeInRam, AOVPung, failedTask);

			stat=PING;
			break;
		default: break;
		}
	}
	//FINISH PROCESSING WHAT IS LEFT IN THE PIPELINE
	//END1
	writeOutcome(bubblePing, errorInTask[taskIdPing], &(failedTaskExecutionIds[taskIdPing]), checkIdPing, taskIdPing, executionIdPing, uniIdPing, errorPing, /* toScheduler,*/ outcomeInRam, AOVPong, failedTask);
	run_test(bubblePong, &errorPong, regions[checkIdPong], n_regions[checkIdPong], AOVPong);
	//END2
	writeOutcome(bubblePong, errorInTask[taskIdPong], &(failedTaskExecutionIds[taskIdPong]), checkIdPong, taskIdPong, executionIdPong, uniIdPong, errorPong, /* toScheduler,*/ outcomeInRam, AOVPong, failedTask);
}
//void runTrain(controlStr* inputAOV, /*char* readyForData,  char* copyInputAOV,*/
//		OutcomeStr * outcomeInRam, /* hls::stream< ap_uint<8> > &toScheduler,*/ char errorInTask[MAX_TASKS], ap_uint<8> failedTaskExecutionIds[MAX_TASKS], region_t regions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions[MAX_CHECKS], taskFailure *failedTask, char* copying
//) {
//#pragma HLS DATAFLOW
//	ap_uint<8> checkId;
//	ap_uint<8> taskId;
//	ap_uint<8> executionId;
//	ap_uint<16> uniId;
//	float AOV[MAX_AOV_DIM];
//#pragma HLS ARRAY_PARTITION variable=AOV type=complete
//
//	read_data(&checkId, &taskId, &executionId, &uniId, AOV, inputAOV, copying);
//	insert_point(regions[checkId],
//			n_regions[checkId],
//			AOV);
//}

//void runAfterInit(char* computeMode, controlStr* inputTest, controlStr* inputTrain, char* copyingTest, char* copyingTrain,
//		OutcomeStr * outcomeInRam, char errorInTask[MAX_TASKS], ap_uint<8> failedTaskExecutionIds[MAX_TASKS], region_t regions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions[MAX_CHECKS], taskFailure *failedTask
//) {
//
//#pragma HLS dataflow
//	//#pragma HLS PIPELINE II=88
//
//
//	//
//	//	controlStr contr;
//	//#pragma HLS array_partition variable=contr.AOV complete //dim=2
//	//
//	//
//	//	read_data(&contr, inputAOV, copying);
//	//
//	//	//if (!errorInTask[taskId]) {
//	//	//setProcessingState(processing, true);
//	//	if (contr.command==COMMAND_TEST) {
//	//		run_test(&error, regions[contr.checkId], n_regions[contr.checkId], contr.AOV);
//	//		writeOutcome(&(errorInTask[contr.taskId]), &(failedTaskExecutionIds[contr.taskId]), contr.checkId, contr.taskId, contr.executionId, contr.uniId, error, /* toScheduler,*/ outcomeInRam, contr.AOV, failedTask);
//	//	}
//	//	else if (contr.command==COMMAND_TRAIN) {
//	//		resetError(&(errorInTask[contr.taskId]), &(failedTaskExecutionIds[contr.taskId]), contr.executionId);
//	//		insert_point(regions[contr.checkId],
//	//				n_regions[contr.checkId],
//	//				contr.AOV);
//	//
//	//	}
//
//	runTest(startTest, inputTest, outcomeInRam, errorInTask, failedTaskExecutionIds, regions, n_regions, failedTask, copyingTest);
//	runTrain(startTrain, inputTrain, outcomeInRam, errorInTask, failedTaskExecutionIds, regions, n_regions, failedTask, copyingTest);
//
//}

//void run_train(region_t regions[MAX_REGIONS], ap_uint<8> &n_regions, float data_key[MAX_AOV_DIM]) {
//#pragma HLS PIPELINE II=64
//	//bool corr = compare(data, data_key);
//	//insert_point(regions, n_regions, data, corr);
//	//if(!corr)
//	//insert_point(regions, n_regions, data_key, true);//data_key[checkId],true);
//	insert_point(regions, n_regions, data_key);//data_key[checkId],true);
//}

//void runTrainAfterInit(hls::stream< controlStr > &testStream, region_t regions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions[MAX_CHECKS]) {
//#pragma HLS dataflow
//
//	//float data_key[MAX_AOV_DIM]; // key
//	//#pragma HLS array_partition variable=data_key complete
//	float data[MAX_CHECKS];//[MAX_AOV_DIM]; // key
//	#pragma HLS array_partition variable=data_key complete //dim=2
//
//	ap_uint<8> taskId;
//	ap_uint<8> checkId;
//	ap_uint<16> uniId;
//
//	read_train(taskId, checkId, uniId, testStream, data);
//	//read_test(data_key, inputDataInRam, checkId);
//	//run_train(regions[checkId],
//	insert_point(regions[checkId],
//			n_regions[checkId],
//			data);
//}

//int init(region_t trainedRegions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions_in[MAX_CHECKS], region_t regions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions[MAX_CHECKS]) {
//#pragma INLINE
//	for (int i=0; i<MAX_CHECKS; i++) {
//			//	#pragma HLS PIPELINE off
//			for (int j=0; j<MAX_REGIONS; j++) {
//	#pragma HLS PIPELINE off
//				regions [i][j] = trainedRegions [i][j];
//			}
//		}
//
//		for (int i=0; i<MAX_CHECKS; i++) {
//	#pragma HLS PIPELINE off
//			n_regions [i] = n_regions_in [i];
//		}
//	return 0;
//}
static region_t regions[MAX_CHECKS][MAX_REGIONS]; //regions from the distribution
static ap_uint<8> n_regions[MAX_CHECKS];
static ap_uint<8> failedTaskExecutionIds[MAX_TASKS];

//void runT(controlStr* inputAOV, char* copyInputAOV,
//		OutcomeStr * outcomeInRam, hls::stream< ap_uint<8> > &toScheduler, bool errorInTask[MAX_TASKS], region_t regions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions[MAX_CHECKS]
//) {
//	*copyInputAOV=0;
//	for (;;)
//		runTestAfterInit(inputAOV, copyInputAOV, outcomeInRam, toScheduler, errorInTask, regions, n_regions);
//}


void run(volatile char* accel_mode, /*volatile char* copying,*/ volatile char* data_in_vld, volatile controlStr* inputData, volatile char errorInTask[MAX_TASKS], OutcomeStr outcomeInRam[MAX_TASKS], region_t trainedRegion_i, region_t *trainedRegion_o, ap_uint<8> IOCheckIdx, ap_uint<8> IORegionIdx, ap_uint<8> *n_regions_in, taskFailure *failedTask) {
#pragma HLS INTERFACE mode=ap_ctrl_hs port=return
#pragma HLS INTERFACE mode=s_axilite port=return
	//#pragma HLS interface s_axilite port = copyInputAOV //bundle=A
	//#pragma HLS interface s_axilite port = readyForData //bundle=A
#pragma HLS interface s_axilite port = accel_mode //bundle=A
#pragma HLS interface m_axi port = inputData offset=slave// bundle=A


#pragma HLS interface s_axilite port = trainedRegion_i //bundle=A
#pragma HLS interface s_axilite port = trainedRegion_o //bundle=A
#pragma HLS interface s_axilite port = IOCheckIdx //bundle=A
#pragma HLS interface s_axilite port = IORegionIdx
#pragma HLS interface s_axilite port = data_in_vld
#pragma HLS interface ap_ovld port = data_in_vld

#pragma HLS INTERFACE ap_hs port=failedTask
#pragma HLS interface s_axilite port = n_regions_in //bundle=A

#pragma HLS interface s_axilite port = errorInTask //bundle=A
#pragma HLS INTERFACE s_axilite port=outcomeInRam
	//#pragma HLS INTERFACE axis port=testStream
	//#pragma HLS INTERFACE axis port=trainStream
	/*#pragma HLS INTERFACE axis port=toScheduler*/

#pragma HLS array_partition variable=regions dim=2 /*complete*/ cyclic factor=2  //should be MAX_REGIONS

#pragma HLS reset variable=failedTaskExecutionIds

#pragma HLS array_partition variable=n_regions complete

	if ((*accel_mode)==MODE_INIT) {
		regions[IOCheckIdx][IORegionIdx]=trainedRegion_i;
		n_regions[IOCheckIdx]=*n_regions_in;
	} else if ((*accel_mode)==MODE_OUT) {
		*trainedRegion_o=regions[IOCheckIdx][IORegionIdx];
		*n_regions_in=n_regions[IOCheckIdx];
	} else if ((*accel_mode)==MODE_TEST) {
		//		for (int i=0; i<3; i++) {
		//#pragma HLS pipeline rewind
		//			bool error;
		//			ap_uint<8> checkId;
		//			ap_uint<8> taskId;
		//			ap_uint<8> executionId;
		//			ap_uint<16> uniId;
		//			float AOV[MAX_AOV_DIM];
		//#pragma HLS ARRAY_PARTITION variable=AOV type=complete
		//
		//			read_data(&checkId, &taskId, &executionId, &uniId, AOV, inputData, copying);
		//			run_test(&error, regions[checkId], n_regions[checkId], AOV);
		//			writeOutcome(&(errorInTask[taskId]), &(failedTaskExecutionIds[taskId]), checkId, taskId, executionId, uniId, error, /* toScheduler,*/ outcomeInRam, AOV, failedTask);
		//		}
		runTest(accel_mode, inputData, data_in_vld, outcomeInRam, errorInTask, failedTaskExecutionIds, regions, n_regions, failedTask/*, copying*/);
	} else if ((*accel_mode)==MODE_TRAIN) {
		//runTrain(inputData, outcomeInRam, errorInTask, failedTaskExecutionIds, regions, n_regions, failedTask, copying);
	}
}
