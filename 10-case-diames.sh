#! /bin/bash
# isx47327409 ASXIX M01
# 14-02-2022
# diu els dies que te un mes
# $ prog dir
#-------------------------------
# 1) Validem arguments

if [ $# -ne 1 ]
then
  echo "Error: numero d'arguments incorrecte"
  echo "Usage : $0 mes"
  exit 1
fi


# 2) Validar si help



# 3)
mes=$1
if ! [ $mes -ge 1 -a $mes -le 12 ]
then
  echo "Error, mes $1 no vàlid"
  echo "Mes pren valors del [1-12]"
  echo "Usage: $0 mes"
  exit 1
fi

# 4) xixa: determinar numero dies del mes
case "$mes" in
	"2")
	dies=28
	;;
        "1"|"3"|"5"|"7"|"8"|"10"|"12")
	dies=31
	;;
         *)
        dies=30
echo "el mes té $dies dies"

