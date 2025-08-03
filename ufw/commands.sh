1. Firewall UFW (Uncomplicated Firewall):

- Instalacao:
  sudo apt-get install ufw

# check status and roles
sudo ufw status verbose

# Enable ufw
sudo ufw enable

# check out the roles contents
cat /etc/ufw/user.rules

- Verificar status do firewall:
  sudo ufw status

- Liberar uma porta especÃ­fica (exemplo porta 4000):
  sudo ufw allow 4000

- Bloquear uma porta:
  sudo ufw deny 4000



# open main ports
sudo ufw allow 80/tcp     # HTTP   
sudo ufw allow 443/tcp    # HTTPS
sudo ufw allow 10050/tcp  # Zabbix Agent
sudo ufw allow 10051/tcp  # Zabbix Server
sudo ufw allow 21/tcp     # FTP
sudo ufw allow ssh        #

