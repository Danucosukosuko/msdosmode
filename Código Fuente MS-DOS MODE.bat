@echo off
echo off
echo off
@echo off

cls

echo =================================================================
echo --Modo MS-DOS--
echo --Creado por Danucosukosuko: https://github.com/danucosukosuko--
echo =================================================================
echo.
echo.
echo Cargando...
echo.
ping localhost -n 6 > nul
cls
echo =================================================================
echo --Modo MS-DOS--
echo --Creado por Danucosukosuko: https://github.com/danucosukosuko--
echo =================================================================
echo.
echo.
echo.
echo.
REM Verificar si se ejecuta con privilegios de administrador
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Este programa debe ejecutarse con privilegios de administrador.
    pause
    exit
)

echo el programa de instalacion va a modificar registros que podrian ser peligrosos. El programa de instalacion creara los comandos por si solo. no hace falta que tu añadas ningun archivo externo
echo si dudas de este programa, no lo ejecutes.
echo Cierra esta ventana si no quiere que esto haga cambios o
pause
REM Eliminar el archivo C:\Win.bat si existe
if exist C:\Win.bat (
    del C:\Win.bat
)
REM Eliminar C:\Reboot.bat
if exist C:\reboot.bat (
    del C:\reboot.bat
)
REM Eliminar la shell personalizada
if exist C:\command.bat (
    del C:\command.bat
)
REM Eliminar el comando de ayuda
if exist C:\helpm.bat (
    del C:\helpm.bat
)
REM Eliminar el programa de prueba GPU
if exist C:\Testvideocard.bat (
    del C:\Testvideocard.bat
)
 REM Eliminar la clave unica
if exist C:\unikey.msdos (
    del C:\unikey.msdos
)
echo @echo off >> C:\Helpm.bat
echo echo off >> C:\helpm.bat
echo cls >> C:\helpm.bat
echo echo ========================================================= >> C:\helpm.bat
echo echo Comando de ayuda de Modo "MS-DOS" >> C:\helpm.bat
echo echo ========================================================= >> C:\helpm.bat
echo echo. >> C:\helpm.bat
echo echo. >> C:\helpm.bat
echo echo. >> C:\helpm.bat
echo echo testvideocard: prueba todos los colores de CMD >> C:\helpm.bat
echo echo reboot: reinicia el ordenador y inicia una version bugeada del mismo. >> C:\helpm.bat
echo echo win: inicia windows >> C:\helpm.bat
echo echo helpm: muestra este comando de ayuda >> C:\Helpm.bat
echo echo command: la shell "personalizada" del modo "MS-DOS" >> C:\helpm.bat
echo echo. >> C:\helpm.bat
echo echo. >> C:\helpm.bat
echo echo. >> C:\helpm.bat
echo echo Si no ves un comando, es que es un ejecutable >> C:\helpm.bat
echo echo. >> C:\helpm.bat
echo echo. >> C:\helpm.bat
echo echo Este modo te puede servir para borrar un virus mientras que en este modo no se ejecuta ningun programa sin tu comando. >> C:\helpm.bat


REM Guardar el código en el archivo C:\Testvideocard.bat
echo @echo off > C:\Testvideocard.bat
echo REM Ciclo para cambiar los colores de fondo >> C:\Testvideocard.bat
echo for /l %%b in (0, 1, 15) do ( >> C:\Testvideocard.bat
echo     REM Ciclo para cambiar los colores de texto >> C:\Testvideocard.bat
echo     for /l %%t in (0, 1, 99) do ( >> C:\Testvideocard.bat
echo         REM Limpiar la pantalla >> C:\Testvideocard.bat
echo         cls >> C:\Testvideocard.bat
echo         REM Establecer el color de fondo >> C:\Testvideocard.bat
echo         color %%b >> C:\Testvideocard.bat
echo         REM Establecer el color de texto >> C:\Testvideocard.bat
echo         color %%t >> C:\Testvideocard.bat
echo         REM Mostrar un mensaje >> C:\Testvideocard.bat
echo         echo Colores de fondo: %%b Texto: %%t >> C:\Testvideocard.bat
echo         REM Esperar un segundo antes de cambiar al siguiente color >> C:\Testvideocard.bat
echo         ping -n 1 127.0.0.1 ^>nul >> C:\Testvideocard.bat
echo     ) >> C:\Testvideocard.bat
echo ) >> C:\Testvideocard.bat
echo REM Restablecer los colores por defecto >> C:\Testvideocard.bat
echo color 07 >> C:\Testvideocard.bat


echo @echo off >> C:\Command.bat
echo echo ====================================================================== >> C:\Command.bat
echo echo. >> C:\Command.bat 
echo echo Modo MS-DOS - Use "helpm" para mostrar los comandos disponibles >> C:\Command.bat
echo echo Creado por Danucosukosuko: https://github.com/danucosukosuko >> C:\Command.bat
echo echo Si tu quieres volver a windows, escribe "win" >> C:\Command.bat
echo echo. >> C:\Command.bat
echo echo ====================================================================== >> C:\Command.bat
echo echo. >> C:\Command.bat
echo echo. >> C:\Command.bat
echo echo. >> C:\Command.bat
echo echo. >> C:\Command.bat
echo echo. >> C:\Command.bat
echo @echo on >> C:\
echo cmd.exe >> C:\Command.bat
REM Modificar las claves del Registro
reg add HKLM\System\Setup /v CmdLine /t REG_SZ /d "cmd.exe /c C:\command.bat /f
reg add HKLM\System\Setup /v SystemSetupInProgress /t REG_DWORD /d 1 /f > nul
reg add HKLM\System\Setup /v SetupType /t REG_DWORD /d 2 /f > nul
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v EnableCursorSuppression /t REG_DWORD /d 0 /f > nul
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f > nul
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v VerboseStatus /t REG_DWORD /d 1 /f > nul

REM Crear el archivo C:\Win.bat con el código para revertir los cambios
echo reg add HKLM\System\Setup /v CmdLine /t REG_SZ /d "" /f > C:\Win.bat
echo reg add HKLM\System\Setup /v SystemSetupInProgress /t REG_DWORD /d 0 /f >> C:\Win.bat
echo reg add HKLM\System\Setup /v SetupType /t REG_DWORD /d 0 /f >> C:\Win.bat
echo reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v EnableCursorSuppression /t REG_DWORD /d 0 /f >> C:\Win.bat
echo reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f >> C:\Win.bat
echo reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v VerboseStatus /t REG_DWORD /d 0 /f >> C:\Win.bat
echo shutdown /r /t 3 >> C:\Win.bat

REM Crear ahora el de reboot
echo @echo off >> C:\Reboot.bat
echo shutdown /r /t 3 >> C:\reboot.bat

REM Crear el archivo de clave úunica
echo Y la clave unica es: %random%-%random%-%random% >> C:\UniKey.msdos


echo la clave unica ha sido creada.

 a instalado el modo MS-DOS. reinicia para ver el modo. Si desea salir del modo, vete a C:\ y escribe "win". Se te reiniciara el sistema a Windows
type C:\unikey.msdos
pause
