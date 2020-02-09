#!bin/bash

curdir=$(pwd)

for f in $curdir/*
do
       cd "$f" &&

       echo Entering into $f &&


       awk '{if($0~"TCP") print}' log.--pisoFoam &&

       cd ..
done;
