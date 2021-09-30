yum update
yum install tree vim bash-completion unzip -y
# firewall-cmd --add-port=4505/tcp --permanent
# firewall-cmd --add-port=4506/tcp --permanent
# firewall-cmd --reload
curl -L https://bootstrap.saltstack.com -o install-salt.sh
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
sh install-salt.sh -M -P
mkdir /srv/salt
mkdir /srv/salt/base /srv/salt/db /srv/salt/web

cp /vagrant/carved-rock-website.zip /srv/salt/web
cd /srv/salt/webcat
unzip /srv/salt/web/carved-rock-website.zip
cd /srv/salt
tree
touch base/gitconfig
mkdir /srv/pillar
tree
mkdir production dev
touch production/firewall
touch dev/editors
touch dev/tests
tree
touch db/loadcontrol
touch db/quotas
touch db/routes
tree