for /f "delims== tokens=1,2" %%G in (VERSION) do set anx%%G=%%H
echo %anxversion%
git tag %anxversioncode%.master
git push origin %anxversioncode%.master
rem ..\ANXMiuiPortTools\hub.exe release edit -a .\out\ANXCameraMagisk.zip -m master.BleedingEdge BleedingEdge.master
rem ..\ANXMiuiPortTools\hub.exe release create -a .\out\ANXCameraMagisk.zip -m %anxversion% %anxversioncode%
..\ANXMiuiPortTools\hub.exe release create -a .\out\ANXScreenRecorder_%anxversion%.apk -m master.%anxversion% %anxversioncode%.master
REM ..\ANXMiuiPortTools\hub.exe release edit -a .\out\ANXCameraUnity_%anxversion%.zip -m master.%anxversion% %anxversioncode%.master
REM ..\ANXMiuiPortTools\hub.exe release edit -a .\out\ANX4K60Unity_%anxversion%.zip -m master.%anxversion% %anxversioncode%.master
