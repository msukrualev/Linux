#! /bin/bash

## while 

num=20
while (( $num>10 ))
do
echo $num
(( num-- ))
done