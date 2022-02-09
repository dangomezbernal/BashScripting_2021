#! /bin/bash
# isx47327409 ASXIX M01
# 03-02-2022
# Exemple if: indica si és major d'edat
# $ prog edat
#-------------------------------
# 1) Validem arguments

if [ $# -ne 1 ]
then
   echo "Error: numero d'arguments incorrecte"
   echo "Usage : $0 edat"
   exit 1
fi

#2) Xixa
edat=$1
if [ $edat -ge 18 ]
then
   echo "edat $edat és major d'edat"
else
   echo "edat $edat és menor d'edat"
fi
exit 0


