#!/bin/bash


echo "Criando novos grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando novos usuários e adicionando aos GRUPOS"

useradd carlos -c "novo usuário" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "novo usuário" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_ADM
passwd maria -e 

useradd joao -c "novo usuário" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_ADM
passwd joao -e 

useradd debora -c "novo usuário" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "novo usuário" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "novo usuário" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "novo usuário" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "novo usuário" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "novo usuário" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GRP_SEC
passwd roberio -e
echo "Finalizado"
