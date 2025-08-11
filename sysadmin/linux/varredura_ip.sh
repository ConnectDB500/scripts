#!/bin/bash
# descobre quais dispositivos estão ligados numa rede local

for ip in $(seq 1 234); do
  ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done