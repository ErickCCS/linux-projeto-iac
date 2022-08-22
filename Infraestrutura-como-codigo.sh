#!/bin/bash

echo "Meu primeiro script - Infraestrutura como código."

echo "Criando os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários e os adicionando aos grupos..."

useradd carlos -c "Usuário do grupo GRP_ADM" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Usuário do grupo GRP_ADM" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "Usuário do grupo GRP_ADM" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Usuário do grupo GRP_VEN" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Usuário do grupo GRP_VEN" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Usuário do grupo GRP_VEN" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Usuário do grupo GRP_VEN" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Usuário do grupo GRP_VEN" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Usuário do grupo GRP_VEN" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
passwd rogerio -e

echo "Alterando grupos dos diretórios..."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Alterando permissões..."

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Sua Infraestrutura está pronta!"
