#! /bin/bash

## fonksiyonlar 

function fun1 () {

    tail -$1 /etc/passwd
}

read -p "Fonksiyonun argumaninin giriniz " arguman


fun1 $arguman