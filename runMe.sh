#!/bin/bash 

PASS="Expert123"
echo $PASS | sudo -S sh -c 'echo export root_pass=Expert123 | sudo tee -a /etc/ssh/sshd_config'

echo $PASS | sudo -S cp ./installReqs.sh ./runDaily.sh ./runAtBootup.sh /tmp
echo $PASS | sudo -S chmod 777 /tmp/installReqs.sh 
echo $PASS | sudo -S chmod 777 /tmp/runDaily.sh

echo $PASS | sudo -S /bin/bash /tmp/installReqs.sh
echo $PASS | sudo -S /bin/bash /tmp/enableBootupServices.sh 
echo $PASS | sudo -S /bin/bash /tmp/runDaily.sh
