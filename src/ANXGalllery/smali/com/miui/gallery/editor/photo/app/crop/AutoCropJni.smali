.class public Lcom/miui/gallery/editor/photo/app/crop/AutoCropJni;
.super Ljava/lang/Object;
.source "AutoCropJni.java"


# static fields
.field private static sLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/gallery/editor/photo/app/crop/AutoCropJni;->sLoaded:Z

    .line 17
    :try_start_0
    const-string v1, "autocrop"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/gallery/editor/photo/app/crop/AutoCropJni;->sLoaded:Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .local v0, "error":Ljava/lang/Error;
    :goto_0
    return-void

    .line 19
    .end local v0    # "error":Ljava/lang/Error;
    :catch_0
    move-exception v0

    .line 20
    .restart local v0    # "error":Ljava/lang/Error;
    const-string v1, "AutoCropJni"

    const-string v2, "library load failed.\n"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static native autoRotation([BIILcom/miui/gallery/editor/photo/app/crop/AutoCropData;)I
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/miui/gallery/editor/photo/app/crop/AutoCropJni;->sLoaded:Z

    return v0
.end method
