#!/bin/bash

CANAL='Local/'          #Canal utilizado para receber as ligações - Será utilizado um canal local, para que seja possível a efetivação da ligação para a fila (queues.conf).
ORIGEM='zabbix <9000>'  #Ramal de Origem válido, necessário para alguns canais funcionarem
CONTEXTO='aula'         #Cotexto da ligação no Diaplan do Asterisk
EXTENSAO='9001'         #Extensão utilizada para a ligação
ARQUIVAR=yes            #Arquivar histórico das ligações (yes or no)
RETRY='3'               #Quantidade de Tentativas
RETRYTIME='10'          #Tempo para refazer a ligacao
WAITIME='30'
                        # $1 Variavel "Send to" do zabbix
                        # $2 Variavel de mensagem do zabbix

#Cria um arquivo .call para ser enviado para o servidor PBX
echo -en "Channel: $CANAL$1@$CONTEXTO\nCallerID: $ORIGEM\nContext: $CONTEXTO\nExtension: $EXTENSAO\nMaxRetries: $RETRY\nRetryTime: $RETRYTIME\nWaitTime: $WAITIME\nSetvar: MESSAGE="$2"\nArchive: $ARQUIVAR\n\n" >> /tmp/ligacao_zabbix.call

#Move o arquivo para o servidor de PABX
sudo scp /tmp/ligacao_zabbix.call root@IP_SERVER_PBX:/tmp

#Apaga o arquivo temporário do Servidor do Zabbix
rm -rf /tmp/ligacao_zabbix.call
