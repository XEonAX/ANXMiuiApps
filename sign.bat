java  -jar ..\ANXMiuiPortTools\signapk.jar ..\ANXMiuiPortTools\testkey.x509.pem ..\ANXMiuiPortTools\testkey.pk8 .\out\ANXScreenRecorder-Unsigned.apk .\out\ANXScreenRecorder-Unaligned.apk
..\ANXMiuiPortTools\zipalign.exe -f 4  .\out\ANXScreenRecorder-Unaligned.apk .\out\ANXScreenRecorder.apk
java  -jar ..\ANXMiuiPortTools\signapk.jar ..\ANXMiuiPortTools\testkey.x509.pem ..\ANXMiuiPortTools\testkey.pk8 .\out\ANXScanner-Unsigned.apk .\out\ANXScanner-Unaligned.apk
..\ANXMiuiPortTools\zipalign.exe -f 4  .\out\ANXScanner-Unaligned.apk .\out\ANXScanner.apk
java  -jar ..\ANXMiuiPortTools\signapk.jar ..\ANXMiuiPortTools\testkey.x509.pem ..\ANXMiuiPortTools\testkey.pk8 .\out\ANXGallery-Unsigned.apk .\out\ANXGallery-Unaligned.apk
..\ANXMiuiPortTools\zipalign.exe -f 4  .\out\ANXGallery-Unaligned.apk .\out\ANXGallery.apk
