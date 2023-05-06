#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /admin
mkdir /vendas
mkdir /secretaria

echo "Criando grupos de usuários..."

groupadd grupo_admin
groupadd grupo_vendas
groupadd grupo_secretaria

echo "Criando usuários..."

useradd primeirousuario -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grupo_admin
useradd segundousuario -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grupo_admin
useradd terceirousuario -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grupo_admin

useradd quartousuario -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grupo_vendas
useradd quintousuario -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grupo_vendas
useradd sextousuario -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grupo_vendas

useradd setimousuario -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grupo_secretaria
useradd oitavousuario -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grupo_secretaria
useradd nonousuario -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grupo_secretaria

echo "Especificando permissões dos diretórios...."

chown root:grupo_admin /admin
chown root:grupo_vendas /vendas
chown root:grupo_secretaria /secretaria

chmod 770 /admin
chmod 770 /vendas
chmod 770 /secretaria
chmod 777 /publico

echo "Fim....."