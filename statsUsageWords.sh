declare -A WORDS
WORDS=()
TOP=()

while read line; do
    for word in $line; 
    do
        LENGTH=${#word}
        if [ $LENGTH -gt 4 ]
            then
                if [[ -v WORDS[$word] ]]
                    then
                    WORDS[$word]=$((WORDS[$word] + 1))
                    else
                    WORDS[$word]=1
                fi
        fi
    done
done <"EDP-TPFinal-Celi/parsableText.txt"

for k in "${!WORDS[@]}"
do
    TOP+=($k)
done

for (( i = 0; i < ${#TOP[@]} ; i++ ))
do
    for (( j = $i; j < ${#TOP[@]}; j++ ))
    do
        ielement=${TOP[$i]}
        jelement=${TOP[$j]}
        if [ ${WORDS[$ielement]} -lt  ${WORDS[$jelement]} ]; 
            then t=${TOP[$i]}
            TOP[$i]=${TOP[$j]}
            TOP[$j]=$t
        fi
    done
done

echo "-------------------------------------------------"
echo "TOP"
for k in "${!TOP[@]}"
do
    if [ $k -lt 10 ]
        then
        printf "%s\n" "$((k+1)). ${TOP[$k]}"
    fi
done
