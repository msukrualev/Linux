#! /bin/bash

## Dosya islemlerii


# -f : dosya var olup olmamasi
# -s : dosyanin dolu olup olmamasi
# -r : okunabilir olmasi
# -w : yazilabilir olmasi 
# -x : calistirilabilir olmasi
# -d : klasor olup olmamasi

if [ -d script17.sh ]
    then
        echo "Dogru"
    else 
        echo "Yanlis "
fi
