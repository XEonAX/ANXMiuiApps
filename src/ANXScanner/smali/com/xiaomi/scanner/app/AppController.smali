.class public interface abstract Lcom/xiaomi/scanner/app/AppController;
.super Ljava/lang/Object;
.source "AppController.java"

# interfaces
.implements Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/app/AppController$ShutterEventsListener;
    }
.end annotation


# virtual methods
.method public abstract addPreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
.end method

.method public abstract checkAppStartRun()Z
.end method

.method public abstract doPrething()V
.end method

.method public abstract enableKeepScreenOn(Z)V
.end method

.method public abstract getAndroidContext()Landroid/content/Context;
.end method

.method public abstract getAppUI()Lcom/xiaomi/scanner/app/AppUI;
.end method

.method public abstract getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;
.end method

.method public abstract getCameraScope()Ljava/lang/String;
.end method

.method public abstract getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;
.end method

.method public abstract getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;
.end method

.method public abstract getCurrentModuleIndex()I
.end method

.method public abstract getFatalErrorHandler()Lcom/xiaomi/scanner/camera/FatalErrorHandler;
.end method

.method public abstract getImagePath()Ljava/lang/String;
.end method

.method public abstract getModuleId(I)I
.end method

.method public abstract getModuleLayoutRoot()Landroid/view/View;
.end method

.method public abstract getModuleScope()Ljava/lang/String;
.end method

.method public abstract getOrientationManager()Lcom/xiaomi/scanner/camera/OrientationManager;
.end method

.method public abstract getServices()Lcom/xiaomi/scanner/camera/CameraServices;
.end method

.method public abstract getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;
.end method

.method public abstract handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract isCaptureNeeded()Z
.end method

.method public abstract isOnlyBusinessCardScan()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPickerNeeded()Z
.end method

.method public abstract isPrerequisiteSatisfied()Z
.end method

.method public abstract isSdkReady()Z
.end method

.method public abstract isShutterEnabled()Z
.end method

.method public abstract launchActivityByIntent(Landroid/content/Intent;)V
.end method

.method public abstract onModuleSelected(I)V
.end method

.method public abstract onPreviewStarted()V
.end method

.method public abstract removePreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
.end method

.method public abstract requestPreviewFrame()V
.end method

.method public abstract setInPictureTakenState(Z)V
.end method

.method public abstract setPreviewStatusListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener;)V
.end method

.method public abstract setShutterEventsListener(Lcom/xiaomi/scanner/app/AppController$ShutterEventsListener;)V
.end method

.method public abstract updatePreviewAspectRatio(F)V
.end method

.method public abstract updatePreviewTransform(Landroid/graphics/Matrix;)V
.end method

.method public abstract updateWordTranslateUI(Z)V
.end method
