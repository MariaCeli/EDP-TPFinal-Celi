PROPERNAMES=()

while read line; do
    for word in $line; 
    do
        THISNAME=$word
        if [ $word == ${THISNAME^} ]
        then
        PROPERNAMES+=($THISNAME)
        fi
    done
done <"EDP-TPFinal-Celi/parsableText.txt"

echo "-------------------------------------------------"
echo "NOMBRES PROPIOS"
for name in "${PROPERNAMES[@]}"; do
    echo "$name"
done
