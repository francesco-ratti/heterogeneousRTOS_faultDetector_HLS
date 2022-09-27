#include "parameters.h"
#include "region.h"
#include <ap_int.h>
#include "hls_stream.h"
#include <math.h>
#include <string.h> // memcpy

const float thresh=THRESH;

//unsigned short aov_dims[MAX_CHECKS];

//void init() {
//	for (int i=0; i < MAX_CHECKS; i++) {
//		n_regions[i]=0;
//		for (int j=0; j<MAX_AOV_DIM; j++) {
//
//			//data_key[i][j]=0.0;
//			data[i][j]=0.0;
//		}
//		//		for (int k=0; k<MAX_REGIONS; k++) {
//		//			regions[i][k].center=0.0;
//		//			regions[i][k].max=0.0;
//		//			regions[i][k].min=0.0;
//		//		}
//	}
//
//	//dummy init TODO
//	for (int i=0; i < MAX_CHECKS; i++) {
//		aov_dims[i]=5;
//	}//__________
//}

int find_region(const region_t regions[MAX_REGIONS], const ap_uint<8> n_regions, const float d[MAX_AOV_DIM]){

	int idx = -1;
	float score = -1;
	for(int i=0; i < MAX_REGIONS; i++){
		//#pragma HLS unroll
		if (i>=n_regions)
			break;

		bool is_idx = true;
		float tmp_score = 0;
		float dist = 0;
		float area = 0;
		find_region_label1:for(int j=0; j < MAX_AOV_DIM; j++){
			//compute the distance and scale.
			//#pragma HLS PIPELINE II=1
			float ldist = (d[j] - regions[i].center[j]);
			float hdist = (regions[i].max[j] - regions[i].center[j]);
			float absdist = ldist*ldist;
			float scale = hdist*hdist;
			area += scale;
			dist += absdist > scale ? absdist : scale;
			//determine if we're out of the bound
			if(regions[i].min[j] > d[j] || regions[i].max[j] < d[j])
				is_idx = false;
		}
		//used to just be smallest area.
		tmp_score = 1/area;
		if(is_idx && (idx < 0 || tmp_score > score)){
			idx = i;
			score = tmp_score;
		}
	}
	return idx;
}


