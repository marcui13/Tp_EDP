#!/bin/bash

echo -----------------------------------------------------------------------------
echo ------------------------------------MENU-------------------------------------
echo -----------------------------------------------------------------------------


PS3="Please select the script to run: "
SCRIPTS=("statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "caseConverter" "substringReplace" "blockSelection" "palindromeDetection")



select scr in  "${SCRIPTS[@]}" Quit
do
    case  $scr in
        "statsWords")
	   ./statsWords.sh $(cat lorem.txt)
	   ;;
        "statsUsageWords")
           ./statsUsageWords.sh
	   ;;
        "findNames")
           #PAL="ingrese la palabra a analizar: "
           #echo $PAL
           #read PAL
           ./findNames.sh $(cat lorem.txt)
           ;;
   	"statsSentences")
	   ./statsSentences.sh $(cat lorem.txt) 
	   ;;
	"blankLinesCounter")
           ./blankLinesCounter.sh lorem.txt
	   ;;
	"caseConverter")
	   echo "$scr - is caseConverter";;
	"substringReplace")
	   echo "$scr - is substringReplace";;
	"blockSelection")
           echo "$scr - is blockSelection";;
	"palindromeDetection")
  	   PAL="ingrese la palabra a analizar: "
           echo $PAL
           read PAL
           ./palindromeDetection.sh $PAL
           ;;
        "Quit")
           echo "We're done"
           break;;
        *)
           echo "Ooops";;
    esac
done
