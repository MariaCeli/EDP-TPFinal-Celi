while true 
do
PS3="Elige tu opción: "
opciones=("Indicador estadístico de longitud de palabras" 
          "Indicador estadístico de uso de palabras" 
          "Identificación de nombres propios" 
          "Indicador estadístico de longitud de oraciones" 
          "Contador de líneas en blanco"
          "salir")


select opt in "${opciones[@]}"
do
    case $opt in 

        "Indicador estadístico de longitud de palabras") bash EDP-TPFinal-Celi/statsWords.sh; break
        ;;

        "Indicador estadístico de uso de palabras") bash EDP-TPFinal-Celi/statsUsageWords.sh; break
        ;;

        "Identificación de nombres propios") bash EDP-TPFinal-Celi/findNames.sh; break
        ;;

        "Indicador estadístico de longitud de oraciones") bash EDP-TPFinal-Celi/statsSentences.sh; break
        ;;

        "Contador de líneas en blanco") bash EDP-TPFinal-Celi/blankLinesCounter.sh; break
        ;;

        "salir") break 2
        ;;
        *) echo "Opcion no válida."
    esac
done
done
