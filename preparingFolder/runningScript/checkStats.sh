#!/bin/bash

anchForTimeStepLineNum=$(grep -n "ORTE" $1  | cut -d : -f 1)

preAnch=$(bc <<< " $anchForTimeStepLineNum - 11 ")

sed -n "$preAnch,$anchForTimeStepLineNum p" $1 | sed -n '/Time = [0-9]/p'
