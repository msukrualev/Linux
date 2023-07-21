#! /bin/bash

### case conditional example 


echo "Asagidaki seceneklerden birini seciniz: "
echo "1- Mevcut kullanicinin home dizinini yazdir"
echo "2- Mevcut dizini yazdir"
echo "3- Son 3 kullaniciyi goster"

read -p "Seciminiz: " selection

# selection=<inputtan gelen deger>

case $selection in

    techpro )                        

            echo ~;;

    a )

            pwd;;

    44 )

            tail -3 /etc/passwd;;
        
    * ) 

        echo "Yanlis giris yaptiniz"
esac