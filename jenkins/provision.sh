#!/bin/env bash
echo "Installing Jenkins and dependencies..."
yum install -y java-1.8.0-openjdk
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo/sudo tee /etc/yum.repos.d/jenkins.repo
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins