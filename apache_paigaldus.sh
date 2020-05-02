#apache paigaldusskript
APACHE2=$(dpkg-query -W -f='${Status}' apache2 2>/dev/null | grep -c 'ok installed')
#kui apache2 muutuja väärtus võrdub 0-ga
if [ $APACHE2 -eq 0 ]; then
        #siis ok installed ei leitud
        #paigaldame teenuse
        echo "Paigaldame apache2"
        apt install apache2
        echo "Apache2 on paigaldatud"
        #kui apache2 muutuja väärtus võrdub 1-ga
elif [ $APACHE2 -eq 1 ]; then
        #siis on ok installed 1 leitud
        echo "apache2 on juba paigaldatud"
        service apache2 start
        service apache2 status
#lõpetuse tinglause
fi
#lõpp
