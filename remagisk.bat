for /f "delims== tokens=1,2" %%G in (VERSION) do set anx%%G=%%H
echo %anxversion%

xcopy /s /y .\out\ANXScreenRecorder.apk .\src\ANXAppsMagisk\system\priv-app\ANXScreenRecorder
xcopy /s /y .\out\ANXScreenRecorder.apk .\src\ANXAppsUnity\system\priv-app\ANXScreenRecorder

del .\out\\ANXAppsMagisk.zip
del .\out\\ANXAppsMagisk_*.zip

del .\out\\ANXAppsUnity.zip
del .\out\\ANXAppsUnity_*.zip

"C:\Program Files\7-Zip\7z.exe" a -tzip .\out\ANXAppsMagisk.zip .\src\ANXAppsMagisk\*
copy .\out\ANXAppsMagisk.zip /B .\out\ANXAppsMagisk_%anxversion%.zip

adb push .\out\ANXAppsMagisk.zip  /sdcard/zips

"C:\Program Files\7-Zip\7z.exe" a -tzip .\out\ANXAppsUnity.zip .\src\ANXAppsUnity\*
copy .\out\ANXAppsUnity.zip /B .\out\ANXAppsUnity_%anxversion%.zip
