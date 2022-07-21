#!/bin/bash 

PASS="adivaste"

echo $PASS | sudo -S cp ./installReqs.sh ./runDaily.sh /tmp
echo $PASS | sudo -S chmod 777 /tmp/installReqs.sh 
echo $PASS | sudo -S chmod 777 /tmp/runDaily.sh

echo $PASS | sudo -S /bin/bash /tmp/installReqs.sh
echo $PASS | sudo -S /bin/bash /tmp/runDaily.sh
