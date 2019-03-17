.class public Lcom/miui/gallery/editor/photo/app/remover/Inpaint;
.super Ljava/lang/Object;
.source "Inpaint.java"


# static fields
.field private static sLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/gallery/editor/photo/app/remover/Inpaint;->sLoaded:Z

    .line 45
    :try_start_0
    const-string/jumbo v1, "vis"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    const-string v1, "inpaint"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    const-string v1, "inpaint_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/gallery/editor/photo/app/remover/Inpaint;->sLoaded:Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .local v0, "error":Ljava/lang/Error;
    :goto_0
    return-void

    .line 49
    .end local v0    # "error":Ljava/lang/Error;
    :catch_0
    move-exception v0

    .line 50
    .restart local v0    # "error":Ljava/lang/Error;
    const-string v1, "Inpaint"

    const-string v2, "library load failed.\n"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static native initialize()Z
.end method

.method public static native inpaintBmpData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIIILcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;)I
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/miui/gallery/editor/photo/app/remover/Inpaint;->sLoaded:Z

    return v0
.end method

.method public static native release()V
.end method

.method public static native upsampleBmpData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIIILcom/miui/gallery/editor/photo/core/imports/remover/RemoverNNFData;)V
.end method
