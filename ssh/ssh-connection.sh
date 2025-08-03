sudo rmmod kvm_intel

sudo rmmod kvm

sudo apt update && sudo apt upgrade -y

sudo apt install openssh-server -y

sudo apt install openssh-client

1. Get the IP address of your VM
ip addr show

2. Enable and start your ssh service on the client
sudo systemctl enable ssh

sudo systemctl start ssh

3. Check SSH is running on the VM
sudo systemctl status ssh

4. To check the Ping test
ping <IP_client>

5. To connect your client with your server host
ssh username@<ip_address>

(Bonus). Skip password entry next time
On your Server host:
ssh-keygen -t ed25519

Then, copy the key to your user host
ssh-copy-id username_client@<ip_client>
