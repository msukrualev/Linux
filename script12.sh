#! /bin/bash

### continue/ break

## continue 


# for (( i=0; i<10; i++ ))
# do
# if [[ $i -gt 1 && $i -lt 7 ]]   ##  1<i<7
# then
# continue
# fi
# echo $i
# done

## break 

for (( i=0; i<10; i++ ))
    do
        if [[ $i -eq 5 ]] 
            then
            break
        fi
    echo $i
done

var1=1

while (true) ## sonsuz dongu 
    do
    echo $var1
    (( var1++ ))
        if [[ $var1 -eq 50 ]]
        then
        break
        fi
    done