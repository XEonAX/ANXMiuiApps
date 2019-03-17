.class public abstract Lcom/miui/gallery/video/editor/sdk/Build;
.super Ljava/lang/Object;
.source "Build.java"


# direct methods
.method public static supportVideoEditor()Z
    .locals 2

    .prologue
    .line 7
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 8
    .local v0, "device":Ljava/lang/String;
    const-string v1, "meri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
