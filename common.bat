goto %1
:eof
exit /b
:checkuid0
for /f "tokens=2 delims==(" %%i in ('adb shell id') do set uid=%%i
if %uid%==0 goto eof
adb shell am start -n com.android.settings/.DevelopmentSettings
>%temp%\root-leagoo\info.vbs echo MsgBox "Ahora desactiva la depuraci�n USB" ^& vbCrLf ^& _
>>%temp%\root-leagoo\info.vbs echo               "Espera 2 segundos y vu�lvela a activar" ^& vbCrLf ^& vbCrLf ^& _
>>%temp%\root-leagoo\info.vbs echo               "Puede que aparezca algo sobre la huella digital en tu dispositivo, pulsa Aceptar","64","Easy Xposed Installer by Henry"
call %temp%\root-leagoo\info.vbs & del /f /q %temp%\root-leagoo\info.vbs
echo.
ping 1.1.1.1 -n 1 -w 1000 >nul
echo Esperando la detecci�n del dispositivo...
adb wait-for-device
for /f "tokens=2 delims==(" %%i in ('adb shell id') do set uid=%%i
if %uid%==0 goto eof
echo.
goto checkuid0
:usbdebinfo
>%temp%\root-leagoo\info.vbs echo MsgBox "Antes de empezar, aseg�rate de activar Depuraci�n USB" ^& vbCrLf ^& vbCrLf ^& _
>>%temp%\root-leagoo\info.vbs echo               "Para activar todas las opciones de desarrollo ve a Ajustes > Informaci�n del tel�fono > Aprieta en n�mero de compilaci�n hasta que aparezca que las opciones de desarrollo est�n activadas" ^& vbCrLf ^& vbCrLf ^& _
>>%temp%\root-leagoo\info.vbs echo               "Entonces ve a Ajustes > Opciones de desarrollo > Act�valas mediante el interruptor y activa la casilla de depuraci�n USB" ^& vbCrLf ^& vbCrLf ^& _
>>%temp%\root-leagoo\info.vbs echo               "Una vez hecho esto, conecta el dispositivo al PC" ^& vbCrLf ^& vbCrLf ^& _
>>%temp%\root-leagoo\info.vbs echo               "Puede que aparezca algo sobre la huella digital en tu dispositivo, pulsa Aceptar","64","Easy Xposed Installer by Henry"
call %temp%\root-leagoo\info.vbs & del /f /q %temp%\root-leagoo\info.vbs
goto eof