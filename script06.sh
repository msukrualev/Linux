#! /bin/bash

### case conditional 

app1=$1

case $app1 in

    "java" )

        echo "$app1 is an OOP programming language"
        java --version;;

    "python" )

        echo "$app1 is good to start programming"
        python3 --version;;

    "git" )

        echo "$app1 is Version Control System"
        git --version;;
    
    * ) 

        echo "Your app is not found "
esac