#!/bin/bash

echo "Enter the full name of the Git user:  \c"
read gitName
echo "Enter the email address of the Git user:  \c"
read gitEmail

#echo "Enter password for user 'vmware' \c"
#read password
#sudo useradd vmware -g sudo
#echo "vmware:$password" | sudo chpasswd --md5 vmware

sudo mkdir ~/bin
sudo curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
sudo chmod a+x ~/bin/repo
PATH=~/bin:$PATH

sudo apt-get -y install git
git config --global user.email $gitEmail
git config --global user.name $gitName
git config —-global color.ui false

sudo apt-get -y install libssl-dev libffi-dev python-pip python-dev

sudo pip install ansible

sudo mkdir chaperone
cd chaperone

repo init -u https://github.com/vmware/chaperone -b master -g chaperone
repo sync

cd ansible/playbooks/ansible

ansible-playbook -i inventory ansible.yml



