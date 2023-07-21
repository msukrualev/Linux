#! /bin/bash

## ARRAY
        #   0     1        2       3   
myarray=( "Ali" "Ahmet" "Orhan" "Fatma" )      # array tanimlama

echo "Array in butun degerleri : " ${myarray[@]}  ## Arrayin tamamini gosterme

echo "Arrayin uzunlugu: "${#myarray[@]} ## Arrayin uzunlugu

echo "Arrayin indexleri: "${!myarray[@]} ## Arrayin aktif indexlerini listele

length=${#myarray[@]}
echo "Arrayin ilk elemani: "${myarray[0]} ## ilk elemani goster
echo "Arrayin son elemani: "${myarray[length-1]} ## son elemani goster
echo "Arrayin son elemani: "${myarray[-1]} ## son elemani goster

echo "Arrayin olmayan elemani: ${myarray[15]}" ## olmayan elemani bos gosterir

myarray[length]="Okan" ## yeni eleman ekleme
echo "Array in butun degerleri : " ${myarray[@]} 
echo "Ekleme sonrasi arrayin uzunlugu: "${#myarray[@]}

unset myarray[2]
echo "Unset sonrasi array in butun degerleri : " ${myarray[@]} 
echo "Unset sonrasi arrayin indexleri: "${!myarray[@]}
echo "Unset arrayin uzunlugu: "${#myarray[@]}