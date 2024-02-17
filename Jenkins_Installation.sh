#!/usr/bin/env bash
# This script install Jenkins in your Red Hat System
#
# This script must be run as root:
#   $ sudo ./jenkins_install.sh

sudo yum update -y

# stop firewall
sudo systemctl stop firewalld

# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import Jenkins repository key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade

#  install the OpenJDK version of Java 17:
sudo yum install fontconfig java-17-openjdk -y

# Install Jenkins
sudo yum install jenkins -y
sudo systemctl daemon-reload

# enable the Jenkins service to start at boot with the command:
sudo systemctl enable jenkins

# Start Jenkins service and check status
sudo systemctl start jenkins
sudo systemctl status jenkins

echo "Jenkins installation and setup completed successfully."
