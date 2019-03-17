.class public Lcom/miui/gallery/util/PhotoMovieEntranceUtils;
.super Ljava/lang/Object;
.source "PhotoMovieEntranceUtils.java"


# direct methods
.method public static isPhotoMovieAvailable()Z
    .locals 2

    .prologue
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
