	ZABBIX
lsb_release -a

xdg-open https://repo.zabbix.com
	
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4%2Bubuntu22.04_all.deb

sudo dpkg -i zabbix-release_6.0-4+ubuntu22.04_all.deb
When "*** zabbix.list (Y/I/N/O/D/Z) [default=N]" 
Y

sudo apt update

sudo apt install zabbix-server-mysql
sudo apt install zabbix-frontend-php
sudo apt install zabbix-apache-conf
sudo apt install zabbix-sql-scripts
sudo apt install zabbix-agent
sudo apt install mariadb-server

If Unable to locate packages zabbix, it need to force repository download and to install manually, through:
sudo rm zabbix-release_6.0-4+ubuntu22.04_all.deb
sudo rm -f /etc/apt/sources.list.d/zabbix.list

xdg-open https://repo.zabbix.com

Look for: 
https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/

echo "deb https://repo.zabbix.com/zabbix/6.5/ubuntu jammy main" | sudo tee /etc/apt/sources.list.d/zabbix.list

wget https://repo.zabbix.com/zabbix-official-repo.key
sudo gpg --dearmor < zabbix-official-repo.key | sudo tee /usr/share/keyrings/zabbix.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/zabbix.gpg] https://repo.zabbix/zabbix/6.0/ubuntu jammy main" | sudo tee /etc/apt/sources.list.d/zabbix.list

sudo apt update && sudo apt upgrade

Then, it will possible install the packages now.

Addtional Typs

1. Database Setup:
sudo mysql -u root -p
CREATE DATABASE zabbix character set utf8mb4 collate utf8mb4_bin;
CREATE USER 'zabbix'@'localhost' IDENTIFIED BY 'yourpassword';
GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbix'@'localhost';
FLUSH PRIVILEGES;
exit;

2. Import Zabbix Database Schema:
sudo zabbix_server -n
sudo zcat /usr/share/doc/zabbix-sql-scripts/mysql/create.sql.gz | mysql -u zabbix -p zabbix

3. Configure Zabbix Server: to configure the Zabbix server with the database credentials in /etc/zabbix/zabbix_server.conf. 
DBHost=localhost
DBName=zabbix
DBUser=zabbix
DBPassword=yourpassword

4. Start Zabbix and Apache:
sudo systemctl start mariadb
sudo systemctl start zabbix-server
sudo systemctl start apache2
sudo systemctl enable mariadb
sudo systemctl enable zabbix-server
sudo systemctl enable apache2

5. Web Interface:
http://your-server-ip/zabbix