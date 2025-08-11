#!/bin/bash

echo "ver logs recentes do sistema"
journalctl -xe | tail -n 50