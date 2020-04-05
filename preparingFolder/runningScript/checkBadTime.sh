#!/bin/bash

anchForTimeStepLineNum=$(grep -n "slurmstepd: error" $1  | cut -d : -f 1)
preAnch=$(bc <<< " $anchForTimeStepLineNum - 27 ")
sed -n "$preAnch,$anchForTimeStepLineNum p" $1 | sed -n '/Time = [0-9]/p'
