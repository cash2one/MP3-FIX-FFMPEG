@ECHO OFF

SET audioPathFS="%~1"
SET filenameFS="%~nx1"
SET audioPath=%audioPathFS:mp3_FS.=%
SET filename=%filenameFS:mp3_FS.=%

ECHO Delete
DEL %audioPath%

ECHO --

Echo Rename
REN %audioPathFS% %filename%


ECHO --

ECHO %filename%
ECHO %filenameFS%
ECHO %audioPath%
ECHO %audioPathFS%

ECHO ---------------------------------------------