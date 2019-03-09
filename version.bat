call ..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" incrementversionname=true incrementversion=true

..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" am="src\ANXScreenRecorder\AndroidManifest.xml" mm=".\src\ANXAppsMagisk\module.prop"
..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" am="src\ANXScreenRecorder\AndroidManifest.xml" mm=".\src\ANXAppsUnity\module.prop"
