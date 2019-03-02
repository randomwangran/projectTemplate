#!bin/bash

curdir=$(pwd)
basdir="$(dirname "$curdir")"

for f in $curdir/*
	 
do [ -d $f -a $f != "$curdir/Allrun" -a $f != "$curdir/Re14E4LSDense" -a $f != "$curdir/TSRe14E4CoasraMesh" ] &&
       
       cd "$f" &&

       echo Entering into $f &&

       cp -f "$basdir/preparingFolder/prepareCases/switchCase/system/controlDict" ./system &&
       cp -f "$basdir/preparingFolder/prepareCases/switchCase/system/dummyA" ./system &&
       cp -f "$basdir/preparingFolder/prepareCases/switchCase/system/dummyB" ./system &&
       
       sleep 1 ;
       
       cd ..
done;
