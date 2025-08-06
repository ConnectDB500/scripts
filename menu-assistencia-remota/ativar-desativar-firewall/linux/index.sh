#!/bin/bash

echo "Habilitar firewall ufw"
sudo systemctl enable ufw

echo "Ativar firewall ufw"
sudo systemctl start ufw

echo "Desativar firewall ufw"
sudo systemctl stop ufw