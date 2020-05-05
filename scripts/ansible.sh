#!/bin/bash
sudo apt-get update
sudo apt-get install python python-pip -y 
# make sure ~/.local/bin exists and is on your PATH
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
## install ansible with pip
pip install --user ansible
# check that ansible has been installed
ansible --version

ansible-playbook -i inventory.cfg playbook.yml 