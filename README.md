Documentación

El objetivo del proyecto es brindar una serie de herramientas para análisis de texto.

Cada herramienta proporcionada en los scripts (statsWords.sh, statsSentences.sh, main.sh, findNames.sh y blankLinesCounter.sh) trabaja leyendo el texto proporcionado en el archivo de texto parsableText.txt. Por lo que si se desea analizar un texto diferente, será necesario actualizar este archivo. 

Para ejecutar el contenedor docker y acceder a la completitud del menú de aplicaciones se deberá tener acceso al repositorio ... e ingresar a la página https://labs.play-with-docker.com/ donde ejecutaremos nuestro contenedor Dockerfile. Para ello, ejecutaremos los siguientes comandos en la terminal brindada por la página: 

touch dockerfile (creación del archivo dockerfile) // aquí, se nos abrirá el editor, donde construiremos nuestra imagen ingresando lo siguiente en él : 

FROM ubuntu
RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/MariaCeli/EDP-TPFinal-Celi
RUN bash EDP-TPFinal-Celi/main.sh

Luego, seguimos corriendo los siguientes comandos en la terminal: 

docker build -t [nombre] . (construcción del archivo dockerfile con su respectivo nombre)

docker run -it [nombre] (corremos el archivo)

Una vez ya accedido al contenedor, se podrá visualizar un menú con las diferentes opciones de análisisde texto * inserte imagen* el nombre de cada opción es descriptivo de su funcionalidad. 

La primera 1) opción nos devolverá aquella palabra más corta, más larga y un promedio de todas las palabras. 
La segunda 2) opción nos devolverá un top 10 de las palabras más usadas ordenadas de menor (más apariciones) a mayor (menos apariciones).
La tercera 3) opción nos devolverá una lista con las palabras comezadas con mayúscula en el texto. 
La cuarta 4) opción nos devolverá la oración más corta, la más larga y un promedio de longitud de oraciones. 
La quinta 5) opción nos devolverá un número indicando la cantidad de líneas en blanco que tiene nuestro texto.
Por último, la sexta 6) opción es para salir del programa. El programa pedirá opciones de análisis de texto hast que el usuario elija la opción de salir del programa.

***La elección del método de ejecución en la página playDocker se debe a la falta de recursos de la máquina host del proyecto, la aplicación puede ser montada en el docker mediante una máquina virtual, docker desde Windows o Windows Subsistem for Linux, etc.***