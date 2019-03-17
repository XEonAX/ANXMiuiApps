.class public Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;
.super Ljava/lang/Object;
.source "ArcsoftBeautyJni.java"


# static fields
.field private static sLoaded:Z

.field private static final sWhiteList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 15
    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "jason"

    aput-object v4, v2, v3

    sput-object v2, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->sWhiteList:[Ljava/lang/String;

    .line 21
    sput-boolean v3, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->sLoaded:Z

    .line 22
    sget-object v4, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->sWhiteList:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    .local v1, "product":Ljava/lang/String;
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 23
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v6

    if-nez v6, :cond_0

    .line 24
    sput-boolean v7, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->sLoaded:Z

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_1
    sget-boolean v2, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->sLoaded:Z

    if-eqz v2, :cond_2

    .line 30
    :try_start_0
    const-string v2, "image_arcsoft_4plus"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_2
    :goto_1
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Error;
    sput-boolean v3, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->sLoaded:Z

    .line 33
    const-string v2, "ArcsoftBeautyJni"

    const-string v3, "Failed to load library(image_arcsoft_4plus)"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static native beautifyProcessBitmap(Landroid/graphics/Bitmap;II[I[I[I[I[I[I[I[I[I[I[I[I)V
.end method

.method public static native detectFaceNum(Landroid/graphics/Bitmap;II)I
.end method

.method public static native encodeYUV420SP(Landroid/graphics/Bitmap;II[B)V
.end method

.method public static idBeautyAvailable()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->sLoaded:Z

    return v0
.end method

.method public static smartBeauty(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEngine;->preProcessBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 40
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->smartBeauty(Landroid/graphics/Bitmap;I)V

    .line 41
    return-void
.end method

.method public static smartBeauty(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "level"    # I

    .prologue
    .line 48
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->getBeautyProcessor()Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    move-result-object v0

    .line 49
    .local v0, "beautyProcessor":Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
    invoke-virtual {v0, p1}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->getIntelligentLevelParams(I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->setBeautyParamsDegree(Ljava/util/Map;)V

    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->beautify(Landroid/graphics/Bitmap;II)V

    .line 51
    return-void
.end method

.method public static native updateBmpWithYuvBuffer(Landroid/graphics/Bitmap;II[B)V
.end method
