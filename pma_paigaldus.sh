#phpmyadmin paigaldusskript
PMA=$(dpkg-query -W -f='${Status}' phpmyadmin 2>/dev/null | grep -c 'ok installed')
#kui php muutuja väärtus võrdub 0-ga
if [ $PMA -eq 0 ];then
#siis ok installed ei ole leitud
echo "Paigaldame phpmyadmin ja vajalikud lisad"
apt install phpmyadmin
elif [ $PMA -eq 1 ]; then
#siis on ok installed leitud 1 kord
echo "phpmyadmin on juba paigaldatud"
fi
#lõpp
