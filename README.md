# Documentación
## Objetivos
El objetivo del proyecto es brindar una serie de herramientas para análisis de texto.

Cada herramienta proporcionada en los scripts (statsWords.sh, statsSentences.sh, main.sh, findNames.sh y blankLinesCounter.sh) trabaja leyendo el texto proporcionado en el archivo de texto parsableText.txt. Por lo que si se desea analizar un texto diferente, será necesario actualizar este archivo. 

## Ejecución en play with docker
Para ejecutar el contenedor docker y acceder a la completitud del menú de aplicaciones se deberá tener acceso al repositorio ... e ingresar a la página https://labs.play-with-docker.com/ donde ejecutaremos nuestro contenedor Dockerfile. Para ello, ejecutaremos los siguientes comandos en la terminal brindada por la página: 

```shell
touch dockerfile

```
Una vez creado el dockerfile debemos ingresarle(también se encuentra disponible en este repositorio) : 
```dockerfile
FROM ubuntu

SHELL ["/bin/bash", "-c"]

RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/MariaCeli/EDP-TPFinal-Celi

ENTRYPOINT [ "bash", "EDP-TPFinal-Celi/main.sh" ]
```

Luego, para crear la imágen: 

```shell
docker build -t [nombre] .
```
donde [nombre] es el nombre que queremos darle a la imágen.
Finalmente para correr el docker usamos el comando:

```shell
docker run -it [nombre]
```
## Funcionalidad

Una vez ya accedido al contenedor, se podrá visualizar un menú con las diferentes opciones de análisisde texto, el nombre de cada opción es descriptivo de su funcionalidad. 

1. Esta opción opción nos devolverá aquella palabra más corta, más larga y un promedio de todas las palabras. 
2. Esta opción nos devolverá un top 10 de las palabras más usadas ordenadas de menor (más apariciones) a mayor (menos apariciones).
3. Esta opción nos devolverá una lista con las palabras comezadas con mayúscula en el texto. 
4. Esta opción nos devolverá la oración más corta, la más larga y un promedio de longitud de oraciones. 
5. Esta opción nos devolverá un número indicando la cantidad de líneas en blanco que tiene nuestro texto.
6. Esta opción es para salir del programa. El programa pedirá opciones de análisis de texto hast que el usuario elija la opción de salir del programa.

***La elección del método de ejecución en la página playDocker se debe a la falta de recursos de la máquina host del proyecto, la aplicación puede ser montada en el docker mediante una máquina virtual, docker desde Windows o Windows Subsistem for Linux, etc.***
