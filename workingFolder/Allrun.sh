#!bin/bash                                                                                                                                                                                                                                                                                                                                                                   
## to obtain the final data                                                                                                                                                                      
# cd 0                                                                                                                                                                                           
# bqsub -q qwork -l walltime=96:00:00 -l nodes=2:ppn=24 test.pbs                                                                                                                                 
# cd ..                                                                                                                                                                                          
                                                                                                                                                                                                 
# cd 30                                                                                                                                                                                          
# #decomposePar                                                                                                                                                                                  
# bqsub -q qwork -l walltime=96:00:00 -l nodes=2:ppn=24 test.pbs                                                                                                                                 
# cd ..                                                                                                                                                                                          
                                                                                                                                                                                                 
                                                                                                                                                                                                 
# cd 45                                                                                                                                                                                          
# #decomposePar                                                                                                                                                                                  
# bqsub -q qwork -l walltime=96:00:00 -l nodes=2:ppn=24 test.pbs                                                                                                                                 
# cd ..                                                                                                                                                                                          
                                                                                                                                                                                                 
# cd 60                                                                                                                                                                                          
# #decomposePar                                                                                                                                                                                  
# bqsub -q qwork -l walltime=96:00:00 -l nodes=2:ppn=24 test.pbs                                                                                                                                 
# cd ..                                                                                                                                                                                          

## probe at point C (1 0.3) for 30 45 and 60  Sun Jan 14 15:56:43 EST 2018                                                                                                                       

# cd paraScript/probe                                                                                                                                                                            
# pvpython probeC-30deg.py > log.probeC-30deg.py &                                                                                                                                               
# pvpython probeC-45deg.py > log.probeC-45deg.py &                                                                                                                                               
# pvpython probeC-60deg.py > log.probeC-60deg.py &                                                                                                                                               

## sampel pressure at middle plane for 0 30 45 and 60 Sun Jan 14 16:25:06 EST 2018                                                                                                               

# mkdir -p 0/Time/Process/pressure/                                                                                                                                                              
# pvpython ./paraScript/pressure/avgPressure-0deg.py > log.avgPressure-0deg.py &                                                                                                                 

# mkdir -p 30/Time/Process/pressure/                                                                                                                                                             
# pvpython ./paraScript/pressure/avgPressure-30deg.py > log.avgPressure-30deg.py &                                                                                                               

# mkdir -p 45/Time/Process/pressure/                                                                                                                                                             
# pvpython ./paraScript/pressure/avgPressure-45deg.py > log.avgPressure-45deg.py &                                                                                                               

# mkdir -p 60/Time/Process/pressure/                                                                                                                                                             
# pvpython ./paraScript/pressure/avgPressure-60deg.py > log.avgPressure-60deg.py &                              

## sampel pressure at middle plane for 0 30 45 and 60 Sun Jan 14 16:25:06 EST 2018                                                                                                               

# mkdir -p 0/Time/Process/pressure/                                                                                                                                                              
# pvpython ./paraScript/pressure/avgPressure-0deg.py > log.avgPressure-0deg.py &                                                                                                                 

# mkdir -p 30/Time/Process/pressure/                                                                                                                                                             
# pvpython ./paraScript/pressure/avgPressure-30deg.py > log.avgPressure-30deg.py &                                                                                                               

# mkdir -p 45/Time/Process/pressure/                                                                                                                                                             
# pvpython ./paraScript/pressure/avgPressure-45deg.py > log.avgPressure-45deg.py &                                                                                                               

# mkdir -p 60/Time/Process/pressure/                                                                                                                                                             
# pvpython ./paraScript/pressure/avgPressure-60deg.py > log.avgPressure-60deg.py &                                                                                                               

## sample recirculation length for 0 30 45 and 60 Mon Jan 15 10:51:49 EST 2018                                                                                                                   

# mkdir -p 0/Time/Process/recirculation/                                                                                                                                                         
# pvpython ./paraScript/recirculation/avgRecirculation-0deg.py > log.avgRecirculation-0deg.py &                                                                                                  

# mkdir -p 30/Time/Process/recirculation/                                                                                                                                                        
# pvpython ./paraScript/recirculation/avgRecirculation-30deg.py > log.avgRecirculation-30deg.py &                                                                                                

# mkdir -p 45/Time/Process/recirculation/                                                                                                                                                        
# pvpython ./paraScript/recirculation/avgRecirculation-45deg.py > log.avgRecirculation-45deg.py &                                                                                                

# mkdir -p 60/Time/Process/recirculation/                                                                                                                                                        
# pvpython ./paraScript/recirculation/avgRecirculation-60deg.py > log.avgRecirculation-60deg.py &                                                                                                

## streamline visulization from xy plane for 0 30 45 and 60 cases Mon Jan 15 16:21:01 EST 2018                                                                                                   

# mkdir -p 0/Time/Process/streamline/streamwiseView
# pvpython ./paraScript/streamline/streamWiseView/streamlineView_0deg.py > log.streamline-0deg.py &


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
