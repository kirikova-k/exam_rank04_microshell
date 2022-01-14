
echo "\033[0;35m⠄⠄⢀⠄⠄⠄⠄⠄⠄⠄⠄⠄⢠⣷⣄"
echo "⠄⠄⢸⣷⣦⡀⠄⠄⠄⣀⣀⣤⣿⣿⣿⣦⣀⣀⣀"
echo "⠄⠄⢸⣿⣿⣿⣶⣶⣿⠿⠛⠿⣿⣿⣿⣿⠛⠛⠻⣄            microshell_checker by"
echo "⠄⠄⢸⣿⣿⣿⣿⠏⠄⠄⠄⠄⠄⠉⠻⣿⠄⠄⠄⠈⠳⣄   ⢠⣴⠶⢶⣦⠀⠀⢀⡀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⢀⣶⡀⠀⣾⡇⣀⠀⠀⢀⣀⡀"
echo "⠄⠄⢸⣿⣿⣿⣿⠄⠄⠄⠄⠄⠄⠄⠄⠘⣆⠄⣀⠄⠄⠈⣆  ⣿⠁⠀⢀⣿⢀⣾⠋⢙⡿⠀⣨⡭⣽⡗⢀⣿⠛⠋⢹⡟⠉⢰⣿⠉⣿⡇⢀⣭⣭⣿⠇⢰⡟⠛⠃"
echo "⠄⠄⣼⣿⣿⣿⣿⠄⠄⢠⣤⡀⠄⠄⠄⠄⠸⣄⣿⣷⡄⠄⠸⡄ ⠻⠶⠶⠿⠋⠘⠿⠶⣾⠇⠸⠿⠤⠿⠃⠸⠟⠀⠀⠿⠧⠄⠾⠇⠀⠿⠀⠿⠧⠼⠿⠀⠾⠁"
echo "⠄⢀⣿⣿⣿⣿⣿⡄⠄⢸⣿⣿⡄⠄⠄⠄⠄⡟⢾⡿⠇⠄⠄⣷      ⠘⠓⠚⠋"
echo "⠄⢸⣿⣿⣿⣿⣿⣿⣄⠈⢿⣿⠇⠄⠄⠄⢀⡇⠄⣽⣿⣿⣿⣿"
echo "⢀⣿⣿⡟⠉⠉⠉⠙⠻⢷⣤⡀⠄⠄⠄⣠⠞⠄⠈⢿⣿⡿⢿⠇"
echo "⠈⠻⢿⣇⠄⠟⣷⣦⣀⡀⠄⠈⠉⠉⠉⠄⠄⠄⣀⡠⠄⠄⡜"
echo "⠄⠄⠐⠺⢦⡀⠙⡿⠿⢿⣷⣶⣶⣶⣶⣶⣶⣾⠏⠄⢀⠌"
echo "⠄⠄⠄⠄⠄⠉⠢⣈⠢⢄⠙⠙⢿⣿⣿⣿⠟⠉⡀⠔⠁"
echo "⠄⠄⠄⠄⠄⠄⠄⠄⠁⠒⠄⠄⠄⠭⠭⠄⠂⠉\033[0;37m"
gcc microshell.c -o microshell -Wall -Wextra -Werror
echo "~~~text in the file~~~" >> file.txt
echo "\033[1;36mTEST 1 :
 /bin/ls\033[0;37m"
./microshell /bin/ls
echo "\n\033[1;36mTEST 2 :
 /bin/cat file.txt "\|" /bin/cat -e\033[0;37m"
 ./microshell /bin/cat file.txt "|" /bin/cat -e
echo "\n\033[1;36mTEST 3 :
 /bin/cat file.txt\033[0;37m"
./microshell /bin/cat file.txt
echo "\n\033[1;36mTEST4 :
 /bin/ls microshell.c\033[0;37m"
./microshell /bin/ls microshell.c
echo "\n\033[1;36mTEST5 :
 /bin/ls salut\033[0;37m"
./microshell /bin/ls salut
echo "\n\033[1;36mTEST6 :
 "\;"\033[0;37m"
./microshell ";"
echo "\n\033[1;36mTEST7 :
 "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;"\033[0;37m"
./microshell ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";"
echo "\n\033[1;36mTEST8 :
 "\;" "\;" /bin/echo OK:\033[0;37m"
./microshell ";" ";" /bin/echo OK
echo "\n\033[1;36mTEST9 :
 "\;" "\;" /bin/echo OK "\;":\033[0;37m"
 echo "\n\033[1;36mTEST10 :
 "\;" "\;" /bin/echo OK "\;" /bin/echo OK:\033[0;37m"
./microshell ";" ";" /bin/echo OK ";"
 echo "\n\033[1;36mTEST11 :
 "\;" "\;" /bin/echo OK "\;" "\;" /bin/echo OK\033[0;37m"
./microshell ";" ";" /bin/echo OK ";" ";"
echo "\n\033[1;36mTEST12 :
 "\;" "\;" /bin/echo OK "\;" "\;" "\;" /bin/echo OK\033[0;37m"
./microshell ";" ";" /bin/echo OK ";" ";" ";" /bin/echo OK
echo "\n\033[1;36mTEST13 :
 /bin/ls "\|" /usr/bin/grep microshell\033[0;37m"
./microshell /bin/ls "|" /usr/bin/grep microshell
echo "\n\033[1;36mTEST14 :
 /bin/ls "\|" /usr/bin/grep microshell "\|" /usr/bin/grep micro\033[0;37m"
./microshell /bin/ls "|" /usr/bin/grep microshell "|" /usr/bin/grep micro
echo "\n\033[1;36mTEST15 :
 /bin/ls "\|" /usr/bin/grep microshell "\|" /usr/bin/grep micro "\|" /usr/bin/grep shell "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell "\|" /usr/bin/grep shell\033[0;37m"
./microshell /bin/ls "|" /usr/bin/grep microshell "|" /usr/bin/grep micro "|" /usr/bin/grep shell "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro
echo "\n\033[1;36mTEST16 :
 /bin/ls "\|" /usr/bin/grep microshell "\|" /usr/bin/grep micro "\|" /usr/bin/grep shell "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro "\|" /usr/bin/grep micro\033[0;37m"
./microshell /bin/ls "|" /usr/bin/grep microshell "|" /usr/bin/grep micro "|" /usr/bin/grep shell "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep micro "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell "|" /usr/bin/grep shell
echo "\n\033[1;36mTEST17 :
 /bin/ls ewqew "\|" /usr/bin/grep micro "\|" /bin/cat -n "\;" /bin/echo dernier "\;" /bin/echo\033[0;37m"
./microshell /bin/ls ewqew "|" /usr/bin/grep micro "|" /bin/cat -n ";" /bin/echo dernier ";" /bin/echo
echo "\n\033[1;36mTEST18 :
 /bin/ls "\|" /usr/bin/grep micro "\|" /bin/cat -n "\;" /bin/echo dernier "\;" /bin/echo ftest "\;"\033[0;37m"
./microshell /bin/ls "|" /usr/bin/grep micro "|" /bin/cat -n ";" /bin/echo dernier ";" /bin/echo ftest ";"
echo "\n\033[1;36mTEST19 :
 /bin/echo ftest "\;" /bin/echo ftewerwerwerst "\;" /bin/echo werwerwer "\;" /bin/echo qweqweqweqew "\;" /bin/echo qwewqeqrtregrfyukui "\;"\033[0;37m"
./microshell /bin/echo ftest ";" /bin/echo ftewerwerwerst ";" /bin/echo werwerwer ";" /bin/echo qweqweqweqew ";" /bin/echo qwewqeqrtregrfyukui ";"
echo "\n\033[1;36mTEST20 :
 /bin/ls ftest "\;" /bin/ls "\;" /bin/ls werwer "\;" /bin/ls microshell.c "\;" /bin/ls subject.fr.txt "\;"\033[0;37m"
./microshell /bin/ls ftest ";" /bin/ls ";" /bin/ls werwer ";" /bin/ls microshell.c ";" /bin/ls subject.fr.txt ";"
echo "\n\033[1;36mTEST21 :
 /bin/ls ewqew "\|" /usr/bin/grep micro "\|" /bin/cat -n "\;" /bin/echo dernier "\;" /bin/echo\033[0;37m"
./microshell /bin/ls ewqew "|" /usr/bin/grep micro "|" /bin/cat -n ";" /bin/echo dernier ";" /bin/echo
echo "\n\033[1;36mTEST22 :
 /bin/ls "\|" /usr/bin/grep micro "\;" /bin/ls "\|" /usr/bin/grep micro "\;" /bin/ls "\|" /usr/bin/grep micro "\;" /bin/ls "\|" /usr/bin/grep micro "\;"\033[0;37m"
./microshell /bin/ls "|" /usr/bin/grep micro ";" /bin/ls "|" /usr/bin/grep micro ";" /bin/ls "|" /usr/bin/grep micro ";" /bin/ls "|" /usr/bin/grep micro ";"
echo "\n\033[1;36mTEST23 :
 /bin/cat file.txt "\|" /usr/bin/grep a "\|" /usr/bin/grep b "\;" /bin/cat file.txt "\;"\033[0;37m"
./microshell /bin/cat file.txt "|" /usr/bin/grep a "|" /usr/bin/grep b ";" /bin/cat file.txt ";"
echo "\n\033[1;36mTEST24 :
 /bin/cat file.txt "\|" /usr/bin/grep a "\|" /usr/bin/grep w "\;" /bin/cat file.txt "\;"\033[0;37m"
./microshell /bin/cat file.txt "|" /usr/bin/grep a "|" /usr/bin/grep w ";" /bin/cat file.txt ";"
echo "\n\033[1;36mTEST25 :
 /bin/cat file.txt "\|" /usr/bin/grep a "\|" /usr/bin/grep w "\;" /bin/cat file.txt\033[0;37m"
./microshell /bin/cat file.txt "|" /usr/bin/grep a "|" /usr/bin/grep w ";" /bin/cat file.txt
echo "\n\033[1;36mTEST26 :
 /bin/cat file.txt "\;" /bin/cat file.txt "\|" /usr/bin/grep a "\|" /usr/bin/grep b "\|" /usr/bin/grep z "\;" /bin/cat file.txt\033[0;37m"
./microshell /bin/cat file.txt ";" /bin/cat file.txt "|" /usr/bin/grep a "|" /usr/bin/grep b "|" /usr/bin/grep z ";" /bin/cat file.txt
echo "\n\033[1;36mTEST27 :
 "\;" /bin/cat file.txt "\;" /bin/cat file.txt "\|" /usr/bin/grep a "\|" /usr/bin/grep b "\|" /usr/bin/grep z "\;" /bin/cat file.txt\033[0;37m"
./microshell ";" /bin/cat file.txt ";" /bin/cat file.txt "|" /usr/bin/grep a "|" /usr/bin/grep b "|" /usr/bin/grep z ";" /bin/cat file.txt
echo "\n\033[1;36mTEST28 :
 blah "\|" /bin/echo OK\033[0;37m"
./microshell blah "|" /bin/echo OK
echo "\n\033[1;36mTEST29 :
 blah "\|" /bin/echo OK "\;"\033[0;37m"
./microshell blah "|" /bin/echo OK ";"
echo "\n\033[1;36mTEST30 :
 "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" blah "\|" /bin/echo OK "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;" "\;"\033[0;37m"
./microshell ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" blah "|" /bin/echo OK ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";" ";"
rm file.txt
