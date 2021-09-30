sudo curl -L https://bootstrap.saltstack.com -o install-salt.sh
sudo chmod u+x install-salt.sh
sudo ./install-salt.sh -P -A 10.1.1.100
#sudo sed -i "s/#master_finger: ''/master_finger: 'ba:16:e4:89:f0:76:c6:5b:ca:ef:c9:8f:a0:96:9d:0f:85:f6:cc:fa:f3:0d:1e:00:40:f2:a6:8e:dd:cf:9c:18'/g" /etc/salt/minion
#sudo sed -i "s/#master: salt/master: 10.1.1.1/g" /etc/salt/minion
#sudo service salt-minion restart