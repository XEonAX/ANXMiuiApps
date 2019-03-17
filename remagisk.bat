for /f "delims== tokens=1,2" %%G in (VERSION) do set anx%%G=%%H
echo %anxversion%

xcopy /s /y .\out\ANXScreenRecorder.apk .\src\ANXAppsMagisk\system\priv-app\ANXScreenRecorder
xcopy /s /y .\out\ANXScreenRecorder.apk .\src\ANXAppsUnity\system\priv-app\ANXScreenRecorder
REM xcopy /s /y .\out\ANXScanner.apk .\src\ANXAppsMagisk\system\priv-app\ANXScanner
REM xcopy /s /y .\out\ANXScanner.apk .\src\ANXAppsUnity\system\priv-app\ANXScanner

del .\out\\ANXAppsMagisk.zip
del .\out\\ANXAppsMagisk_*.zip

del .\out\\ANXAppsUnity.zip
del .\out\\ANXAppsUnity_*.zip

del .\out\\ANXScanner_*.apk

copy .\out\ANXScanner.apk /B .\out\ANXScanner_%anxversion%.apk

"C:\Program Files\7-Zip\7z.exe" a -tzip .\out\ANXAppsMagisk.zip .\src\ANXAppsMagisk\*
copy .\out\ANXAppsMagisk.zip /B .\out\ANXAppsMagisk_%anxversion%.zip

adb push .\out\ANXAppsMagisk.zip  /sdcard/zips

"C:\Program Files\7-Zip\7z.exe" a -tzip .\out\ANXAppsUnity.zip .\src\ANXAppsUnity\*
copy .\out\ANXAppsUnity.zip /B .\out\ANXAppsUnity_%anxversion%.zip
