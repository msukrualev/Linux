#! /bin/bash

## for loop

## 1.kullanim 
# for (( i=0; i<10; i++ ))
# do
# echo $i
# done

## 2.kullanim

# for i in "Ali" "Ahmet" "Fatma" "Selin" "Betul"
# do
# echo $i
# done

## 3. kullanim 

# liste=( "Ali" "Ahmet" "Fatma" "Selin" "Betul" )

# for i in ${liste[@]}
# do
# echo ${i}
# done

## 4. kullanim 

for i in {1..10..4} ##(bu kullanim bash script 3+ a ozel)
do
echo $i
done