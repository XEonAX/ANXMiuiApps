.class public Lcom/miui/telephony/TelephonyHelper;
.super Ljava/lang/Object;
.source "TelephonyHelper.java"


# direct methods
.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    invoke-static {}, Lmiui/telephony/TelephonyManagerUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
