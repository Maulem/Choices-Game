@echo off
title Shutdown Master
color 0a
echo.
echo                                   Seconds?
echo.
echo secho et /p sec=                                     
echo :continue
echo color 0B
color 0c
timeout -t 0.0001
echo cls                                                             
echo                              
echo                                                                                         
echo   %hour%   Hours
echo   %min%  Minutes  
echo   %sec%  Seconds
color 0b
echo set /a sec="%sec%-1"
echo if %sec%==-1 set /a min="%min%-1"
echo if %sec%==-1 set /a sec="59"
echo iecho f %min%==-1 set /a hour="%hour%-1"
echo if %min%==-1 set /a min="59"
echo if %hour%==-1 goto done
echo ping -n 2 127.0.0.1 >NUL
echo goto continue
timeout -t 1
echo :done
echo color 0B
echo cls
echo taskkill %image% %taskkill% %forced%
echo exit
echo.
echo.
color 0c
echo                  uuuuuuu
echo              uu$$$$$$$$$$$uu
echo           uu$$$$$$$$$$$$$$$$$uu
echo          u$$$$$$$$$$$$$$$$$$$$$u
echo         u$$$$$$$$$$$$$$$$$$$$$$$u
echo        u$$$$$$$$$$$$$$$$$$$$$$$$$u
echo        u$$$$$$$$$$$$$$$$$$$$$$$$$u
echo        u$$$$$$"   "$$$"   "$$$$$$u
echo        "$$$$"      u$u       $$$$"
echo         $$$u       u$u       u$$$
echo         $$$u      u$$$u      u$$$
echo          "$$$$uu$$$   $$$uu$$$$"
echo           "$$$$$$$"   "$$$$$$$"
echo             u$$$$$$$u$$$$$$$u
echo              u$"$"$"$"$"$"$u
echo   uuu        $$u$ $ $ $ $u$$       uuu
echo  u$$$$        $$$$$u$u$u$$$       u$$$$
echo   $$$$$uu      "$$$$$$$$$"     uu$$$$$$
echo u$$$$$$$$$$$uu    """""    uuuu$$$$$$$$$$
echo $$$$"""$$$$$$$$$$uuu   uu$$$$$$$$$"""$$$"
echo  """      ""$$$$$$$$$$$uu ""$"""
echo            uuuu ""$$$$$$$$$$uuu
echo   u$$$uuu$$$$$$$$$uu ""$$$$$$$$$$$uuu$$$
echo   $$$$$$$$$$""""           ""$$$$$$$$$$$"
echo    "$$$$$"                      ""$$$$""
echo      $$$"                         $$$$"
timeout -t 1
cls
color 0a
echo Bom dia Usuario
:ESCOLHA	
echo O que o senhor deseja?
echo Desligar:  1
echo Reiniciar: 2
echo Cancelar:  3
echo Digite abaixo a opcao desejada:
set /p xyz=
if %xyz%==Desligar goto SHUTDOWN
if %xyz%==desligar goto SHUTDOWN
if %xyz%==DESLIGAR goto SHUTDOWN
if %xyz%==1 goto SHUTDOWN
if %xyz%==Cancelar goto CANCEL
if %xyz%==cancelar goto CANCEL
if %xyz%==CANCELAR goto CANCEL
if %xyz%==3 goto CANCEL
if %xyz%==2 goto RESTART
if %xyz%==Reiniciar goto RESTART
if %xyz%==reiniciar goto RESTART
if %xyz%==REINICIAR goto RESTART
echo Escolha invalida!
goto ESCOLHA
:SHUTDOWN
cls
echo Em quanto tempo o senhor deseja desligar o pc? 
set /p time=Tempo em segundos:
shutdown -s -t %time% -c "Seu computador sera desligado em %time% segundos" -f
goto END
:CANCEL
cls
shutdown -a 
echo Desligamento cancelado!!!
pause
goto END
:RESTART
shutdown -R -t 7 -c "Reiniciando" -f
goto END
:END
taskkill -im cmd.exe /f /t


