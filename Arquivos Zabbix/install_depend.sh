#! /bin/bash

# Atualização de pacotes
apt update

#instalação do PIP gerenciador de pacotes python
apt install python-pip

#instalação do python com otrs
pip install python-otrs

#instalação do python com zabbix
pip install zabbix-api