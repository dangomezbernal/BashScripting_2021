#! /bin/bash
# isx47327409 ASXIX M01
# 03-02-2022
# Llista el directori introduït
# $ prog dir
#-------------------------------
# 1) Validem arguments

if [ $# -ne 2 ]
then
  echo "Error: numero d'arguments incorrecte"
  echo "Usage : $0 file ruta"
  exit 1
fi



# 2) Validem si és un fitxer i un directori
if ! [ -f $1 ] 
then
  echo "Error: El fitxer introduït $1 no existeix"
  echo "Usage : $0 file ruta"
  exit 1
fi


if ! [ -d $2 ] 
then
  echo "Error: El directori introduït $2 no existeix"
  echo "Usage : $0 ruta"
  exit 1
fi

# 3) Xixa
file=$1
dir=$2
cp $file $dir

