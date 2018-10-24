#!bin/bash

curdir=$(pwd)

for f in $curdir/*
do 
       cd "$f" &&

       echo Entering into $f &&

       rm -rf ./constant
done;
