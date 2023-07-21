#! /bin/bash

## until belirtilen ifade saglanana kadar calisir sonra biter

index=0

until (( $index > 10 ))
do
echo $index
(( index ++ ))
done