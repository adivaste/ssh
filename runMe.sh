#!/bin/bash 

PASS="pass"

echo $PASS | sudo -S cp ./installReqs.sh ./runDaily.sh ./runAtBootup.sh /tmp
echo $PASS | sudo -S chmod 777 /tmp/installReqs.sh 
echo $PASS | sudo -S chmod 777 /tmp/runDaily.sh

echo $PASS | sudo -S /bin/bash /tmp/installReqs.sh
echo $PASS | sudo -S /bin/bash /tmp/enableBootupServices.sh 
echo $PASS | sudo -S /bin/bash /tmp/runDaily.sh
