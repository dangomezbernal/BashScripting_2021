



#! /bin/bash
# isx47327409 ASXIX M01
# 17-02-2022
# Llista el directori introduït
# $ prog dir
#-----------------------------




















# 4. Fer un programa que rep com arguments números de mes (un o més) i indica per a cada mes quants dies té.


# 1) Validem que com a mínim s'ha introduït un argument

if [ $# -lt 1 ]
then
  echo "Error: numero d'arguments incorrecte"
  echo "Usage : $0 mes..."
  exit 1
fi


# 2) Validem quants dies tenen els mesos introduïts
for mes in $*
do
  if ! [ $mes -ge 1 -a $mes -le 12 ]
  then
    echo "Error: mes $mes no vàlid, $mes ha d'estar entre 1 i 12 " >> /dev/stderr
  
  else
      case "$mes" in
	  "2")
	  dies=28
	  ;;
          "1"|"3"|"5"|"7"|"8"|"10"|"12")
	  dies=31
	  ;;
           *)
	  dies=30
      esac
      echo "el mes $mes té $dies dies"
  fi
done
exit 0




# 3. Fer un comptador des de zero fins al valor indicat per l'argument rebut

# 1) Validem que només s'ha introduït un argument
if [ $# -ne 1 ]
then
  echo "Error: numero d'arguments incorrecte"
  echo "Usage : $0 num"
  exit 1
fi

# 2) Fem el comptador de 0 a l'argument rebut
compt=0
num=$1

while [ $compt -le $num ]
do
  echo "$compt"
  ((compt ++))
done
exit 0



# 2. Mostrar els arguments rebuts línia a línia, tot numerànt-los

# 1) Validem que com a mínim s'ha introduït un argument
if [ $# -lt 1 ]
then
  echo "Error: numero d'arguments incorrecte"
  echo "Usage : $0 arg..."
  exit 1
fi

# 2) numerem els arguments
num=1
for arg in $*
do
  echo "$num: $arg"
  ((num ++))
done
exit 0


# 2. Mostrar els arguments rebuts línia a línia, tot numerànt-los

# 1) Validem que com a mínim s'ha introduït un argument
if [ $# -lt 1 ]
then
  echo "Error: numero d'arguments incorrecte"
  echo "Usage : $0 arg..."
  exit 1
fi

# 2) numerem els arguments
num=1
while [ -n "$1" ]
do
  echo "$num: $1"
  shift
  ((num ++))
done
exit 0


# 1. Mostrar l'entrada estàndard numerant línia a línia

# 1) Numerem entrada estàndard
num=1
while read -r line
do
  echo "$num: $line"
  ((num++))
done
exit 0
