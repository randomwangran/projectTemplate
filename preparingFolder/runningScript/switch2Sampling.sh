#!bin/bash

curdir=$(pwd)

for f in $curdir/*
	 
do [ -d $f -a $f != "$curdir/Re14E4LSDense" -a $f != "$curdir/TSRe14E4CoasraMesh" ] &&
       
       cd "$f" &&

       echo Entering into $f &&

       sleep 1
   
       cd ..
done;
