#!/bin/bash

sudo apt update

#Installing Java 8 which is pre-req 
sudo apt install default-jre -y

sudo apt install default-jdk -y

#Install Jenkins
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update

sudo apt install jenkins -y

sudo systemctl start jenkins

sudo systemctl status jenkins
