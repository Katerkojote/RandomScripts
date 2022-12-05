Rem Holt sich das aktuelle Datum und formuliert das in ein Brauchbares Format
set datenr=%date:~0,-8%
Rem Creates new folder on Backup Drive
mkdir H:\Desktop_Backup\%datenr%
Rem Puts your choosen directorys into the Backup Drive
xcopy C:\Users\%USERNAME%\Desktop\ H:\quickBackup\%datenr%\Desktop\ /R /E /Y
xcopy C:\Users\%USERNAME%\%HOMEPATH%\Pictures\ H:\quickBackup\%datenr%\Pictures\ /R /E /Y
xcopy C:\Users\%USERNAME%\%HOMEPATH%\Documents\ H:\quickBackup\%datenr%\Documents\ /R /E /Y
Rem Geschrieben von Kris O. am 02.12.2022
