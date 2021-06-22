#!/usr/bin/env bash


clear

na="\e[1;36m" 
red="\e[0;31m" 
ble="\e[0;34m"
bld="\e[1;34m"
nt="\e[0m"


echo "YTSenpai" | figlet
echo ""
echo -e "${red}Youtube Downloader${nt}"
echo ""
date
echo -e "${na}Artemis - Tegalsec${nt} "
dirvid="Mp4"
diraud="Mp3"
echo -e "${bld}
0. Install Requerement
1. Mp3
2. Mp4
3. Exit${nt}
 "
read -p "Artemis@Senpai:#~ " select
if [ $select == 0 ]; 
    then
    sudo apt install youtube-dl
elif [ $select == 1 ]; 
    then
        read -p "Input Url : " input
        echo ""

        Mp3="-o $diraud/%(tittle)s.%(ext)s"
            youtube-dl -x --ignore-errors --continue --extract-audio --audio-format mp3 $Mp3 $input
    
elif [ $select == 2 ]; 
    then
        read -p "Input Url :" input
        echo ""
        
        Mp4="-o $dirvid/%(tittle)s.%(ext)s"
            youtube-dl --ignore-errors --continue -f mp4 $Mp4 $input
  
elif [ $select == 3 ];
    then 
        echo "Bye!!!"
fi
