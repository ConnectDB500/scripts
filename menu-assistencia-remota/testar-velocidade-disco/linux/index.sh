#!/bin/bash

echo "testar velocidade de disco"
sudo apt install hdparm
sudo hdparm -Tt /dev/sda