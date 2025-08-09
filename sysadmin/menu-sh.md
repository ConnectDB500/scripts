    Analise de Logs
  Logs são registros automáticos de eventos que ocorrem em um sistema, aplicação, rede
ou dispositivo. Eles mostram o que aconteceu, quem fez e como o sistema respondeu.

  O que procurar nos Logs
Falhas de login -         ataques de força bruta, usuários inválidos
Erros de serviços -       quando e por que um serviço caiu
Erros de disco/memória -  sinais de falha de hardware
Logs de rede -            portas abertas, tráfego incomum
Atualizações -            instalações, patches aplicados, reinicializações

  Linux: comandos nativos para analisar Logs
cat -             exibe todo o conteúdo do Logs
less/more -       navega pelos logs página por página
tail -            mostras as ultimas linhas do logs
tail -f -         segue o log em tempo real
grep -            filtra o conteúdo por palavra-chave
awk, cut, sed -   manipulam e formatam os dados dos logs

  Arquivos de Logs no Linux
/var/log/syslog -             logs gerais do systema
/var/log/auth.log -           acesso via sudo, logins e SSH
/var/log/dmesg -              mensagens do kernel e inicialização
/var/log/nginx/access.log -   acesso ao servidor web Nginx

Exemplos:
- Ver os últimos 50 eventos do syslog
tail -n 50 /var/log/syslog

- Procurar por erro no syslog
grep "error" /var/log/syslog

- Filtrar logs por hora especifica
grep "May 17 10:" /var/log/syslog