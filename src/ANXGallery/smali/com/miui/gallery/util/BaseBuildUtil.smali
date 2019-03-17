.class public Lcom/miui/gallery/util/BaseBuildUtil;
.super Ljava/lang/Object;
.source "BaseBuildUtil.java"


# direct methods
.method public static getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/miui/settings/Settings;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isInternational()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/miui/os/Rom;->IS_INTERNATIONAL:Z

    return v0
.end method

.method public static isUUIDSDCard()Z
    .locals 2

    .prologue
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
