#!/bin/bash
# ============================================
# Script de configuração Docker Swarm
# Manager + Workers + Serviço de Teste
# Autor: Emerson (revisado pelo ChatGPT)
# ============================================

# ==== CONFIGURAÇÕES ====
MANAGER_IP="192.168.1.2"   # IP do host Manager
WORKER_IPS=("192.168.1.3" "192.168.1.4")  # IPs dos workers
# ========================

# ==== ETAPA 1: Iniciar Swarm no Manager ====
echo "[MANAGER] Iniciando cluster Swarm..."
docker swarm init --advertise-addr "$MANAGER_IP"

# Pega token de worker
WORKER_TOKEN=$(docker swarm join-token -q worker)
echo "[INFO] Token para adicionar workers: $WORKER_TOKEN"

echo ""
echo "[INFO] Para cada worker, execute manualmente:"
echo "docker swarm join --token $WORKER_TOKEN $MANAGER_IP:2377"
echo ""

# ==== ETAPA 2: Validar nós ====
echo "[MANAGER] Listando nós do cluster..."
docker node ls

# ==== ETAPA 3: Criar serviço de teste ====
echo "[MANAGER] Criando serviço de teste (nginx) com 3 réplicas..."
docker service create --name nginx-test --replicas 3 -p 8080:80 nginx

# Listar serviços ativos
docker service ls

# ==== ETAPA 4: Validar tarefas do serviço ====
echo "[MANAGER] Validando distribuição das tarefas..."
docker service ps nginx-test

echo ""
echo "[SUCESSO] Cluster Swarm configurado e serviço nginx rodando em http://$MANAGER_IP:8080"
echo "Acesse no navegador para testar."
