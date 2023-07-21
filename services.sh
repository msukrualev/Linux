#! /bin/bash

# ---------------------- Services 


service --status-all 
sudo systemctl status <service>
start - stop - enable - disable -restart 

sudo service ufw stop/status 


## Processes

Olusan her bir process kendine ait pir pid:processid ile numaralandirilir
kendisini olusturan processin id si ppid:parentprocessid olarak tutulur

Her process pid
            uid: baslatan kullanici
            ppid:

ps -f ppid lerle gosterir 

processlerle ilgili yarimci komutlar 

*htop  

ps
topclear
kill
killall
bg
fg
pidof
pgrep
pstree
fork
getpid
getppid
exec
wait
pipe
dup
open
close
read
write
last
lastcomm