bool is_valid(const float val[MAX_AOV_DIM]){

	is_valid_label0:is_valid_label2:for(int i=0; i < MAX_AOV_DIM;  i++) {
		//#pragma HLS PIPELINE II=1
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
	//#pragma HLS PIPELINE II=256

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

//bool run_train_sw(region_t regions[MAX_REGIONS], ap_uint<8> &n_regions, float data[MAX_AOV_DIM], float inputData[MAX_AOV_DIM]){
//	//if(MODE ==  ABS_DETECTOR_KEY) return true;
//	bool corr = compare(data, inputData);
//	//printf("train: %f = %f : %s pct_fp:%f\n", this->data[0], this->data_key[0], corr ? "same":"not same", this->stats.n_false/this->stats.n_total_train);
//	//insert the training point
//	insert_point(regions, n_regions, data, corr);
//	if(!corr) insert_point(regions, n_regions, inputData, true);//data_key[checkId],true);
//	return true;
//}

//bool run_test_sw(region_t regions[MAX_REGIONS], ap_uint<8> n_regions, float data[MAX_AOV_DIM]) {
//	return !( !is_valid(data) || find_region(regions, n_regions, data) < 0 ) ;
//}




//
//float data[MAX_AOV_DIM];
//region_t regions[MAX_REGIONS];
//int n_regions=0;
//float data_key[MAX_AOV_DIM];

//
//void pippo() {
//	memcpy(data_key, data, sizeof(data));
//	if (!run_test_sw(regions, data)) {
//
//
//
//
//
//
//
//		run_train_sw(regions, n_regions, data, data_key);
//	}
//}
//
//
//
//
//

















#define COMMAND_INIT 1
#define COMMAND_TEST 2
#define COMMAND_TRAIN 3

#define STATE_UNINITIALISED 0
#define STATE_READY 1

//ap_uint<2> fsmstate=STATE_UNINITIALISED;

struct OutcomeStr {
	ap_uint<8> checkId;
	ap_uint<16> uniId;
	float AOV[MAX_AOV_DIM];
};

struct controlStr {
	ap_uint<8> checkId;
	ap_uint<8> taskId;
	ap_uint<16> uniId;
	ap_uint<2> command;
	float AOV[MAX_AOV_DIM];
};


#include "hls_math.h"
#define sizeOfInputData sizeof(float)*MAX_AOV_DIM
#define sizeOfOutcome  ((MAX_CHECKS*sizeof(OutcomeStr)) / 32) + (((MAX_CHECKS*sizeof(OutcomeStr)) % 32) != 0)
#define SHARED_MEM_SIZE sizeOfInputData*MAX_CHECKS+sizeOfOutcome

void read_train(ap_uint<2> &command, ap_uint<8> &taskId, ap_uint<8> &checkId, ap_uint<16> &uniId, hls::stream< controlStr > &testStream, float data[MAX_AOV_DIM]) {
	//#pragma HLS PIPELINE II=64
	controlStr contr=testStream.read();
	taskId=contr.taskId;
	checkId=contr.checkId;
	uniId=contr.uniId;
	command=contr.command;
	memcpy(data, contr.AOV, sizeOfInputData);
}


//void writeOutcome(OutcomeStr outcomeptr[MAX_TASKS], ap_uint<16> checkId, ap_uint<8> taskId, bool error, hls::stream< ap_uint<8>> &toScheduler) {
////#pragma HLS PIPELINE II=8
//	//#pragma HLS inline off
//	OutcomeStr out;
//
//	out.isNew=true;
//	out.error=error;
//
//	memcpy((void*) &(outcomeptr[taskId]), (void*) &out, sizeof(out));
//	if (error)
//		toScheduler.write(taskId);
//}

void writeOutcome(bool &errorInTask, ap_uint<8> checkId, ap_uint<8> taskId, ap_uint<16> uniId, bool error, hls::stream< ap_uint<8>> &toScheduler, OutcomeStr* outcomeInRam, float data[MAX_AOV_DIM]) {
	//#pragma HLS PIPELINE II=8
	//#pragma HLS inline off
	//	OutcomeStr out;

	/*out.checkId=checkId;
	out.uniId=uniId;
	out.error=error;
	 */

	OutcomeStr outcome;
	outcome.checkId=checkId;
	outcome.uniId=uniId;
	memcpy((void*) &(outcome.AOV), (void*) data, sizeOfInputData);

	//memcpy((void*) &(outcomeptr[checkId]), (void*) &out, sizeof(out));
	if (error) {
		memcpy(outcomeInRam, &outcome, sizeof(outcome));
		errorInTask=true;
		toScheduler.write(taskId);
	}
}
//
//void read_test(float dest[MAX_TASKS][MAX_AOV_DIM], float* inputDataInRam, ap_uint<16> checkId) {
//	//#pragma HLS PIPELINE II=8
//#pragma HLS PIPELINE II=88
//
//	memcpy(dest[checkId], inputDataInRam, sizeOfInputData);
//}

void run_test(bool &error, region_t regions[MAX_REGIONS], ap_uint<8> n_regions, float data[MAX_AOV_DIM]) {
	error = ( !is_valid(data) || find_region(regions, n_regions, data) < 0 ) ;
}

void runTestAfterInit(hls::stream< controlStr > &testStream,
		OutcomeStr * outcomeInRam, hls::stream< ap_uint<8> > &toScheduler, bool errorInTask[MAX_TASKS], region_t regions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions[MAX_CHECKS]) {


#pragma HLS dataflow
	//#pragma HLS PIPELINE II=88


	float data[MAX_CHECKS];//[MAX_AOV_DIM]; // result
	ap_uint<8> taskId;
	ap_uint<8> checkId;
	ap_uint<16> uniId;
	ap_uint<2> command;
#pragma HLS array_partition variable=data complete //dim=2

	bool error;
	//ap_uint<8> n_regions_currCheck=n_regions[checkId];

	read_train(command, taskId, checkId, uniId, testStream, data);
	//read_test(data, inputDataInRam, checkId);
	//if (!errorInTask[taskId]) {
	//if (command==COMMAND_TEST) {
	run_test(error, regions[taskId], n_regions[taskId], data);
	writeOutcome(errorInTask[taskId], checkId, taskId, uniId, error, toScheduler, outcomeInRam, data);
	/*} else if (command==COMMAND_TRAIN) {
		insert_point(regions[checkId],
				n_regions[checkId],
				data);
	}*/
	//}
}

//void run_train(region_t regions[MAX_REGIONS], ap_uint<8> &n_regions, float data_key[MAX_AOV_DIM]) {
//#pragma HLS PIPELINE II=64
//	//bool corr = compare(data, data_key);
//	//insert_point(regions, n_regions, data, corr);
//	//if(!corr)
//	//insert_point(regions, n_regions, data_key, true);//data_key[checkId],true);
//	insert_point(regions, n_regions, data_key);//data_key[checkId],true);
//}

void runTrainAfterInit(hls::stream< controlStr > &trainStream, region_t regions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions[MAX_CHECKS]) {
#pragma HLS dataflow

	//float data_key[MAX_AOV_DIM]; // key
	//#pragma HLS array_partition variable=data_key complete
	float data[MAX_CHECKS];//[MAX_AOV_DIM]; // key
#pragma HLS array_partition variable=data complete //dim=2

	ap_uint<8> taskId;
	ap_uint<8> checkId;
	ap_uint<16> uniId;
	ap_uint<2> command;

	read_train(command, taskId, checkId, uniId, trainStream, data);
	//read_test(data_key, inputDataInRam, checkId);
	//run_train(regions[checkId],
	insert_point(regions[checkId],
			n_regions[checkId],
			data);
}

//void init(const region_t trainedRegions[MAX_CHECKS][MAX_REGIONS], const ap_uint<8> n_regions_in[MAX_CHECKS], region_t regions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions[MAX_CHECKS]) {
//	//#pragma HLS inline
//#pragma HLS PIPELINE off
//
//	//	for (size_t i=0; i<sizeof(regions); i++) {
//	//#pragma HLS PIPELINE off
//	//		((char *) regions) [i] = ((const char*) trainedRegions) [i];
//	//	}
//
////	memcpy(regions, trainedRegions, sizeof(region_t)*MAX_CHECKS*MAX_REGIONS);
//
//	for (int i=0; i<MAX_CHECKS; i++) {
//#pragma HLS PIPELINE off
//		for (int j=0; j<MAX_REGIONS; j++) {
//#pragma HLS PIPELINE off
//			regions [i][j] = trainedRegions [i][j];
//		}
//	}
//
//	for (int i=0; i<MAX_CHECKS; i++) {
//#pragma HLS PIPELINE off
//		n_regions [i] = n_regions_in [i];
//	}
//}
static region_t regions[MAX_CHECKS][MAX_REGIONS]; //regions from the distribution
static ap_uint<8> n_regions[MAX_CHECKS];

void run(bool errorInTask[MAX_TASKS], OutcomeStr outcomeInRam[MAX_TASKS], hls::stream< controlStr > &testStream,
		hls::stream< controlStr > &trainStream,
		region_t trainedRegions[MAX_CHECKS][MAX_REGIONS], ap_uint<8> n_regions_in[MAX_CHECKS], hls::stream< ap_uint<8> > &toScheduler) {
#pragma HLS interface s_axilite port = trainedRegions //bundle=A
#pragma HLS interface s_axilite port = n_regions_in //bundle=A
#pragma HLS interface s_axilite port = errorInTask //bundle=A
#pragma HLS INTERFACE s_axilite port=outcomeInRam
#pragma HLS INTERFACE axis port=testStream
#pragma HLS INTERFACE axis port=trainStream
#pragma HLS INTERFACE axis port=toScheduler

#pragma HLS array_partition variable=regions complete dim=2//cyclic factor=16  //should be MAX_REGIONS

	//#pragma HLS reset variable=data
	//#pragma HLS reset variable=n_regions



	//#pragma HLS array_partition variable=n_regions cyclic factor=2//complete

	//
	//
	//	OutcomeStr currErr=outcomeInRam[]
	//	bool eq=true;
	//	bool errorIter= (currErr->uniId==contr.uniId && currErr->checkId==checkId);
	//	for (int i=0; i<MAX_AOV_DIM; i++) {
	//#pragma HLS unroll
	//		if (currErr->AOV[i]!=data[i]) {
	//			eq=false;
	//			//break;
	//		}
	//	}
	//	if (errorIter) {
	//		currErr->uniId=-1;
	//		currErr->checkId=-1;
	//	}



//	if (fsmstate==STATE_UNINITIALISED) {

		//memcpy(regions, trainedRegions, sizeof(regions)); vitis tries to optimise it, causing resource violation!

		//init(trainedRegions, n_regions_in, regions, n_regions);
		for (int i=0; i<MAX_CHECKS; i++) {
			//	#pragma HLS PIPELINE off
			for (int j=0; j<MAX_REGIONS; j++) {
				//	#pragma HLS PIPELINE off
				regions [i][j] = trainedRegions [i][j];
			}
		}

		for (int i=0; i<MAX_CHECKS; i++) {
			//	#pragma HLS PIPELINE off
			n_regions [i] = n_regions_in [i];
		}

//		fsmstate=STATE_READY;
	//} else if (fsmstate==STATE_READY) {
		while(1) {
			runTestAfterInit(testStream, outcomeInRam, toScheduler, errorInTask, regions, n_regions);
			runTrainAfterInit(trainStream, regions, n_regions);
#pragma HLS DEPENDENCE variable=regions type=inter dependent=false
#pragma HLS DEPENDENCE variable=n_regions type=inter dependent=false
		}
	}
//}
