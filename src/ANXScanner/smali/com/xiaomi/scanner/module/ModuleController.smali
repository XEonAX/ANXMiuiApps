.class public interface abstract Lcom/xiaomi/scanner/module/ModuleController;
.super Ljava/lang/Object;
.source "ModuleController.java"

# interfaces
.implements Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;


# virtual methods
.method public abstract applyWindowInsets(I)V
.end method

.method public abstract doPrething()V
.end method

.method public varargs abstract executeDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract executeOnPostExecute(ILjava/lang/Object;)V
.end method

.method public abstract executeOnPostExecute(Ljava/lang/Object;)V
.end method

.method public abstract getCroppedImagePath()Ljava/lang/String;
.end method

.method public abstract getModuleId()I
.end method

.method public abstract handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract init(Lcom/xiaomi/scanner/app/ScanActivity;)V
.end method

.method public abstract isCaptureNeeded()Z
.end method

.method public abstract isNetworkRequired()Z
.end method

.method public abstract isPause()Z
.end method

.method public abstract isPickerNeeded()Z
.end method

.method public abstract isSdkReady()Z
.end method

.method public abstract isUsePreviewFrameAsPicture()Z
.end method

.method public abstract isZoomNeeded()Z
.end method

.method public abstract onActivityDestroy()V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCTAAndPermissionAgree()V
.end method

.method public abstract onCameraClosed()V
.end method

.method public abstract onConnectivityChanged()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onOrientationChange(I)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
.end method

.method public abstract onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)Z
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract requestPreviewFrame()V
.end method

.method public abstract selectPhotoClick()V
.end method

.method public abstract shouldConsumeCameraKey()Z
.end method

.method public abstract updateWordTranslateUI(Z)V
.end method
