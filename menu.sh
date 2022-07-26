#!/bin/bash

echo -----------------------------------------------------------------------------
echo ------------------------------------MENU-------------------------------------
echo -----------------------------------------------------------------------------

echo 1_ statsWords
echo 2_ statsUsageWords
echo 3_ findNames
echo 4_ statsSentences
echo 5_ blankLinesCounter
echo 6_ caseConverter
echo 7_ substringReplace
echo 8_ blockSelection
echo 9_ palindromeDetection

PS3="Please select the script to run: "
SCRIPTS=("statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "caseConverter" "substringReplace" "blockSelection" "palindromeDetection")

select scr in  "${SCRIPTS[@]}" Quit
do
    case $scr in
        "1")
           echo "$scr - is statsWords";;
        "2")
           echo "$scr - is statsUsageWords";;
        "3")
           echo "$scr - is findNames";;
   	"4")
	   echo "$scr - is statsSentences";;
	"5")
           echo "$scr - is blankLinesCounter";;
	"6")
	   echo "$scr - is caseConverter";;
	"7")
	   echo "$scr - is substringReplace";;
	"8")
           echo "$scr - is blockSelection";;
	"9")
	   echo "$scr - is palindromeDetection";;
   	"Quit")
           echo "We're done"
           break;;
        *)
           echo "Ooops";;
    esac
done
