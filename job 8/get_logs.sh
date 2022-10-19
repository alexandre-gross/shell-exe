#! /bin/bash
var1=$(grep -c 'session opened for user hades' /var/log/auth.log)
echo $var1 >> number_connection-`date +%d-%m-%Y-%H:%M`.txt

tar -cvf "number_connection-`date +%d-%m-%Y-%H:%M`.txt .tar.gz" /home/shell-exe/job 8/number_connection-`date +%d-%m-%Y-%H:%M`.txt | mv -i "number_connection-`date +%d-%m-%Y-%H:%M`" "Backup"
