for /f "delims== tokens=1,2" %%G in (VERSION) do set anx%%G=%%H
echo %anxversion%
git tag %anxversioncode%.master
git push origin %anxversioncode%.master
rem ..\ANXMiuiPortTools\hub.exe release create -a .\out\ANXAppsMagisk.zip -m master.BleedingEdge BleedingEdge.master
rem ..\ANXMiuiPortTools\hub.exe release create -a .\out\ANXAppsMagisk.zip -m %anxversion% %anxversioncode%
REM ..\ANXMiuiPortTools\hub.exe release create -a .\out\ANXScreenRecorder_%anxversion%.apk -m master.%anxversion% %anxversioncode%.master
..\ANXMiuiPortTools\hub.exe release create -a .\out\ANXAppsMagisk_%anxversion%.zip -m master.%anxversion% %anxversioncode%.master
..\ANXMiuiPortTools\hub.exe release edit -a .\out\ANXAppsUnity_%anxversion%.zip -m master.%anxversion% %anxversioncode%.master
..\ANXMiuiPortTools\hub.exe release edit -a .\out\ANXScanner_%anxversion%.apk -m master.%anxversion% %anxversioncode%.master
REM ..\ANXMiuiPortTools\hub.exe release edit -a .\out\ANX4K60Unity_%anxversion%.zip -m master.%anxversion% %anxversioncode%.master
