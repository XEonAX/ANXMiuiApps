.class public Lmiui/telephony/TelephonyManagerUtil;
.super Ljava/lang/Object;
.source "TelephonyManagerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
