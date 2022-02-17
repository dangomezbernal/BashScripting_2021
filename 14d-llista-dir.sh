#! /bin/bash
# isx47327409 ASXIX M01
# 16-02-2022
# Llista el directori introduït
# $ prog dir
#-------------------------------
# 1) Validem arguments

if [ $# -lt 1 ]
then
  echo "Error: numero d'arguments incorrecte"
  echo "Usage : $0 ruta"
  exit 1
fi

# 2) Validem si és un directori
for dir in $*
do 
  if ! [ -d $dir ] 
  then
    echo "Error: El directori introduït $1 no existeix"
    echo "Usage : $0 ruta"
    exit 1
  fi
  llista=$(ls $dir)
  for elem in $llista
  do
    if [ -f "$dir/$elem" ]
    then
       fit="fitxer"
     elif [ -h "$dir/$elem" ]
     then
       fit="link"
     elif [ -d "$dir/$elem" ]
     then
       fit="directori"
     else
       fit="es una altra cosa"
  fi
  echo "$dir:"
  echo "\t$elem: $fit"
  done
done
exit 0
