#!/bin/bash


# ORTE can happen at any place, nto a robust way to do this

anchForTimeStepLineNum=$(grep -n "ORTE" $1  | cut -d : -f 1)

preAnch=$(bc <<< " $anchForTimeStepLineNum - 20 ")

sed -n "$preAnch,$anchForTimeStepLineNum p" $1 | sed -n '/Time = [0-9]/p'
