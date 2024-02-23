# Update the Linux packages
sudo yum update -y

# Install Dependency
sudo yum install wget unzip -y

# stop firewall
sudo systemctl stop firewalld

#  install the OpenJDK version of Java 17:
sudo yum install fontconfig java-17-openjdk -y

mkdir Sonarqube
cd Sonarqube

# Download the sonaqube binary files To download the latest version

sudo wget  https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.4.0.87286.zip

# Unzip the archive file by the following command:
$ sudo unzip sonarqube-10.4.0.87286.zip
