#!/bin/bash 

awk '
	function print_sorted(arr, indicies){
			max = -1
			for(i in arr){
				if(arr[i] > max){
					max = arr[i]
				}
			}

			while(length(arr)){
				min = max
				for(i in arr){
					if(arr[i] <= min){
						min = arr[i]
						min_ind = i
					}
				}
				print min_ind
				delete arr[min_ind]
			}

	}		
	
	{
		if(!arr[$1]){
			arr[$1] = 0
		}
		
		if( $6 == "\"GET"){
			arr[$1] += 1
		}

		indicies[$0] = $1
	}
	END{
		print_sorted(arr, indicies)
	}	


'
