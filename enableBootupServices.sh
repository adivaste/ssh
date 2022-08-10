# Password
PASS="123456"

# Creating the "rc-local.service file in home directory and moving again to "/etc/systemd/system/"
echo $PASS sudo -S sh -c "echo '[Unit]
 Description=/etc/rc.local Compatibility
 ConditionPathExists=/etc/rc.local

[Service]
 Type=forking
 ExecStart=/etc/rc.local start
 TimeoutSec=0
 StandardOutput=tty
 RemainAfterExit=yes
 SysVStartPriority=99

[Install]
 WantedBy=multi-user.target' | sudo tee -a /home/rc-local.service"

echo $PASS sudo -S mkdir -p /etc/systemd/system/
echo $PASS sudo -S mv /home/rc-local.service /etc/systemd/system/

# Creating the "rc.local" file 
echo $PASS | sudo -S sh -c "printf '%s\n' '#!/bin/bash' '/bin/bash /tmp/runDaily.sh' 'exit 0' | sudo tee -a /etc/rc.local"
echo $PASS | sudo -S chmod +x /etc/rc.local

# Starting the required services
echo $PASS | sudo -S  systemctl enable rc-local
echo $PASS | sudo -S sudo systemctl start rc-local.service
echo $PASS | sudo -S sudo systemctl status rc-local.service

echo "\n :: Service For Running Bootup script Started Sucessfully !"
