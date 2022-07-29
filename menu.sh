#!/bin/bash

echo -----------------------------------------------------------------------------
echo ------------------------------------MENU-------------------------------------
echo -----------------------------------------------------------------------------

<<<<<<< HEAD

PS3="Please select the script to run: "
SCRIPTS=("statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "caseConverter" "substringReplace" "blockSelection" "palindromeDetection")

=======
PS3="Please select the script to run: "
SCRIPTS=("statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "caseConverter" "substringReplace" "blockSelection" "palindromeDetection")


>>>>>>> palindromeDetection
select scr in  "${SCRIPTS[@]}" Quit
do
    case  $scr in
        "statsWords")
           echo "$scr - is statsWords";;
        "statsUsageWords")
           echo "$scr - is statsUsageWords";;
        "findNames")
           echo "$scr - is findNames";;
<<<<<<< HEAD
   	"statsSentences")
	   echo "$scr - is statsSentences";;
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
=======
        "statsSentences")
           echo "$scr - is statsSentences";;
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
>>>>>>> palindromeDetection
           echo "We're done"
           break;;
        *)
           echo "Ooops";;
    esac
done
<<<<<<< HEAD
=======

>>>>>>> palindromeDetection
