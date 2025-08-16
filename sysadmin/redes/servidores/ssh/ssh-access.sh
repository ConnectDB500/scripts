# criar um par de chaves 
ssh-keygen -t rsa -b 4096

# copiar chave publica pro servidor
ssh-copy-id usuario@ip_do_servidor

# desativar login por senha /etc/ssh/sshd_config
PasswordAuthentication no

# reiniciar o ssh
sudo systemctl restart ssh