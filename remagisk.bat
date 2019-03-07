for /f "delims== tokens=1,2" %%G in (VERSION) do set anx%%G=%%H
echo %anxversion%
xcopy /s /y .\out\ANXScreenRecorder.apk .\out\ANXScreenRecorder_%anxversion%.apk
REM xcopy /s /y .\out\ANXScreenRecorder.apk .\src\ANXMiuiApps\system\priv-app\ANXScreenRecorder

REM del .\out\ANXScreenRecorderMagisk.zip
REM del .\out\ANXScreenRecorderMagisk_*.zip

REM del .\out\ANXMiuiApps.zip
REM del .\out\ANXMiuiApps_*.zip

REM "C:\Program Files\7-Zip\7z.exe" a -tzip .\out\ANXScreenRecorderMagisk.zip .\src\ANXScreenRecorderMagisk\*
REM copy .\out\ANXScreenRecorderMagisk.zip /B .\out\ANXScreenRecorderMagisk_%anxversion%.zip

REM "C:\Program Files\7-Zip\7z.exe" a -tzip .\out\ANXMiuiApps.zip .\src\ANXMiuiApps\*
REM copy .\out\ANXMiuiApps.zip /B .\out\ANXMiuiApps_%anxversion%.zip
REM adb push .\out\ANXScreenRecorderMagisk.zip  /sdcard/zips

REM "C:\Program Files\7-Zip\7z.exe" a -tzip .\out\ANX4K60Unity.zip .\src\ANX4K60Unity\*
REM copy .\out\ANX4K60Unity.zip /B .\out\ANX4K60Unity_%anxversion%.zip