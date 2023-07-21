#! /bin/bash

## select (menu olusturmak icin)

select selection in "Listele" "Mevcut yolu goster" "Tarih" "son 3 kullaniciyi goster"
do 

case $selection in 

"Listele" )

ls -la 
break;;

"Mevcut yolu goster" )
 pwd 
 break;;
 
"Tarih" ) 
date
break;;

"son 3 kullaniciyi goster" )

tail -3 /etc/passwd
break;;
esac

done
