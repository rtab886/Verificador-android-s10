@echo off
title Verificação de Integridade do Android (Samsung Galaxy S10 Plus)
echo ========================================================
echo   VERIFICAÇÃO DE SISTEMA - ANDROID ORIGINAL OU MODIFICADO
echo ========================================================
echo.

:: Verificar se ADB está instalado
where adb >nul 2>&1
if errorlevel 1 (
    echo [ERRO] ADB não encontrado. Baixe o SDK Platform Tools:
    echo https://developer.android.com/tools/releases/platform-tools
    pause
    exit /b
)

:: Listar dispositivos conectados
echo [INFO] Verificando conexão com o dispositivo...
adb devices
echo.
echo Se seu dispositivo não apareceu acima, conecte via USB e permita a depuração.
pause

:: Verificar bootloader
echo ----------------------------
echo [1] Verificando o estado do bootloader...
adb shell getprop ro.boot.verifiedbootstate

:: Verificar root
echo ----------------------------
echo [2] Verificando root (su)...
adb shell which su

:: Verificar SELinux
echo ----------------------------
echo [3] Verificando modo SELinux...
adb shell getenforce

:: Verificar presença do Magisk
echo ----------------------------
echo [4] Verificando arquivos do Magisk...
adb shell ls -la /sbin | findstr magisk

:: Verificar fingerprint da ROM
echo ----------------------------
echo [5] Verificando fingerprint da build...
adb shell getprop ro.build.fingerprint

echo ----------------------------
echo.
echo [FIM] Verificações concluídas. Interprete os resultados:
echo - "green" = sistema verificado.
echo - "orange/red" = sistema modificado.
echo - Resultado "su" ou "magisk" = sistema com root.
echo - SELinux "Enforcing" = OK. "Permissive" = modificado.
echo - Fingerprint deve conter "samsung" e "release-keys".
echo.
pause