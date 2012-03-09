#!/bin/bash

#Licensed under the "Modified BSD License" – see LICENSE for details

if [ $# -lt  3 ]; then
  if [ "$1" == "--rename" -o $# -lt 2 ]; then
    echo "Arguments missing"
    echo 
    echo "USAGE: $0 [--rename] <source> <target>"
    echo
    echo "EXAMPLE:"
    echo
    echo "$0 todo done"
    echo 
    echo "Will copy all files beginning with 'todo', replacing 'todo' with 'done'" 
    echo
    echo "$0 --rename todo done"
    echo 
    echo "Will rename all files beginning with 'todo', replacing 'todo' with 'done'" 
  else
    for i in $(ls $1*); do cp $i `echo $i | sed -e "s/^$1/$2/"`; done
  fi
elif [ "$1" == "--rename" ]; then
    for i in $(ls $2*); do mv $i `echo $i | sed -e "s/^$2/$3/"`; done
fi
