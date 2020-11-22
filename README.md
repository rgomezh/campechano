# CAMPECHANO


* Africa Jorda
* Andoni Azkonobieta
* Antonio González
* Carlos Espejo
* Raul Gomez

### EJERCICIOS SHELL 
1. OBTENER LA INFORMACIÓN (PERMISSIONS, SIZE, MODIFICATION DATE ETC.) SOBRE EL ARCHIVO MÁS GRANDE DE LA CARPETA OPENTRAVELDATA .
2. OBTENER CUÁNTAS PALABRAS CONTIENEN LAS 5 PRIMERAS LÍNEAS DEL ARCHIVO FINN.TXT.
3. IMPRIMIR LAS 3 PRIMERAS LINEAS DE TEXT_EXAMPLE.TXT CON EL NÚMERO DE LÍNEA DELANTE..
4. USE TEXT_EXAMPLE.TXT TO GENERATE A NEW FILE WITH THE SAME CONTENT BUT WITH LINE NUMBER AT THE BEGINNING OF EACH LINE.
5. GENERAR UN ARCHIVO QUE CONTENGA :
	5.1. LINEA 1: #!/BIN/BASH
	5.2. LINEA 2: EL NOMBRE DEL USUARIO Y LA FECHA EN EL MOMENTO DE LA CREACIÓN.
6. (BONUS) ESCRIBIR UN SCRIPT DE BASH QUE PREGUNTE LA EDAD AL USUARIO Y LE DEVUELVA UN MENSAJE ORIGINAL SOBRE LO QUE LE OCURRIRÁ
CUANDO CUMPLA SU EDAD + 5.

### SHELL II

1. Desarrollaréis un código para hackear los repos de los otros equipos y comparar vuestros resultados.
2. Vuestro script (que llamaréis “test_hacker.sh”) tiene que hacer lo siguiente:
	2.1. Crear una carpeta nueva llamada “ref_repo”
	2.2. Hacer un git clone del repo del equipo que hayáis elegido como input del script dentro de la carpeta ref_repo.
3. Compara el contenido de todos vuestros archivos *.out con los *.out del repo_ref.
4. Guardar todas las diferencias encontradas entre los resultados en una carpeta llamada ”diff”.
5. Comprobar el contenido de la carpeta ”diff” y mostrar por la consola un mensaje detallando las
diferencias encontradas (o la ausencia de ellas) (Importante: leer EJEMPLO y TIPS atentamente)
6. Borrar el contenido de la carpeta “ref_repo” y “diff”.
7. Poder repetir esto con el repo de otro equipo.Input: ./test_hacker.sh “equipo_confinados”
	Output:
	Tras hackear el repo del equipo ”equipo_confinados”, es
	Ejercicio 001 es igual.
	Ejercicio 002 es igual.
	Ejercicio 003 NO es igual.
	Ejercicio 004 es igual.
	Ejercicio 005 está VACÍO.
	Ejercicio 006 es igual.
