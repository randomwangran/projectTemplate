#!bin/bash

curdir=$(pwd)

for f in $curdir/processor*
do 
       cd "$f" &&

       echo Entering into $f &&

       rm -rf 15.*
       rm -rf 14.16447

done;





