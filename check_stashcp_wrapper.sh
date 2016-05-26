#!/bin/bash
    source /cvmfs/oasis.opensciencegrid.org/osg/modules/lmod/5.6.2/init/bash
    module load stashcp/3.0

    #echo "starting wget"
    #time wget  http://stash.osgconnect.net/~dbala/2gb_file.tar 

    #ls -l 2gb_file.tar  
    #rm -f 2gb_file.tar
 
    echo "sleep for" $(( RANDOM % (10 - 5 + 1 ) + 5 )) "seconds"
    sleep $(( RANDOM % (1800 + 1 ) ))
    
    xrdcp --version

    echo "xrdcp time"
    time xrdcp -d 2 -f user/taburaad/public/2gb_file.tar /dev/null
    echo "starting stashcp"
    #START=$(date +%s)
    echo "closest server:"
    stashcp --closest 
    time stashcp -r  user/taburaad/public/2gb_file.tar .

    ls -l 2gb_file.tar  
    rm -f 2gb_file.tar 
    #END=$(date +%s)
    #DIFF=$(( $END - $START ))
    #echo "StashCache took $DIFF seconds"
   

