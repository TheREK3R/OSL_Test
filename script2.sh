#!/bin/bash

awk ' 

	{
		sum += $10
	}
	END{
		print sum
	}
'
