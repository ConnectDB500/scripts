#!/bin/bash

data=$(date + %F)
pasta_origem="/home/usuario/documentos"
destino="/home/usuario/backups/backup_$data.tar.gz"
tar -czvf "$destino" "$pasta_origem"