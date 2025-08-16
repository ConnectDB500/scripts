#!/bin/bash
# Script de instalação do Docker Compose
# Versão: 1.25.5

set -e  # Para execução imediata se ocorrer algum erro

# Definir versão como variável (facilita atualização futura)
COMPOSE_VERSION="1.25.5"

echo "[INFO] Baixando Docker Compose v$COMPOSE_VERSION..."
sudo curl -L "https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" \
    -o /usr/local/bin/docker-compose

echo "[INFO] Alterando permissões..."
sudo chmod +x /usr/local/bin/docker-compose

echo "[INFO] Criando link simbólico..."
sudo ln -sf /usr/local/bin/docker-compose /usr/bin/docker-compose

echo "[INFO] Validando instalação..."
docker-compose --version

echo "[SUCESSO] Docker Compose v$COMPOSE_VERSION instalado com sucesso!"
