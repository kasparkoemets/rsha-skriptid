#php paigaldusskript
PHP=$(dpkg-query -W -f='${Status}' php7.0 2>/dev/null |grep -c 'ok installed')
#kui php muutuja väärtus võrdub 0-ga
if [ $PHP -eq 0 ]; then
#siis ok installed ei leitud
#paigaldame teenuse
echo "Paigaldame php ja vajalikud lisad"
apt install php7.0 libapache2-mod-php7.0 php7.0-mysql
echo "Php on paigaldatud"
#kui PHP muutuja väärtus võrdub 1-ga
elif [ $PHP -eq 1 ]; then
#ssiis ok installed on leitud 1 kord
echo "php on juba paigaldatud"
which php
#lõpetuse tinglause
fi
#lõpp
