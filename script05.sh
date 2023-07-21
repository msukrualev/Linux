#! /bin/bash

#### and - or operators                ####   if ((a>b) and (c<d)) && || 

#     and oparator (-a)

#     0 and 0 = 0
#     0 and 1 = 0
#     1 and 0 = 0
#     1 and 1 = 1

# ********************

#    or oparator (-o)

#     0 and 0 = 0
#     0 and 1 = 1
#     1 and 0 = 1
#     1 and 1 = 1
a=5
b=6
c=6
               #and
if [[ $a -gt $b || $b -eq $c ]]
then 
echo "ifade dogrudur"
else
echo "ifade yanlistir"
fi