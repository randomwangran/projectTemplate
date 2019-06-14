#!bin/bash

curdir=$(pwd)

for f in $curdir/*
do 
       cd "$f" &&

       echo Entering into $f &&

       latestTime=$(foamListTimes -processor -latestTime | tail --lines=1)

       echo $latestTime
       
       find ./processor*/ -maxdepth 1 -name $latestTime -exec rm -rf {} \;

       cd ..
done;
