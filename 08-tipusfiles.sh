#! /bin/bash
# isx47327409 ASXIX M01
# 09-02-2022
# Valida si es un file, dir o link
#-------------------------------
# 1) Validem arguments

if [ $# -ne 1 ]
then
  echo "Error: numero d'arguments incorrecte"
  echo "Usage : $0 ruta"
  exit 1
fi

# 2) Validem si es un file, dir o link
fit=$1
if ! [ -e $fit ]
then 
  echo "$fit no existeix"
  exit 1
elif [ -f $fit ]
then
  echo "$fit és un fitxer"
elif [ -h $fit ]
then
  echo "$fit és un link"
elif [ -d $fit ]
then
  echo "$fit és un directori"
else
 echo "$fit es una altra cosa"
fi
exit 0
