LONGESTSENTENCE=0
SHORTESTSENTENCE=0
AVERAGE=0
SENTENCELENGTH=0
COUNTER=0
TOTALSENTENCELENGTH=0

while read line; do
    for word in $line; 
    do
        
        THISWORD=$word
        WORDLENGTH=${#THISWORD}  
        AVERAGE=$((AVERAGE+WORDLENGTH))
        FINALPOINT="."
        FINALWORD=${THISWORD%?}
        FINALWORDLENGTH=${#FINALWORD} 
        if [ $FINALWORD$FINALPOINT != $THISWORD ]
            then SENTENCELENGTH=$((SENTENCELENGTH+WORDLENGTH))
            else 
            TOTALSENTENCELENGTH=$((SENTENCELENGTH+FINALWORDLENGTH))
            SENTENCELENGTH=0
            COUNTER=$((COUNTER+1))
        fi
        if [ $TOTALSENTENCELENGTH -gt $LONGESTSENTENCE ]
            then LONGESTSENTENCE=$TOTALSENTENCELENGTH
        fi
        if [ $SHORTESTSENTENCE -eq 0 ]
            then SHORTESTSENTENCE=$TOTALSENTENCELENGTH
            elif [ $TOTALSENTENCELENGTH -lt $SHORTESTSENTENCE ]
            then SHORTESTSENTENCE=$TOTALSENTENCELENGTH
        fi
        
    done
done <"EDP-TPFinal-Celi/parsableText.txt"
echo "Average sentence length = '$((AVERAGE/COUNTER))'" 
echo "Longest sentence length = '$LONGESTSENTENCE'"
echo "Shortest sentence length = '$SHORTESTSENTENCE'"
