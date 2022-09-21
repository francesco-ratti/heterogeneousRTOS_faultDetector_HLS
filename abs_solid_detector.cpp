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


int find_region(region_t regions[MAX_REGIONS], ap_int<8> n_regions, float d[MAX_AOV_DIM]){
	int idx = -1;
	float score = -1;
	for(int i=0; i < MAX_REGIONS; i++){
#pragma HLS unroll
		if (i>=n_regions)
			break;

		bool is_idx = true;
		float tmp_score = 0;
		float dist = 0;
		float area = 0;
		for(int j=0; j < MAX_AOV_DIM; j++){
			//compute the distance and scale.
			//#pragma HLS PIPELINE II=1
#pragma HLS unroll
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



bool is_valid(float val[MAX_AOV_DIM]){

	for(int i=0; i < MAX_AOV_DIM; i++){
#pragma HLS unroll
		//#pragma HLS PIPELINE II=1
		if(isnan(val[i]) || val[i] == INFINITY || val[i] == -INFINITY)
			return false;
	}
	return true;
}

//void update_train_regions(region_t regions[MAX_REGIONS], int id, float val[MAX_AOV_DIM], bool is_acc){
//
//	//TODO for logging
//
//	//forget behavior
//	//	for(int i=0; i < n_regions; i++){
//	//		regions[i]->stats.update_accuracy_rate(id == i, is_acc);
//	//	}
//	//we do not have a region.
//
//	//this->env->update_accuracy_rate(id < 0, false);
//	//this->stats->update_accuracy_rate(is_acc); //is accept, is error
//
//	if(id < 0 || !is_acc) return; //if outside of region, or error.
//	//we have a region
//	//update boundaries to include point.
//	for(int i=0; i < MAX_AOV_DIM; i++) {
//		if(val[i] > regions[id].max[i]) regions[id].max[i] = val[i];
//		else if(val[i] < regions[id].min[i]) regions[id].min[i] = val[i];
//		regions[id].center[i] = (regions[id].max[i] + regions[id].min[i])/2.0;
//	}
//}
//
//bool compare(float data[MAX_AOV_DIM], float data_key[MAX_AOV_DIM]){
//	for(int i=0; i < MAX_AOV_DIM; i++){
//		if(fabs(data_key[i] - data[i]) > thresh){
//			return false;
//		}
//	}
//	return true;
//}
//
////find region, ie find the closest region with similar output, error
////characteristics, returning score.
///* We want to merge nearby regions with a good score
// *
// */
//float score_region(region_t * r1, region_t * r2) {
//	float distance = 0;
//	//compute the distance
//	for(int j=0; j < MAX_AOV_DIM; j++){
//		float d = (r1->center[j] - r2->center[j]);
//		distance += d*d;
//	}
//	float overlap;
//	overlap=1;
//	for(int i=0; i < MAX_AOV_DIM; i++){
//		float d1 = r1->max[i] - r1->min[i];
//		float d2 = r2->max[i] - r2->min[i];
//		float ov;
//		if(r1->min[i] < r2->min[i])
//			ov = d1 - (r2->min[i] - r1->min[i]);
//		else
//			ov = d2 - (r1->min[i] - r2->min[i]);
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
//
//int find_closest_region(region_t regions[MAX_REGIONS], int idx, float * score){
//	int id = -1;
//	for(int i=0; i < MAX_REGIONS; i++){
//		if(i == idx) continue;
//		//printf("score [%d,%d]:", idx, i);
//		float sc = score_region(&(regions[idx]), &(regions[i]));
//		if(id < 0 || sc > *score){
//			id = i;
//			*score = sc;
//		}
//
//	}
//	return id;
//}
//
////merge r2 into r1
//void merge_regions(region_t regions[MAX_REGIONS], int id1, int id2){
//	for(int i=0; i < MAX_AOV_DIM; i++){
//		if(regions[id2].min[i] < regions[id1].min[i]){
//			regions[id1].min[i] = regions[id2].min[i];
//		}
//		if(regions[id2].max[i] > regions[id1].max[i]){
//			regions[id1].max[i] = regions[id2].max[i];
//		}
//		regions[id1].center[i] = (regions[id1].max[i] + regions[id1].min[i])/2.0;
//	}
//	//TODO for logs
//	//	regions[id1].stats.merge(&(regions[id2].stats));
//
//	//move everything over
//	for(int i=id2; i < MAX_REGIONS-1; i++){
//		regions[i] = regions[i+1];
//	}
//}
//
//void insert_point(region_t regions[MAX_REGIONS], ap_int<8> &n_regions, float d[MAX_AOV_DIM], bool is_accept){
//	if(!is_valid(d)) return;
//	/*
//	 * try and optimistically find a region the float belongs to
//	 */
//	int id = find_region(regions, d);
//	// case: update an existing a group
//	if(id >= 0){
//		update_train_regions(regions, id,d,is_accept); //updates statistics.
//		return;
//	}
//	if(!is_accept){
//		update_train_regions(regions, -1,d,is_accept); //updates statistics.
//		return;
//	}
//	// case: create a new group
//
//	//create a new node.
//	for(int i=0; i < MAX_AOV_DIM; i++){
//		regions[n_regions].min[i] = regions[n_regions].max[i] = regions[n_regions].center[i] = d[i];
//	}
//	n_regions++;
//
//	update_train_regions(regions, n_regions-1,d, is_accept);
//	//add region
//	//if we're full of space, make room for another region.
//	if(n_regions == MAX_REGIONS){ //if we're full.
//		//find the region with the most similar dynamics that isn't
//		//completely obstructed by another region.
//		int merge_1=-1;
//		int merge_2=-1;
//		float score = 0;
//		for(int i=0; i < n_regions; i++){
//			float tmp_score=0;
//			int tmp_other = find_closest_region(regions, i, &tmp_score);
//			if(merge_1 < 0 || tmp_score > score){
//				score = tmp_score;
//				merge_1 = i;
//				merge_2 = tmp_other;
//			}
//		}
//		merge_regions(regions, merge_1, merge_2);
//		n_regions--;
//	}
//}

//bool run_train_sw(region_t regions[MAX_REGIONS], ap_int<8> &n_regions, float data[MAX_AOV_DIM], float inputData[MAX_AOV_DIM]){
//	//if(MODE ==  ABS_DETECTOR_KEY) return true;
//	bool corr = compare(data, inputData);
//	//printf("train: %f = %f : %s pct_fp:%f\n", this->data[0], this->data_key[0], corr ? "same":"not same", this->stats.n_false/this->stats.n_total_train);
//	//insert the training point
//	insert_point(regions, n_regions, data, corr);
//	if(!corr) insert_point(regions, n_regions, inputData, true);//data_key[taskId],true);
//	return true;
//}

//bool run_test_sw(region_t regions[MAX_REGIONS], ap_int<8> n_regions, float data[MAX_AOV_DIM]) {
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

int fsmstate=STATE_UNINITIALISED;

struct OutcomeStr {
	bool error;
	bool isNew;
};

struct controlStr {
	ap_int<2> command;
	ap_int<16> taskId;
};

#include "hls_math.h"
#define sizeOfInputData sizeof(float)*MAX_AOV_DIM
#define sizeOfOutcome  ((MAX_CHECKS*sizeof(OutcomeStr)) / 32) + (((MAX_CHECKS*sizeof(OutcomeStr)) % 32) != 0)
#define SHARED_MEM_SIZE sizeOfInputData*MAX_CHECKS+sizeOfOutcome

void writeOutcome(OutcomeStr* outcomeptr, ap_int<16> taskId, bool error, hls::stream< ap_int<8>> &toScheduler) {
#pragma HLS PIPELINE II=8
	//#pragma HLS inline off
	OutcomeStr out;

	out.isNew=true;
	out.error=error;

	memcpy((void*) &(outcomeptr[taskId]), (void*) &out, sizeof(out));
	if (error)
		toScheduler.write(taskId);
}

void read_test(float dest[MAX_TASKS][MAX_AOV_DIM], float* inputDataInRam, ap_int<16> taskId) {
#pragma HLS PIPELINE II=8
	memcpy(dest[taskId], inputDataInRam, sizeOfInputData);
}

void run_test(bool &error, region_t regions[MAX_REGIONS], ap_int<8> n_regions, float data[MAX_AOV_DIM]) {
#pragma HLS PIPELINE II=8
	error = ( !is_valid(data) || find_region(regions, n_regions, data) < 0 ) ;
}

void runTestAfterInit(float * inputDataInRam, ap_int<16> taskId, OutcomeStr* outcomeInRam, hls::stream< ap_int<8> > &toScheduler, float data[MAX_CHECKS][MAX_AOV_DIM], region_t regions[MAX_CHECKS][MAX_REGIONS], ap_int<8> n_regions[MAX_CHECKS]) {
#pragma HLS dataflow

	//run
	//		for (;;) {

	bool error;

	read_test(data, inputDataInRam, taskId);
	run_test(error, regions[taskId], n_regions[taskId], data[taskId]);

	//		} else
	//		if (contr.command==COMMAND_TRAIN) {
	//			memcpy((void*) data_key, (void*) inputDataInRam, sizeOfInputData);
	//			outcome=train(contr.taskId, data_key);
	//	}

	//write
	writeOutcome(outcomeInRam, taskId, error, toScheduler);
}

//controlStr contr
//hls::stream<controlStr> &control

void run(controlStr contr, region_t trainedRegions[MAX_CHECKS][MAX_REGIONS], ap_int<8> realTaskId[MAX_CHECKS], ap_int<8> n_regions_in[MAX_CHECKS], ap_int<32> sharedMem[SHARED_MEM_SIZE], hls::stream< ap_int<8> > &toScheduler) {

#pragma HLS interface s_axilite port = trainedRegions //bundle=A
#pragma HLS interface s_axilite port = realTaskId //bundle=A
#pragma HLS interface s_axilite port = n_regions_in //bundle=A
#pragma HLS INTERFACE m_axi port=sharedMem
#pragma HLS INTERFACE axis port=toScheduler

	static float data_key[MAX_AOV_DIM]; // key
	static float data[MAX_CHECKS][MAX_AOV_DIM]; // result
	static region_t regions[MAX_CHECKS][MAX_REGIONS]; //regions from the distribution
	static ap_int<8> n_regions[MAX_CHECKS];

#pragma HLS reset variable=data
#pragma HLS reset variable=regions
#pragma HLS reset variable=n_regions

#pragma HLS array_partition variable=data complete dim=2
#pragma HLS array_partition variable=regions complete dim=2//cyclic factor=16  //should be MAX_REGIONS
#pragma HLS array_partition variable=data_key complete

	float * inputDataInRam=(float*) sharedMem;
	OutcomeStr* outcomeInRam=(OutcomeStr*) (sharedMem+sizeOfInputData*MAX_CHECKS);


	if (fsmstate==STATE_UNINITIALISED) {

		for (size_t i=0; i<sizeof(regions); i++) {
#pragma HLS PIPELINE off
			((char *) regions) [i] = ((const char*) trainedRegions) [i];
		}

		for (size_t i=0; i<sizeof(n_regions_in); i++) {
#pragma HLS PIPELINE off
			((char *) n_regions) [i] = ((const char*) n_regions_in) [i];
		}
		//memcpy(regions, trainedRegions, sizeof(regions)); vitis tries to optimise it, causing resource violation!

		fsmstate=STATE_READY;

	} else if (fsmstate==STATE_READY) {
		runTestAfterInit(inputDataInRam, contr.taskId, outcomeInRam, toScheduler, data, regions, n_regions);
	}
}
//}
