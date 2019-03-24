call ..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" incrementversionname=true incrementversion=true

..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" am="src\ANXScreenRecorder\AndroidManifest.xml" 
..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" am="src\ANXScanner\AndroidManifest.xml"
..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" am="src\ANXGallery\AndroidManifest.xml"

..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" mm=".\src\ANXAppsUnity\module.prop"
..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" mm=".\src\ANXAppsMagisk\module.prop"
