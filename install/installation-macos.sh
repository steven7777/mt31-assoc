# Pour Mac OS recent (10.10, Yosemite), la syntaxe du SED est differente
# Il faut donc transformer les instructions sed a l'interieur des fichiers bash

# USAGE: ./installation-macos.sh

macosfile=installation.macos.temp.sh
cp INSTALL $macosfile
#exit

sed -e "s/ -i / -i '' /" -i '' $macosfile
##sed -e "s/PANIC_MODE linux/PANIC_MODE macos/" -i '' $macosfile

#exit

chmod +x $macosfile
./$macosfile

#rm -f $macosfile
