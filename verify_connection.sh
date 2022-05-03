#!/bin/sh

# verifica acesso à internet
net(){
    domain=www.bmw.de
    clear
    ping -w1 $domain >/dev/null 2>&1
    while [$? != 0]; do
       clear
       echo " __________________________________________"
       echo "|Sem acesso à internet; Verifique a conexão|"
       echo "|__________________________________________|"
       sleep 2s
       ping -w1 ping $domain >/dev/null 2>&1
    done
    clear
        echo "[ok] conectado à target "$domain
}
net
