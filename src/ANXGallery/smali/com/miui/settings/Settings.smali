.class public Lcom/miui/settings/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# direct methods
.method public static checkRegion(Ljava/lang/String;)Z
    .locals 1
    .param p0, "region"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    sget-boolean v1, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    if-eqz v1, :cond_1

    .line 16
    invoke-static {p0}, Landroid/provider/SystemSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    const-string v0, "Xiaomi"

    .line 22
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lmiui/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
