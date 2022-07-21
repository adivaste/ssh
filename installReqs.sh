#!/bin/bash

PASS="pass"

echo $PASS | sudo -S apt-get update
echo $PASS | sudo -S apt-get upgrade -y

echo $PASS | sudo -S apt-get install python3 -y git -y net-tools -y openssh-server -y unzip curl -y vim -y cron -y tmux -y tar

echo $PASS | sudo -S sh -c 'echo "PermitRootLogin" yes | sudo tee -a /etc/ssh/sshd_config'
echo $PASS | sudo -S sh -c 'echo "PasswordAuthentication" yes | sudo tee -a /etc/ssh/sshd_config'

echo $PASS | sudo -S curl -o /tmp/ngrok-v3-stable-linux-amd64.tgz https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
echo $PASS | sudo -S tar zxvf /tmp/ngrok-v3-stable-linux-amd64.tgz -C /tmp
echo $PASS | sudo -S chmod 777 /tmp/ngrok
echo $PASS | sudo -S /tmp/ngrok authtoken 2CCFwZdVTWE9GM5EgD0pgd8Enrp_51BVfh8hsJwScNr58KtTD
