#!/bin/bash

# Declared a function called "showmess"

showmess (){
    echo "My programming idol is Linus Torvald and my favourite\
    linux distro is $1 $(uname -r)" #script parameters $1??
}

#calling the "showmess" function 
showmess redhat

