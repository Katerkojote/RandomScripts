Rem Gets the current date and shortens it to override backups monthly
set datenr=%date:~0,-8%
Rem Creates new folder on Backup Drive
mkdir H:\Desktop_Backup\%datenr%
Rem Puts your choosen directorys into the Backup Drive
Rem Dont Forget to Replace [DriveLetter] with your actual Driveletter
xcopy C:\Users\%USERNAME%\Desktop\ [DriveLetter]\quickBackup\%datenr%\Desktop\ /R /E /Y
xcopy C:\Users\%USERNAME%\Pictures\ [DriveLetter]\quickBackup\%datenr%\Pictures\ /R /E /Y
xcopy C:\Users\%USERNAME%\Documents\ [DriveLetter]\quickBackup\%datenr%\Documents\ /R /E /Y