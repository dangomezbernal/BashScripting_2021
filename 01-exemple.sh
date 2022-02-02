#! /bin/bash
# @dangomezbernal ASIX-M01
# Febrer 2022
#
# Exemple de primer programa
# Normes:
#    shebang
#    capçalera: descripció, data, autor
#---------------------------------------
# es pot fer tot allò que es fa a la línia
# de comandes

echo "Hello Isaac"
nom='Isaac Gordillo Martinez'
edat=-3
echo $nom $edat
echo -e "nom: $nom\n edat: $edat\n"
echo -e 'nom: $nom\n edat: $edat\n'
uname -a
uptime
echo $SHLVL
echo $SHELL
echo $((4*32))
echo $((edat*3))
read data1 data2
echo -e "$data1 \n $data2"
exit 0
