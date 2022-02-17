#! /bin/bash
# isx47327409 ASXIX M01
# 03-02-2022
# Llista el directori introduït
# $ prog dir
#-------------------------------


#
llista=$(cut -d: -f1 /etc/passwd | sort)
pos=1
for elem in $llista
do
  echo "$pos: $elem"
  ((pos++))

done 
exit 0


#
llista=$(ls)
pos=1
for elem in $llista
do
  echo "$pos: $elem"
  ((pos++))

done 
exit 0


#
pos=1
for arg in $*
do
  echo $pos.$arg
  pos=$(($pos+1))
done
exit 0


#
for arg in $*
do
  echo $arg
done
exit 0

#
for nom in "pere" "pau" "marta" "anna"
do
  echo "$nom"
done
exit 0



#
llista=$(ls)
for nom in $llista
do
  echo $nom
done 
exit 0
