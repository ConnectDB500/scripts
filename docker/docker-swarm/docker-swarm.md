O comando setup-swarm.sh (ou qualquer script que você crie para subir o cluster) vai ser a base de todos os seus experimentos com Docker Swarm.
Se você decorar e entender o fluxo dele, vai facilitar muito:

1. Inicia o Swarm no manager (docker swarm init).

2. Adiciona os workers (docker swarm join --token ...).

3. Verifica nós ativos (docker node ls).

4. Cria serviços (docker service create).

5. Escala serviços (docker service scale).

6. Verifica tasks (docker service ps).

💡 Dica: não precisa decorar palavra por palavra; o importante é memorizar a sequência lógica e os comandos principais.
Depois, você só chama o script ./setup-swarm.sh e ele já faz a maior parte pra você.