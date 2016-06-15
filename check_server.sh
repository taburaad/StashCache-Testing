echo "UCSD"
time xrdcp -d 1 -f root://xrd-cache-1.t2.ucsd.edu:1094//user/taburaad/public/2gb_file.tar .
ls -l 2gb_file.tar  
rm -f 2gb_file.tar 

echo "Nebraska"
time xrdcp -d 1 -f root://hcc-stash.unl.edu:1094//user/taburaad/public/2gb_file.tar .
ls -l 2gb_file.tar
rm -f 2gb_file.tar

echo "BNL-ATLAS"
time xrdcp -d 1 -f root://osgxroot.usatlas.bnl.gov:1094//user/taburaad/public/2gb_file.tar .
ls -l 2gb_file.tar
rm -f 2gb_file.tar

echo "US MWT2"
time xrdcp -d 1 -f root://mwt2-stashcache.campuscluster.illinois.edu:1094//user/taburaad/public/2gb_file.tar .
ls -l 2gb_file.tar
rm -f 2gb_file.tar

echo "CI"
time xrdcp -d 1 -f root://data.ci-connect.net:1094//user/taburaad/public/2gb_file.tar /dev/null
ls -l 2gb_file.tar
rm -f 2gb_file.tar
