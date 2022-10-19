#! /bin/bash
var1=$(grep -c 'session opened for user hades' /var/log/auth.log)
echo $var1 >> number_connection-`date +%d-%m-%Y-%H:%M`.txt
mv "number_connection-`date +%d-%m-%Y-%H:%M`.txt" "Backup" | tar -cvzf "number_connection-`date +%d-%m-%Y-%H:%M`.txt.tar.gz" number_connection-`date +%d-%m-%Y-%H:%M`.txt
