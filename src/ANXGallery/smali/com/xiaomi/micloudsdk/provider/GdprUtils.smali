.class public Lcom/xiaomi/micloudsdk/provider/GdprUtils;
.super Ljava/lang/Object;
.source "GdprUtils.java"


# direct methods
.method public static isGdprAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lmiui/cloud/AppConstants;->CLOUD_SDK_LEVEL:Lcom/miui/app/ModuleLevel;

    invoke-virtual {v0, p0}, Lcom/miui/app/ModuleLevel;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPermissionGranted(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 12
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/provider/GdprUtils;->isGdprAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "micloud_gdpr_permission_granted"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 15
    .local v0, "grantedInt":I
    if-eqz v0, :cond_1

    .line 17
    .end local v0    # "grantedInt":I
    :cond_0
    :goto_0
    return v1

    .line 15
    .restart local v0    # "grantedInt":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
