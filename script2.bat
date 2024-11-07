@echo off
setlocal enabledelayedexpansion

set GIT_USER_NAME=LucasLem0s
set GIT_USER_EMAIL=lucaslemoss@live.com
set REPO_URL=https://github.com/LucasLem0s/PrimeiroScriptCMD.git
set REPO_DIR=C:\PrimeiroScriptCMD
echo Clonando o repositório para C:...
git clone %REPO_URL% %REPO_DIR%
cd /d %REPO_DIR%
git config user.name "%GIT_USER_NAME%"
git config user.email "%GIT_USER_EMAIL%"
hostname > hostname.txt
for /f "tokens=2 delims=[]" %I in ('ping -n 1 8.8.8.8 ^| find "Resposta"') do set IP_ADDRESS=%I
echo %IP_ADDRESS% > ip_address.txt
git add hostname.txt ip_address.txt
git commit -m "Adicionando arquivos de hostname e IP"
git push origin main
pause