#!bin/bash

## delete the latest time in processors folders

curdir=$(pwd)

for f in $curdir/*
do 
       cd "$f" &&

       echo Entering into $f &&

       test=$(foamListTimes -latestTime -processor)
       
       rm -rf processor*/$test

done;
