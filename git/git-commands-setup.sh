#!/bin/bash
# ============================================================
# Git Commands - Revisado e Comentado
# ============================================================

# ============================================================
# 1. Configuração Inicial
# ============================================================

# Configurar nome de usuário
git config user.name              # Apenas para o repositório atual
git config --global user.name     # Para todos os repositórios do usuário

# Configurar e-mail
git config user.email
git config --global user.email

# Configurar branch padrão ao criar repositórios
git config init.defaultBranch
git config --global init.defaultBranch padawan

# Listar todas as configurações
git config --list
git config --global --list
git config --list --show-origin

# ============================================================
# 2. Autenticação com Token / Credential Helper
# ============================================================

# Clonar um repositório
git clone <URL>

# Configurar armazenamento de credenciais
git config credential.helper cache      # armazena temporariamente
git config --global credential.helper store  # armazena permanentemente

# Verificar origem da configuração de credenciais
git config --global --show-origin credential.helper

# Ver arquivos de configuração local
cat ~/.gitconfig
cat ~/.git-credentials

# ============================================================
# 3. Autenticação SSH
# ============================================================

# Listar chaves SSH existentes
ls -al ~/.ssh

# Criar nova chave SSH
ssh-keygen -t ed25519 -C "your_email123@email.com"

# Iniciar o agente SSH
eval "$(ssh-agent -s)"

# Adicionar chave SSH ao agente
ssh-add ~/.ssh/id_ed25519   # Corrigido de id_ed2519 para id_ed25519

# ============================================================
# 4. Inicializar e Configurar Repositório
# ============================================================

git init                        # Inicializa repositório local
git remote -v                   # Verificar repositórios remotos
git remote add origin git@github.com:repositorio/node.git

# Clonar repositórios
git clone <URL> nome-do-repositorio-local
git clone <URL> --branch nome-da-branch --single-branch

# ============================================================
# 5. Gerenciamento de Mudanças
# ============================================================

git status                      # Ver status do repositório
git log                         # Ver histórico de commits
git reflog                       # Histórico de ações locais

# Ignorar arquivos e pastas
echo pasta/ > .gitignore
touch pasta/.gitkeep

# Adicionar e restaurar arquivos
git add .
git restore arquivo
git restore --staged pasta/arquivo

# Modificar o último commit
git commit --amend

# Resetar commits (soft, mixed ou hard)
git reset --soft HEAD~1
git reset --mixed HEAD~1
git reset --hard HEAD~1

# ============================================================
# 6. Criar Repositório com README.md
# ============================================================

# Site útil: https://readme.so/pt
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/repositorio/node.git
git push -u origin main

# Push de repositório existente
git remote add origin https://github.com/repositorio/node.git
git branch -M main
git push -u origin main

# ============================================================
# 7. Trabalhando com Branches
# ============================================================

# Criar e alternar para branch
git checkout -b teste

# Criar arquivo para teste de branch
echo "#commit-branch-teste" > commit-branch-teste

# Voltar para branch principal
git checkout main

# Mesclar branch de teste
git merge teste

# Apagar branch local após merge
git branch -d teste

# Enviar alterações para remoto
git push origin main

# Atualizar repositório local com remoto
git pull
git push origin main

# ============================================================
# 8. Comandos Úteis Adicionais
# ============================================================

git fetch origin main                    # Atualizar refs do remoto sem merge
git diff main origin/main                # Comparar diferença entre local e remoto
git clone https://github.com/repositorio/node.git --branch teste --single-branch  # Clonar branch específico

# Stash (guardar alterações temporariamente)
git stash
git stash list
git stash apply                         # Aplica sem remover do stash
git stash pop                           # Aplica e remove do stash

# Criar nova branch e aplicar stash
git checkout -b teste2
git stash pop