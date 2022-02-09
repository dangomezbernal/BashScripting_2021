#! /bin/bash
# isx47327409 ASXIX M01
# 03-02-2022
# Valida si un alumne está aprobat o suspés
# $ prog nota
#-------------------------------
# 1) Validem arguments

if [ $# -ne 1 ]
then
  echo "Error: numero d'arguments incorrecte"
  echo "Usage : $0 nota"
  exit 1
fi

  
# 2) Validem rang de la nota
nota=$1
if [ $nota -lt 0 -o $nota -gt 10 ]
then
  echo "Error: la nota que has introduït ($nota) ha d'estar entre el 0 i el 10"
  echo "Usage: $0 nota"	
  exit 1
fi

# 3) Xixa 
if [ $nota -ge 5 ]
then 
  echo "Amb un $nota està aprovat"
else
  echo "Amb un $nota està suspès"
fi
exit 0
