#!/usr/bin/gawk
#GNU Awk 4.1.1
# report total number of HTTP response codes in last 2min from nginx logfile
# unix time is involved
# awk is amazingly terse and powerful but sometimes inflexible, it shreds this problem
#gawk -vx=$(date +%s) '$4 > (x-120) {print $9}' sam2|sort|uniq -c
gawk '$4 > 1402076280 {print $9}' sample-proxy-log-1.txt |sort |uniq -c 
