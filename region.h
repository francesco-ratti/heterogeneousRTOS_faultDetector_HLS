#ifndef REGION
#define REGION

#include "parameters.h"		

typedef struct REGION_T{
			float min[MAX_AOV_DIM];
			float max[MAX_AOV_DIM];
			float center[MAX_AOV_DIM];
//TODO for logging
			//			RegionStats stats;
		} region_t;

#endif
