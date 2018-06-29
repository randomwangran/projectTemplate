#!bin/bash

## Useful commands #1:
### project structure:
# .
# ├── Allrun.sh
# └── case1
#  └── 0
#   └── dummy
#  └── processor1
#   └── 0
#   └── 1
#   └── 2
#   └── constant

# the following code will delete the time data in processor1 folder
# except 0 20 and constant folder
# It is useful when the case is being reconstructed.

curdir=$(pwd)

    for f in $curdir/*

        do [ -d $f ] &&

            cd "$f" &&

            echo Entering into $f &&

               {

		   find  ./processor*/* -maxdepth 0  ! \( -name 0 -o -name 20 -o -name constant \)  -type d -exec rm -rf {} +
	       }

       done;
