#! /bin/bash

#Conditionals

# if durum
# then ytapilacak isler 
# else dogru olmaidignda yapilacak isler 

# if [ ifade ]
# then 
# ifade dogruysa yapilacaklar
# else 
# ifade yanlissa yapilacaklar
# fi

# if [[ 3 -eq 5 ]] # if (3==5) # eq => equals
# then 
# echo "ifade dogru"
# else 
# echo "ifade yanlis"
# fi

# if [[ 121 -ne 135 ]]
# then
# pwd
# else
# date
# fi

# if [[ 33 -gt 21 ]]
# then
# echo "ifade dogrudur"
# else
# echo "ifade yanlistir"
# fi

# if [[ 45 -le 45 ]]
# then
# echo "ifade dogrudur"
# else
# echo "ifade yanlistir"
# fi

# -eq => equal (esitse) == 
# -ne => not equal (esit degilse) !=
# -gt => greater than (buyukse) >
# -ge => greater or equal (buyuk esitse) >=
# -lt => less than (kucukse) <
# -le => less or equal (kucuk esitse) <=

# if (( "$1" < "$2" ))
# then
# echo "Kucukluk ifadesi dogru"
# else 
# echo "Kucukluk ifadesi yanlis"
# fi

# a=b
# b=A

# if [[ "$a" < "$b" ]]
# then
# echo "a b den once geliyor "
# else
# echo "a b den sonra geliyor "
# fi

# String=" "

# if [[ -n "$String" ]] 
# then
# echo "String dolu" 
# else
# echo "String bos"
# fi

read -p "Enter a and b : " a b 
if [[ $a -lt $b ]]
then 
echo "a b den kucuk"
elif [[ $a -gt $b ]]
then
echo "a b den buyuk"
elif [[ $a -eq $b ]]
then
echo "a b esit"
else 
echo "buraya dusmez"
fi