#!/bin/bash
# ==========================================
# Script para configuração Docker Swarm
# ==========================================

# --------- HOST MANAGER ---------
# Inicia o cluster swarm
docker swarm init --advertise-addr 192.168.1.2

# (Copiar o token que aparecer no terminal e usar nos workers)

# --------- HOSTS WORKERS ---------
# Executar nos hosts worker1 e worker2, substituindo <TOKEN> pelo token real
# docker swarm join --token <TOKEN> 192.168.1.2:2377

# --------- VOLTAR PARA HOST MANAGER ---------
# Listar os nós no cluster
docker node ls

# ==========================================
# Criando e gerenciando um serviço no cluster
# ==========================================

# Criar um serviço simples com Nginx
docker service create --name demo --publish 80:80 nginx

# Listar serviços ativos
docker service ls

# Ver detalhes do serviço criado
docker service ps demo

# Escalar serviço para 3 réplicas
docker service scale demo=3

# Ver novamente como o serviço está distribuído
docker service ps demo

# Agora basta abrir o navegador em http://<IP_DO_CLUSTER> para ver a página do Nginx
