#/usr/bin/bash

useradd sonar
yum install wget unzip java-11-openjdk-devel -y
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.1.0.477736.zip
unzip sonarqube-9.1.0.47736.zip-d/opt/
mv /opt/sonarqube-9.1.0.47736/opt/sonarqube
chown -R sonarqube

wget http://binaries.sonarsource.com/Distribution/sonnar-scanner-cli/sonnar-scanner-cli-4.6.2.2472-linux.zip
chown -R sonar:sonar /opt/scanar-scaner