# MS-DOS Mode
Un programa que te modifica el registro para arrancar CMD en la pantalla de inicio. Inspirado por @Endermanch.
MS-DOS Mode
Modo de Windows




Índice de Capítulos:
1	 Bienvenido: Pg 2


2		Instalación: Pg 2-3 


3.1	Usos prácticos: Pg 4
3.2 Cosas que no se pueden hacer Pg 5

4	Volver a Windows: Pg 4
















1.	Bienvenido   

Gracias por adquirir una copia
de GitHub Gratuita y completa
de “MS-DOS Mode”. El “MS-DOS Mode” es un modo que está “exclusivamente” en la instalación, y que modificando el registro del sistema se puede acceder.



2.	Instalación




Para iniciar en “Modo MS-DOS” Tienes que ejecutar MSDOS_CreateEnvironment.exe como administrador y te saldrá una pantalla parecida a esta:

Haz clic en Disclaimer y te aparecerá lo siguiente:

Entonces aparecerá un botón que dirá Empezar:




Si pulsas ese botón, entonces aparecerá la siguiente ventana:

Pulsa cualquier tecla para seguir al siguiente paso




Te dirá esto:


Pulsa la tecla “S” si quiere que su sistema “MS-DOS” se le instale bien.

Al pulsar la tecla esa, te dirá lo siguiente:

Reinicia el ordenador, y cuando esté iniciando saldrá esta pantalla:


En ese momento lo habrás conseguido.



3.1	 Usos prácticos.

Ya estando en ese modo, podrás modificar todos los archivos que quieras sin permisos de administrador (Por que estás en la cuenta “SYSTEM”). También ten cuidado a los archivos que modifiques por que tu sistema puede dejar de funcionar (Si eso pasa, tendrás que tener un USB o un disco de instalación del sistema y reinstalar el sistema operativo).

Puedes usar este modo como emergencias ante un virus, por ejemplo, puedes usar el comando rstrui.exe para abrir restaurar sistema.

También puedes usar sfc /SCANNOW para reparar archivos del sistema corruptos.

También puedes editar archivos usando el bloc de notas, ejecutando Notepad.exe

Puedes modificar todos los registros sin que te diga “(Usuario) Está usando ese registro actualmente” o similares. Pero si lo haces, ten cuidado no vayas a destruir el sistema por un registro

Puedes crear usuarios también sin permisos. Para ello tendrás que usar net user /add “Nombre” y net user “Nombre” * (Solo si quiere ponerle contraseña).

Puedes usar BootIce, una herramienta de terceros que viene incluida en este programa, para modificar el MBR, PBR, Sectores del disco duro, rellenar el disco de Bytes de los caracteres que elijas, etc.






3.2 Cosas que no se pueden hacer
 

Una de las cosas que no se puede hacer es navegar por el internet, aunque marques la ruta de un navegador (Por ejemplo C:\Program Files\Google\Chrome\Application\chrome.exe Te abrirá Google Chrome, pero no podrás navegar por internet, igual que con otros navegadores como Microsoft Edge, tampoco funcionarán.

En este modo si estás en Windows 10, podrás abrir la barra de tareas, aunque no sirva de mucho por que no abre el menú inicio, en cambio si lo haces con Windows 11, no te abre la barra de tareas (Explorer.exe)

Si tu reinicias el sistema usando reboot (Comando creado por esto en C:\Reboot.bat), te reinicia el sistema en una versión inestable no recomendada y solo para testeos
Ese modo es cómo Windows normal pero cómo si no se hubiera instalado correctamente (Sólo en Windows 10/11. En otros sistemas más viejos te dirá que no se ha instalado correctamente y tendrás que recurrir a usar el truco del sethc.exe y cmd.exe para abrir C:\win.bat desde ese mensaje).
Para salir de ese modo de Windows inestable, tendrás que hacer un Win+R y ejecutar cmd.exe, después tendrás que viajar a C:\ y encontrar win.bat, ejecútalo y Windows volverá a la normalidad.









4. Volver a Windows




Si desea volver a Windows, vete a C:\ y escribe “win”. Empezarán a escribirse varias líneas y se te reiniciará el sistema a Windows (de 3 a 8 segundos) Si no se reinicia, reinícialo dejando pulsado el botón de arranque unos segundos y vuélvelo a dar.

Entonces se iniciará con la pantalla de inicio de tu sistema operativo y ya no saldrá la pantalla de arranque con el CMD.
