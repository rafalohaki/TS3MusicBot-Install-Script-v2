#!/bin/bash
#Printing some basic information
clear
echo "~---------- !This is no official script! ----------~"
echo "  ________________ __  ___           _      ____        __ "
echo " /_  __/ ___/__  //  |/  /_  _______(_)____/ __ )____  / /_"
echo "  / /  \__ \ /_ </ /|_/ / / / / ___/ / ___/ __  / __ \/ __/"
echo " / /  ___/ /__/ / /  / / /_/ (__  ) / /__/ /_/ / /_/ / /_  "
echo "/_/  /____/____/_/  /_/\__,_/____/_/\___/_____/\____/\__/  "
echo ""
echo "TS3MusicBot-Support: www.forum.ts3musicbot.net"
echo ""
echo "~--------------------------------------------------~"
echo ""

#Start of the script
echo "Welcome to the TS3MusicBot install-script!"

#Language selection
read -p "Please choose your language [EN]glish [ger]man: "
if [ "$REPLY" = "ger" ]
	then
		source locale/ger.txt
	else
		source locale/en.txt
fi
echo "$t01"

#Checking for root
echo "$t02"
if [ "$USER" = "root" ]
	then
		root="1"
		echo "$t03"
	else
		root="0"
		echo "$t04"
		exit
fi

#Checking for Java
echo "$t05"
if type -p java
	then
		echo "$t06"
		_java=java
		elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
		echo "$t06"
		_java="$JAVA_HOME/bin/java"
	else
		echo "$t07"
		apt-get install openjdk-7-jre -y > /dev/null
fi

#Downloading TS3MusicBot
echo "$t08"
wget -q http://download1.ts3musicbot.net/TS3MusicBot_v4.5.tar
echo "$t09"
tar xfv TS3MusicBot_v4.5.tar > /dev/null
echo "$t10"
rm TS3MusicBot_v4.5.tar > /dev/null

#Installing Bot(s)
read -p "$t11"
if [ "$REPLY" = "1" ]
	then
		cnt=1
elif [ "$REPLY" = "2" ]
	then
		cnt=2
		mv TS3MusicBot TS3MusicBot0
		cp TS3MusicBot0 -R TS3MusicBot1
		elif [ "$REPLY" = "3" ]
		then
		cnt=3
		mv TS3MusicBot TS3MusicBot0
		cp TS3MusicBot0 -R TS3MusicBot1
		cp TS3MusicBot0 -R TS3MusicBot2
	else
		exit
fi

echo "$t12"

#read -p "$13"
