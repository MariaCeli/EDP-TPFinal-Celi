LONGESTWORD=0
SHORTESTWORD=0
AVERAGE=0
COUNTER=0

while read line; do
    for word in $line; 
    do
        LENGTH=${#word}
        COUNTER=$((COUNTER+1))
        AVERAGE=$((AVERAGE+LENGTH))
        if [ $LENGTH -gt $LONGESTWORD ]
            then LONGESTWORD=$LENGTH
        fi
        if [ $SHORTESTWORD -eq 0 ]
            then SHORTESTWORD=$LENGTH
            elif [ $LENGTH -lt $SHORTESTWORD ]
            then SHORTESTWORD=$LENGTH
        fi
    done
done <"parsableText.txt"
echo "Average word length = '$((AVERAGE/COUNTER))'" 
echo "Longest word length = '$LONGESTWORD'"
echo "Shortest word length = '$SHORTESTWORD'"


