#!/bin/sh
#
# Taken from http://www.drjunior.net/?q=node/15

totalmethods=0
for jar in `find . -type f -name "*.jar"`; do
echo $jar
dx --dex --output=temp.dex $jar 2> /dev/null
jarmethods=$(cat temp.dex | head -c 92 | tail -c 4 | hexdump -e '1/4 "%d\n"')
echo $jarmethods
totalmethods=$(($a+$totalmethods))
echo $totalmethods
done
