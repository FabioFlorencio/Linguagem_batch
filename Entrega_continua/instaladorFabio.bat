@echo off

:: Mudar a extensão do arquivo para .bat para executar
:: Executar o comando pelo prompt administrador

:: Muda para diretório especificado
cd\Users\

:: Cria diretório DTI
md DTI
cd\Users\DTI\

:: Cria diretório Documents
md Documents

cd\Users\DTI\Documents\
md ALP_Labs

echo %date% > arq1.txt
echo %time% >> arq1.txt
echo Não tenho os lab1! >> arq1.txt
echo.

echo %date% > arq2.txt
echo %time% >> arq2.txt
echo Não tenho os lab2! >> arq2.txt
echo.

copy arq1.txt C:\Users\DTI\Documents\ALP_Labs\
copy arq2.txt C:\Users\DTI\Documents\ALP_Labs\

cd\Users\DTI\Documents\ALP_Labs\

call arq1.txt   
pause
call arq2.txt 
pause

dir







