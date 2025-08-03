#!/bin/bash
# Verifica se um servico esta no ar (nginx)

SERICO="nginx"

if systemctl is-active --quiet "$SERVICO"; then
  echo "$servico esta rodando normalmente"
else
  echo "$SERVICO esta parado! Tentando reiniciar..."
  sudo systemctl restart "$SERVICO"
  sleep 1
  systemctl is-active --quiet "$SERVICO" && echo "Reiniciando com sucesso" || echo "Erro ao reiniciar!"
fi