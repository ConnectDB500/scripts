	GRAFANA
sudo apt install -y software-properties-common

sudo apt-get install -y adduser libfontconfig1 musl

wget https://dl.grafana.com/enterprise/release/grafana-enterprise_9.0.0_amd64.deb

sudo dpkg -i grafana-enterprise_9.0.0_amd64.deb

# statements to configure grafana to start automatically using systemd
 sudo systemctl daemon-reload
 
 sudo systemctl enable grafana-server
 
# You can start grafana-server by executing
 sudo systemctl start grafana-server
 
sudo systemctl status grafana-server

sudo lsof -i :3000

Web Interface:
http://localhost:3000
User: admin
Password: admin