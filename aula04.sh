Firewall, Python HTTP Server e Gerenciamento de Portas - Resumo

Para adicionar repositarios ao nosso sistema, precisamos de um software chamado software-properties-common, que pode ser instalado com o comando abaixo:

sudo apt-get install software-properties-common



2. Python HTTP Server:

- Servir a pasta atual na porta 8000 (padrÃ£o):
  python3 -m http.server

- Servir a pasta atual em uma porta especifica (exemplo 4000):
  python3 -m http.server 4000

- Servir uma pasta especifica:
  python3 -m http.server 4000 --directory /caminho/para/pasta

- Permitir acesso de outras maquinas na rede (escutar em todas interfaces):
  python3 -m http.server 4000 --bind 0.0.0.0


4. Desabilitar o KVM no Linux

- Verifique se o KVM estao carregado:
  lsmod | grep kvm
- Descarregar os modulos do KVM temporariamente
  sudo rmmod kvm_intel (kvm_amd)
  sudo rmmod kvm



7. To install python on ubuntu
sudo apt-get install python3

sudo apt-get install python3-pip

which python3

python3 --version

pip --version