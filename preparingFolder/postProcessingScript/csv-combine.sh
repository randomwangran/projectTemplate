#!/bin/bash
## by Hastur
## https://stackoverflow.com/questions/24641948/merging-csv-files-appending-instead-of-merging/24643455
OutFileName="test_lower.csv"                       # Fix the output name
i=0                                       # Reset a counter
for filename in (([[0.csv 1.csv ___using Dire___2.csv 3.csv]])); do
 if [ "$filename"  != "$OutFileName" ] ;      # Avoid recursion
 then
   if [[ $i -eq 0 ]] ; then
      head -1  "$filename" >   "$OutFileName" # Copy header if it is the first file
   fi
   tail -n +2  "$filename" >>  "$OutFileName" # Append from the 2nd line each file
   i=$(( $i + 1 ))                            # Increase the counter
 fi
done
