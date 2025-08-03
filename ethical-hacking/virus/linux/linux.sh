# Pasta padra no Linux que armazena documentacao dos pacotes instalados no sistama, como:
ls /urs/share/doc

# Verificar onde estou:
pwd

# Listar arquivos e subpastas:
ls -R

# Compactar o arquivo hello.txt criando o arquivo hello.txt.gz
gzip hello.txt

# Compactar dois arquivos poem.txt riddle.txt e gerar os arquivos poem.txt.bz2 riddle.txt.bz2
bzip2 poem.txt riddle.txt

Using bzip2 and the -d option, decompress all the files .bz2 files inside the directory riddles.
To refer to the files, you can use the path riddles/*.bz2!
#
bzip2 -d riddles/*.bz2

Now, compress all the files in the riddles directory using gzip with the -r option.
#
bzip2 -r riddles

# Procurar os arquivos "codecademy.png"
cd ~/workspace
find . -name "codecademy.png"

#
info coreutils

#
man nmap

xz -d codecademy.png

# Descomprimir o arquivo "important.zip"
unzip important.zip

# Comprimir os arquivos da pasta "riddles"
zip riddles.zip -r riddles

# Para extrair arquivos .tar usamos -xf
tar -xf arquivo.tar

# Criar um tarball chamado "text_files.tar" com varios arquivos
tar -cf text_files.tar hello.txt bye.txt poem.txt

# Usando o gzip para criar um tarball
gzip files.tar

# Usar o comando tar para criar um diretorio riddles com um unico comando
tar -cjf riddles.tar.bz2 riddles

# Para comprimir usando o xz coloque a letra -J maiuscula
tar -cJf riddles.tar.xz riddles

#
wget www.codecademy.com

#
curl -O https://static-assets.codecademy.com/Courses/learn-linux/secret-file.txt

#
host codecademy.com

# 
nslookup codecademy.com

#
ping 104.17.184.120

#
ifconfig