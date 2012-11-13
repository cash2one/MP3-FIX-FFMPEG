@echo off

for /f "delims=" %%a IN ('DIR /b /s *.mp3') do ffmpeg -i "%%a" -vn -acodec copy "%%a_FS.mp3"

@echo Zum loeschen der Originalen eine Taste druecken!
pause > NUL 

for /f "delims=" %%a IN ('DIR /b /s *_FS.MP3') do call FS-DO-DELETE-AND-RENAME.bat "%%a"

@echo Zum Beenden eine Taste druecken!
pause > NUL

EXIT
