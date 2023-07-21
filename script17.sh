#! /bin/bash

## Local ve global degiskenler (variable scopes)


function techpro() {

    local var1=$1 ## techpro.var1
    echo "var1 in degeri: $var1"
    echo $1
    ## burada $2=> 35 
}


techpro 25 35 #$1

echo "Disaridaki var1: "$var1
echo $2