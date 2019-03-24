.class public Lmiui/yellowpage/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# static fields
.field private static final ACTION_LOCATION_SETTING:Ljava/lang/String; = "com.miui.yellowpage.intent.action.LOCATION_SETTING"

.field private static final ACTION_USER_NOTICE:Ljava/lang/String; = "com.miui.yellowpage.intent.action.USER_NOTICE"

.field private static final ALLOW_NETWORKING_TEMPORARILY:Ljava/lang/String; = "pref_allow_networking_temporarily"

.field private static final LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field private static final LOCATION_MODE_HIGH_ACCURACY:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static createLocationSettingIntent()Landroid/content/Intent;
    .locals 2

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.yellowpage.intent.action.LOCATION_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createUserNoticeIntent()Landroid/content/Intent;
    .locals 2

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.yellowpage.intent.action.USER_NOTICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static enableLocation(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x3

    .line 90
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 95
    :cond_0
    nop

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    const/4 v2, 0x1

    .line 95
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 99
    :goto_0
    return-void
.end method

.method public static locationingAllowed(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    nop

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    .line 84
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static mipubUploadNotified(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    nop

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_show_user_mipub_upload"

    .line 61
    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static networkingAllowed(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 80
    invoke-static {p0}, Lmiui/yellowpage/Permission;->networkingAllowedPermanently(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lmiui/yellowpage/Permission;->networkingAllowedTemporarily(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static networkingAllowedPermanently(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    nop

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_show_user_notice_yp_detail"

    .line 47
    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static networkingAllowedTemporarily(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 31
    nop

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_allow_networking_temporarily"

    .line 33
    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static rollingAdsAllowed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    nop

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_show_rolling_ads"

    .line 75
    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setMipubUploadNotified(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notified"    # Z

    .line 52
    nop

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_show_user_mipub_upload"

    .line 54
    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 56
    return-void
.end method

.method public static setNetworkingAllowedPermanently(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "allowed"    # Z

    .line 38
    nop

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_show_user_notice_yp_detail"

    .line 40
    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 42
    return-void
.end method

.method public static setNetworkingAllowedTemporarily(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "allowed"    # Z

    .line 25
    nop

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_allow_networking_temporarily"

    .line 27
    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 28
    return-void
.end method

.method public static setRollingAdsAllowed(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "allowed"    # Z

    .line 66
    nop

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_show_rolling_ads"

    .line 68
    invoke-static {v1}, Lmiui/yellowpage/YellowPageUtils;->formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 70
    return-void
.end method
