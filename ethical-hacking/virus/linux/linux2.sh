The beginning of your script file should start with #!/bin/bash on its own line. This tells the computer which type of interpreter to use for the script. When saving the script file, it is good practice to place commonly used scripts in the ~/bin/ directory.

To add this permission to a file with filename: script.sh use:
chmod +x script.sh

On Linux style shells, this is ~/.bashrc and on OSX, this is ~/.bash_profile. To ensure that scripts in ~/bin/ are available, you must add this directory to your PATH within your configuration file:
PATH=~/bin:$PATH

Exemplo de arquivo .bash "script.sh":
#!/bin/bash
variavel="Declaracao de variavel"
echo "Script de automacao"
echo $variavel

Comando para executar o arquivo "script.sh" no terminal:
./script.sh

Exemplo de condicionais no .bash:
if [$index -lt 5]
then
  echo $index
else
  echo 5
fi

Here is the list of comparison operators for numbers you can use within bash scripts:
Equal: -eq
Not equal: -ne
Less than or equal: -le
Less than: -lt
Greater than or equal: -ge
Greater than: -gt
Is null: -z
Equal: ==
Not equal: !=

To compare if the variables foo and bar contain the same string:
if ["foo" == "$bar"]

There are 3 different ways to loop within a bash script: for, while and until:
for word in $paragraph
do 
  echo $word
done

while [ $index -lt 5 ]
do
  echo $index
  index=$((index + 1))
done

until [ $index -lt 5 ]
do 
  echo $index
  index=$((index + 1))
done

Exemplo de um programa contendo estrutura condicional dentro de uma estrutura de repeticao:
#!/bin/bash
first_greeting="Nice to meet you!"
later_greeting="How are you?"
greeting_occasion=0
while [ $greeting_occasion -lt 3 ]
do
  if [ $greeting_occasion -lt 1 ]
  then 
    echo $first_greeting
  else
    echo $later_greeting
fi
greeting_occasion=$((greeting_occasion + 1))
done

Entrada de dados no arquivo bash utiliza a palavra "read":
read 

Exemplo de programa que utiliza entrada de dados:
#!/bin/bash
first_greeting="Nice to meet you!"
later_greeting="How are you?"
greeting_occasion=0
echo "How many times should I greet?"
read greeting_limit
while [ $greeting_occasion -lt $greeting_limit ]

do
  if [ $greeting_occasion -lt 1 ]
  then
    echo $first_greeting
  else
    echo $later_greeting
  fi
  greeting_occasion=$((greeting_occasion + 1))
done