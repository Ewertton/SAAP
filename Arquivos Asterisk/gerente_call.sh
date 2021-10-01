FALHA=Expired
CANAL='SIP/gerente' #Canal utilizado para fazer as ligações
ORIGEM='zabbix <9000>' #Ramal de Origem válido, necessário para alguns canais funcionarem
CONTEXTO='aula' #Cotexto da ligação no Diaplan do Asterisk
EXTENSAO='9001' #Extensão utilizada para a ligação
ARQUIVAR=yes #Arquivar histórico das ligações (yes or no)
RETRY='1' #Quantidade de Tentativas
RETRYTIME='10' #Tempo para refazer a ligacao
WAITIME='30'
MESSAGE_INCIDENTE=`cat $DIR$FILE | head -n 8 | tail -n 1 | cut -s -d"=" -f2 2> /dev/null` # Recupera a mensagem do incidente enviada para o plantonista

if [ -e "$DIR$FILE" ] ; then


if grep $FALHA $DIR$FILE > /dev/null
then
        echo "LIGAR PARA O GERENTE"
        echo $MESSAGE_INCIDENTE
        echo -en "Channel: $CANAL\nCallerID: $ORIGEM\nContext: $CONTEXTO\nExtension: $EXTENSAO\nMaxRetries: $RETRY\nRetryTime: $RETRYTIME\nWaitTime: $WAITIME\nSetvar: MESSAGE=$MESSAGE_INCIDENTE\nArchive: $ARQUIVAR\n\n" >> /tmp/ligacao_gerente.call
        mv /tmp/ligacao_gerente.call /var/spool/asterisk/outgoing

        mv $DIR$FILE /var/spool/asterisk/tmp/
fi
fi
