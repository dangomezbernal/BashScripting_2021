#! /bin/bash
# isx47327409 ASXIX M01
# 14-02-2022
# per cada nota que rep diu si suspès, aprovat, not, ex
# $ prog dir
#-------------------------------

# 1) Validem arguments

if [ $# -lt 1 ]
then
  echo "Error: numero d'arguments incorrecte"
  echo "Usage : $0 nota..."
  exit 1
fi

  
# 2) Xixa
for nota in $*
do
  if [ $nota -lt 0 -o $nota -gt 10 ]
  then
    echo "Error: la nota que has introduït ($nota) ha d'estar entre el 0 i el 10" >> /dev/stderr	
  elif [ $nota -lt 5 ]
  then 
    echo "Amb un $nota està suspès"
  elif [ $nota -lt 7 ]
  then
    echo "Amb un $nota està aprovat"
  elif [ $nota -lt 9 ]
  then
    echo "Amb un $nota és un notable"
  else
    echo "Amb un $nota és un excelent"
  fi
done
exit 0
