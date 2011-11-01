#!/bin/bash


rm -f latest.html
echo "<table>" > latest.html


exec 10<./ep.rc

while read LINE <&10; do     
	   ./ep.py "$LINE" | head -n 1
done | sort >> latest.html

echo "</table>" >> latest.html

lynx latest.html
