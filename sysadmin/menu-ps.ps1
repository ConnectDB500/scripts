    Analise de Logs
  Logs são registros automáticos de eventos que ocorrem em um sistema, aplicação, rede
ou dispositivo. Eles mostram o que aconteceu, quem fez e como o sistema respondeu.

  O que procurar nos Logs
Falhas de login -         ataques de força bruta, usuários inválidos
Erros de serviços -       quando e por que um serviço caiu
Erros de disco/memória -  sinais de falha de hardware
Logs de rede -            portas abertas, tráfego incomum
Atualizações -            instalações, patches aplicados, reinicializações

  Windows: Event Viewer e PowerShell

  Event Viewer: acesse com "Windows" + "R" e digite "eventvwr.msc"
Principais categorias:
- System: eventos do sistema operacional
- Application: falhas e eventos de aplicativos
- Security: logins, permissões, tentativas de acesso

  PowerShell
- Mostrar os 10 últimos eventos de logs do sistema
Get-EventLog -LogName System -Newest 10

- Filtrar apenas erros no log de aplicativos
Get-EventLog -LogName Application | Where-Object { $_.EntryType -eq "Error" }

- Buscar eventos com palavras-chave "logon"
Get-EventLog - LogName Security | Where-Object { $_.Message -like "*logon*" }