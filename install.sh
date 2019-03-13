#!bin/bash

#install java + git + maven
sudo apt install -y openjdk-8-jre openjdk-8-jdk git
sudo apt install -y maven
if ! cat /etc/passwd | grep jenkins; then

sudo useradd -m -s /bin/bash jenkins

fi

if ! sudo cat /etc/sudoers | grep jenkins; then

	echo 'jenkins ALL=(ALL:ALL) NOPASSWD:ALL' | sudo EDITOR='tee -a' visudo
fi

sudo wget https://updates.jenkins-ci.org/latest/jenkins.war
sudo chown jenkins:jenkins /home/jenkins.war
sudo cp jenkins.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl restart jenkins




if ! cat /etc/passwd | grep spring; then

sudo useradd -m -s /bin/bash spring

fi

if ! sudo cat /etc/sudoers | grep spring; then

        echo 'spring ALL=(ALL:ALL) NOPASSWD:ALL' | sudo EDITOR='tee -a' visudo
fi

sudo cp spring.service /etc/systemd/system
sudo systemctl daemon-reload
