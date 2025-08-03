Comandos que servem para registrar sessões de terminal, ou seja, gravar tudo o que foi
digitado e exibido na tela, incluindo comandos e saidas. Isso é útil para auditoria, 
estudo, documentação ou rastramento de erros.

3. CMD do Windows:    --/--
O CMD não tem um comando nativo para registrar sessões como o script do Linux ou Start-Transcript
do PowerShell. 
  Alternativa 1: usar o rediressionamento de saida manualmente.

cmd 
echo Comando 1 >> log.txt
dir >> log.txt
echo Comando 2 >> log.txt
ipconfig >> log.txt

Isso grava as saidas dos comandos no arquivo "log.txt", mas não grava o que foi digitado, apenas
o resultado dos comandos.
  Alternativa 2: usar softwares externos
- script.exe do pacote UnxUtils
- Python com subprocess + logging

Automatizar o script no Linux ou o Start-Transcript no PowerShell para iniciar toda vez que abrir
o terminal.