#!/bin/bash

numberOfIteration=( 1 100 1000 10000)
cnt=${#numberOfIteration[@]}
grep -nr "Courant Number mean: " log.pisoFoam > temp

for ((t=0;t<cnt;t++)); do
    anchForTimeStepLineNum[$t]=$(sed -n "${numberOfIteration[t]}p" temp | cut -d : -f 1)
    timeStepLineNum[$t]=$(bc <<< " ${anchForTimeStepLineNum[t]} - 2 ")
    timeStepLineNumScanerRange[$t]=$(bc <<< "${timeStepLineNum[$t]} + 15 ")
    echo "Iternation number ${numberOfIteration[t]} cost:"
    sed -n "${timeStepLineNum[t]},${timeStepLineNumScanerRange[t]}p" log.pisoFoam | sed -n '/ClockTime = [0-9]/p'    
done

rm temp
