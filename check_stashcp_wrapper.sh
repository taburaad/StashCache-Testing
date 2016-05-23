#!/bin/bash
    source /cvmfs/oasis.opensciencegrid.org/osg/modules/lmod/5.6.2/init/bash
    module load stashcp

    echo "starting wget"
    time wget  http://stash.osgconnect.net/~dbala/2gb_file.tar 

    ls -l 2gb_file.tar  
    rm -f 2gb_file.tar
 
   
    echo "starting stashcp"
    START=$(date +%s)
    stashcp --closest 
    time stashcp -d -r -s user/taburaad/public/2gb_file.tar -l .

    ls -l 2gb_file.tar  
    rm -f 2gb_file.tar 
    END=$(date +%s)
    DIFF=$(( $END - $START ))
    echo "StashCache took $DIFF seconds"
   

