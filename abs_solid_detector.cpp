#include "parameters.h"
#include "region.h"

#include <math.h>

int MODE = ABS_DETECTOR_TEST;

region_t regions[MAX_TASKS][MAX_REGIONS]; //regions from the distribution
int n_regions = 0;
int aov_dims[MAX_TASKS];

float thresh=THRESH;
float data_key[MAX_TASKS][MAX_AOV_DIM]; // key
float data[MAX_TASKS][MAX_AOV_DIM]; // result

bool is_valid(int taskId, float val[MAX_AOV_DIM]){
	for(int i=0; i < aov_dims[taskId]; i++){
		if(isnan(val[i]) || val[i] == INFINITY || val[i] == -INFINITY)
			return false;
	}
	return true;
}

void init() {
	//dummy init TODO
	for (int i=0; i < MAX_TASKS; i++) {
		aov_dims[i]=5;
	}//__________
}

int find_region(int taskId, float d[MAX_AOV_DIM]){
	int idx = -1;
	float score = -1;
	for(int i=0; i < n_regions; i++){
		bool is_idx = true;
		float tmp_score = 0;
		float dist = 0;
		float area = 0;
		for(int j=0; j < aov_dims[taskId]; j++){
			//compute the distance and scale.
			float ldist = (d[j] - regions[taskId][i].center[j]);
			float hdist = (regions[taskId][i].max[j] - regions[taskId][i].center[j]);
			float absdist = ldist*ldist;
			float scale = hdist*hdist;
			area += scale;
			dist += absdist > scale ? absdist : scale;
			//determine if we're out of the bound
			if(regions[taskId][i].min[j] > d[j] || regions[taskId][i].max[j] < d[j])
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

void update_train_regions(int taskId, int id, float val[MAX_AOV_DIM], bool is_acc){

	//TODO for logging

	//forget behavior
//	for(int i=0; i < n_regions; i++){
//		regions[i]->stats.update_accuracy_rate(id == i, is_acc);
//	}
	//we do not have a region.

	//this->env->update_accuracy_rate(id < 0, false);
	//this->stats->update_accuracy_rate(is_acc); //is accept, is error

	if(id < 0 || !is_acc) return; //if outside of region, or error.
	//we have a region
	//update boundaries to include point.
	for(int i=0; i < aov_dims[taskId]; i++) {
		if(val[i] > regions[taskId][id].max[i]) regions[taskId][id].max[i] = val[i];
		else if(val[i] < regions[taskId][id].min[i]) regions[taskId][id].min[i] = val[i];
		regions[taskId][id].center[i] = (regions[taskId][id].max[i] + regions[taskId][id].min[i])/2.0;
	}
}

bool compare(int taskId){
	for(int i=0; i < aov_dims[taskId]; i++){
		if(fabs(data_key[taskId][i] - data[taskId][i]) > thresh){
			return false;
		}
	}
	return true;
}

//find region, ie find the closest region with similar output, error
//characteristics, returning score.
/* We want to merge nearby regions with a good score
 *
 */
float score_region(int taskId, region_t * r1, region_t * r2){
	float distance = 0;
	//compute the distance
	for(int j=0; j < aov_dims[taskId]; j++){
		float d = (r1->center[j] - r2->center[j]);
		distance += d*d;
	}
	float overlap;
	overlap=1;
	for(int i=0; i < aov_dims[taskId]; i++){
		float d1 = r1->max[i] - r1->min[i];
		float d2 = r2->max[i] - r2->min[i];
		float ov;
		if(r1->min[i] < r2->min[i])
			ov = d1 - (r2->min[i] - r1->min[i]);
		else
			ov = d2 - (r1->min[i] - r2->min[i]);
		ov = ov < 0 ? 0 : ov;
		overlap *= ov;
	}
	float score=0;
	//printf("b:%f d:%f o:%f = %f\n", behavior, distance, overlap, score);
	//if we are overlapping with another group, merge regardless.
	if(overlap > 0) return overlap;
	//severely penalize groups where there is an interfering group
	score -= distance; //negatively impact behavior.

	return score;
}

int find_closest_region(int taskId, int idx, float * score){
	int id = -1;
	for(int i=0; i < n_regions; i++){
		if(i == idx) continue;
		//printf("score [%d,%d]:", idx, i);
		float sc = score_region(taskId, &(regions[taskId][idx]), &(regions[taskId][i]));
		if(id < 0 || sc > *score){
			id = i;
			*score = sc;
		}

	}
	return id;
}

//merge r2 into r1
void merge_regions(int taskId, int id1, int id2){
	for(int i=0; i < aov_dims[taskId]; i++){
		if(regions[taskId][id2].min[i] < regions[taskId][id1].min[i]){
			regions[taskId][id1].min[i] = regions[taskId][id2].min[i];
		}
		if(regions[taskId][id2].max[i] > regions[taskId][id1].max[i]){
			regions[taskId][id1].max[i] = regions[taskId][id2].max[i];
		}
		regions[taskId][id1].center[i] = (regions[taskId][id1].max[i] + regions[taskId][id1].min[i])/2.0;
	}
	//TODO for logs
//	regions[id1].stats.merge(&(regions[id2].stats));

	//move everything over
	for(int i=id2; i < MAX_REGIONS-1; i++){
		regions[taskId][i] = regions[taskId][i+1];
	}
}

void insert_point(int taskId, float d[MAX_AOV_DIM], bool is_accept){
	if(!is_valid(taskId, d)) return;
	/*
	 * try and optimistically find a region the float belongs to
	 */
	int id = find_region(taskId, d);
	// case: update an existing a group
	if(id >= 0){
		update_train_regions(taskId, id,d,is_accept); //updates statistics.
		return;
	}
	if(!is_accept){
		update_train_regions(taskId, -1,d,is_accept); //updates statistics.
		return;
	}
	// case: create a new group

	//create a new node.
	for(int i=0; i < aov_dims[taskId]; i++){
		regions[taskId][n_regions].min[i] = regions[taskId][n_regions].max[i] = regions[taskId][n_regions].center[i] = d[i];
	}
	n_regions++;

	update_train_regions(taskId, n_regions-1,d, is_accept);
	//add region
	//if we're full of space, make room for another region.
	if(n_regions == MAX_REGIONS){ //if we're full.
		//find the region with the most similar dynamics that isn't
		//completely obstructed by another region.
		int merge_1=-1;
		int merge_2=-1;
		float score = 0;
		for(int i=0; i < n_regions; i++){
			float tmp_score=0;
			int tmp_other = find_closest_region(taskId, i, &tmp_score);
			if(merge_1 < 0 || tmp_score > score){
				score = tmp_score;
				merge_1 = i;
				merge_2 = tmp_other;
			}
		}
		merge_regions(taskId, merge_1, merge_2);
		n_regions--;
	}
}

//TODO for logging
//void update_test_regions(int id, bool is_acc){
//	//forget behavior
//	for(int i=0; i < this->n_regions; i++){
//		this->regions[i]->stats.update_accept_rate(i == id, is_acc);
//	}
//	this->env->update_accept_rate(id < 0, is_acc);
//	this->stats->update_accept_rate(is_acc);
//
//}

bool test_point(int taskId, float d[MAX_AOV_DIM]){
	int id = find_region(taskId, d); // find the closest scoring info.
	//printf("test: %f grp:%d score:%f\n", d[0], id, score);
	//printf("score: %f\n", score);
	if(!is_valid(taskId, d) || id < 0){
		//TODO for logging
		//		this->update_test_regions(-1,false);
		return false;
	}
	else{
		//TODO for logging
		//this->update_test_regions(id,true);
		return true;
	}
}

bool test(int taskId){
	if(MODE ==  ABS_DETECTOR_KEY) return true;
	bool res =  test_point(taskId, data[taskId]);
	//update running statistics
	//printf("test: %f %s -> pct-rej:%f\n", this->data[0], res ? "accept" : "reject", this->stats.n_rej/this->stats.n_total_test);
	return res;
}

bool train(int taskId){
	if(MODE ==  ABS_DETECTOR_KEY) return true;
	bool corr = compare(taskId);
	//printf("train: %f = %f : %s pct_fp:%f\n", this->data[0], this->data_key[0], corr ? "same":"not same", this->stats.n_false/this->stats.n_total_train);
	//insert the training point
	insert_point(taskId, data[taskId], corr);
	if(!corr) insert_point(taskId, data_key[taskId],true);
	return true;
}

bool run(){
	int taskId=1;

			if(MODE == ABS_DETECTOR_TEST){
				return test(taskId);
			}
			else if(MODE == ABS_DETECTOR_TRAIN){
				return train(taskId);
			}
//			else{
//				this->log();
				return true;
//			}
		}

int main() {
	init();
	return run();
}
