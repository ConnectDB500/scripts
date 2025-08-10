import os
import platform
import subprocess

from layout.menu_interface import *
from interfaces.menu import *
from interfaces.opcoes import *

topo("AUXILIAR SUPORTE DE TI")

def exibir_menu():
  for iten in menu[0]:
    print(item)

  escolha_principal = int(input("Digite sua escolha: "))

  if escolha_principal == 1:
    for item in menu[1]:
      print(item)

    so = int(input("Escolha o sistema operacional: "))
    if so == 1:
      return "windows"
    elif so == 2:
      return "linux"
    elif so == 3:
      return exibir_menu()
    else:
      print("Opcao invalida!")
      return exibir_menu()
  else:
    quit()

extensao = exibir_menu()



rodape()