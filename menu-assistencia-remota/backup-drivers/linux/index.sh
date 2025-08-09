#!/bin/bash

echo "backup dos drivers"
sudo cp -r /lib/modules/$(uname -r)/kernel/drivers ~/driver_backup