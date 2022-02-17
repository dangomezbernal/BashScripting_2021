#! /bin/bash
#
#
#
#------------------------------------------------------------


# 7) numerar stdin linia a linia i pasarla a majuscules
num=1
while read -r line
do
  
  echo "$num: $line" | tr 'a-z' 'A-Z'
  ((num++))
done
exit 0


#
read -r line
while [ "$line" != "FI" ] 
do
  echo "$line"
  read -r line 
done
exit 0


# 5) numerar stdin linia a linia
num=1
while read -r line
do
  echo "$num: $line"
  ((num++))
done
exit 0


# 5) numerar stdin linia a linia
num=1
while read -r line
do
  echo "$num: $line"
  ((num++))
done
exit 0




# 4) Processar l'entrada estandart linia a linia
while read -r line
do
  echo $line
done
exit 0



# 3)
while [ -n "$1"]
do
  echo "$1, $#, $*"
  shift
done


#
MIN=0
comptador=$1
while [ $comptador -ge $MIN ]
do
  echo "$comptador"	
  ((comptador--))
done
exit 0


# mostrar un contador de 1 a MAX
MAX=10
comptador=1
while [ $comptador -le $MAX ]
do
  echo "$comptador"	
  ((comptador++))
done
exit 0
