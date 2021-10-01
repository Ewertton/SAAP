#!/bin/bash
chown asterisk. /tmp/ligacao_zabbix.call 2> /dev/null

cat /tmp/ligacao_zabbix.call >> /var/log/asterisk/ligacoes_efetivadas.txt 2> /dev/null

mv /tmp/ligacao_zabbix.call /var/spool/asterisk/outgoing/ 2> /dev/null
