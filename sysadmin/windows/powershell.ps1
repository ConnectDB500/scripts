Comandos que servem para registrar sessões de terminal, ou seja, gravar tudo o que foi
digitado e exibido na tela, incluindo comandos e saidas. Isso é útil para auditoria, 
estudo, documentação ou rastramento de erros.

2. PowerShell:    Start-Transcript -Path "C:\Transcript.txt"
O que faz:
- Começa a gravação da sessão atual do PowrShell no arquivo "C:\Transcript.txt".
- Assim como no comando script do Linux, tudo o que você digitar e o que for exibido será salvo.
Para encerrar a gravação, use:    Stop-Transcript

Automatizar o script no Linux ou o Start-Transcript no PowerShell para iniciar toda vez que abrir
o terminal.

2. Automatizar Start-Transcript no PowerShell
a) Criar ou editar seu perfil do PowerShell:
notepad $PROFLE

a.1) Se aparecer mensagem dizendo que arquivo não existe, crie com:
New-Item -Type File -Path $PROFILE - Force
notepad $PROFILE

b) Adicionar o Start-Transcript no final do arquivo:
$logPath = "$env:USERPROFILE\Document\Powershell_logs"
if (!(Test-Path $logPath)) {
  New-Item -ItemType Directory -Path $logPath
}
$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
Start-Transcript -Path "$logPath\session_$timestamp.txt" -Append
Isso vai gravar todos os comandos e saidas automaticamente em um diretorio chamado PowerShell_logs.

b.1) Se quiser parar a gravação automaticamente após X minutos, você pode configurar via script ou
usar Stop-Transcript no final de sessões programadas.
Start-Sleep -Seconds 600
Stop-Transcript

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