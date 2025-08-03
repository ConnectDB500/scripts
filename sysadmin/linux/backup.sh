#!/bin/bash
# Backup de uma pasta

DATA=$(date +%Y-%m-%d_%H-%M-%S)
ORIGEM="$HOME/Documents"
DESTINO="$HOME/Backups/backup_$DATA.tar.gz"

mkdir -p "$HOME/Backups"
tar -czf "$DESTINO" "$ORIGEM"

echo "Backup criado em $DESTINO"