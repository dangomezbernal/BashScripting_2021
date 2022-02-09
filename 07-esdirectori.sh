#! /bin/bash
# isx47327409 ASXIX M01
# 03-02-2022
# Llista el directori introduït
# $ prog dir
#-------------------------------
# 1) Validem arguments

if [ $# -ne 1 ]
then
  echo "Error: numero d'arguments incorrecte"
  echo "Usage : $0 ruta"
  exit 1
fi

# 2) Validem si és un directori
if ! [ -d $1 ] 
then
  echo "Error: El directori introduït $1 no existeix"
  echo "Usage : $0 ruta"
  exit 1
fi

# 3) Xixa
dir=$1
ls $dir
exit 0
