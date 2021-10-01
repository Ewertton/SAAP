# SAAP - Sistema para Acionamento Automático de Plantonista

### Idealizadores:
Ewertton Klaytton Elias da Silva - ewertton.klaytton@escolar.ifrn.edu.br

Jomilson Franklin Ciriaco - jomilson.franklin@escolar.ifrn.edu.br

Luan Carlos Silva Rocha - luan.rocha@escolar.ifrn.edu.br

## Proposta:
O produto será responsável por acionar técnicos de manutenção de uma rede e seus ativos, um data center por exemplo, em horário de sobreaviso, ou seja, fora do horário comercial. Esta rede pode pertencer a empresa ou pode pertencer a terceiros. O produto pode ser integrado a um sistema de monitoração existente, onde pode-se realizar a integração com o sistema de chamadas automático. Com este produto a empresa responsável pela manutenção pode obter melhores resultados na relação detecção de falha x acionamento técnico. Dessa forma a empresa conseguirá realizar a tratativa da falha em menor tempo e garantirá o Service Level Agreement (SLA) mínimo contratado.

## Introdução:
Este projeto visa automatizar o acionamento de plantonistas, reduzindo o custo de contratação das empresas responsáveis pelos acionamentos e garantindo que os técnicos sejam informados da forma mais breve possível sobre os incidentes na rede.
O projeto também contará com um serviço de Log, onde possibilita que os responsáveis possam acompanhar as ações do sistema, utilizando-os em consultorias e/ou auditorias da empresa

## Objetivo Geral
Desenvolver um sistema de monitoramento de rede para realizar de forma automática através de ligação telefônica o acionamento de funcionários que trabalham no esquema de sobreaviso ou plantão e que cria um LOG, onde salvar os resultados da chamada via VoIP.

## Objetivo Específico
- Construir um sistema de monitoramento com o uso da ferramenta ZABBIX;
- Realizar chamada de voz, utilizando a central Asterisk;
- Selecionar na base de dados o técnico responsável pela atuação;
- Fazer integração do Asterisk e Zabbix;
- Integrar o sistema de monitoração com sistema de tickets; 
- Criar LOGs de eventos do sistema.
