
5. Nmap
# safe targets
testphp.vulnweb.com
scanme.nmap.org

touch maquinas.txt

echo "192.168.0.1" >> maquinas.txt

nmap -h

nmap 192.168.0.52

nmap 192.168.0.40-59

nmap 192.168.0.1/24 -sP

nmap 192.168.0.* -sP

nmap scanme.nmap.org -F --top-ports

nmap -iL maquinas.txt

-iL <inputfilename>: Input from list of hosts/networks

-sL: List Scan - simply list targets to scan

-p <port ranges>: Only scan specified ports

--top-ports <number>: Scan <number> most common ports

-sV: Probe open ports to determine service/version info

-O: Enable OS detectio

-6: Enable IPv6 scanning

-A: Enable OS detection, version detection, script scanning, and traceroute

6. To Create a Local Server
- sudo apt install apache2

# Check your local IP
- ip a
- ip addr show

# Scan your own server
- nmap <your_local_ip>