#!/bin/bash
echo "Portfolio 2 : Using regex in scripts"
echo "Name: Sanoj Withanage"
echo "Task 3"
#using [[:alnum:]] as regrex to select digits and letters,
#selecting final words from word "Red" 
#grapping 100 or more which are after 3rd word
grep -e '[[:alnum:]]\{3\},' rectangle.txt | grep -v "100" | grep -e "Red$"
