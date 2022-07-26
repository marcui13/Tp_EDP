#!/bin/bash

echo -----------------------------------------------------------------------------
echo ------------------------------------MENU-------------------------------------
echo -----------------------------------------------------------------------------


PS3="Please select the script to run: "
SCRIPTS=("statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "caseConverter" "substringReplace" "blockSelection" "palindromeDetection")
NUMS=("1" "2" "3" "4" "5" "6" "7" "8" "9")

select scr in  "${SCRIPTS[@]}" Quit
do
    case  $scr in
        "statsWords")
           echo "$scr - is statsWords";;
        "statsUsageWords")
           echo "$scr - is statsUsageWords";;
        "findNames")
           echo "$scr - is findNames";;
   	"statsSentences")
	   echo "$scr - is statsSentences";;
	"blankLinesCounter")
           echo "$scr - is blankLinesCounter";;
	"caseConverter")
	   echo "$scr - is caseConverter";;
	"substringReplace")
	   echo "$scr - is substringReplace";;
	"blockSelection")
           echo "$scr - is blockSelection";;
	"palindromeDetection")
	   echo "$scr - is palindromeDetection";;
   	"Quit")
           echo "We're done"
           break;;
        *)
           echo "Ooops";;
    esac
done
