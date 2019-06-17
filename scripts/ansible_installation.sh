#!/bin/bash

sudo apt update
sudo apt --yes install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt --yes install ansible


<< --MULTILINE-COMMENT--
echo '192.168.222.26' | sudo tee -a /etc/ansible/hosts
ssh-agent bash
mkdir ../keys
cd ../keys
touch master.key
ssh-add master.key
--MULTILINE-COMMENT--
