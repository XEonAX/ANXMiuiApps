.class public Lcom/xiaomi/analytics/internal/util/SysUtils;
.super Ljava/lang/Object;
.source "SysUtils.java"


# static fields
.field private static final ANDROID_VERSION:Ljava/lang/String; = "ro.build.version.sdk"

.field private static IMEI:Ljava/lang/String; = null

.field private static final KEY_HAS_DELETED_DEVICE_ID:Ljava/lang/String; = "has_deleted_id"

.field private static final KEY_IMEI:Ljava/lang/String; = "imei"

.field private static final PREF_FILE:Ljava/lang/String; = "_m_rec"

.field private static final PRODUCT_NAME:Ljava/lang/String; = "ro.build.product"

.field private static final TAG:Ljava/lang/String; = "SysUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDeviceIdInSpFile(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    :try_start_0
    const-string v2, "_m_rec"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 111
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "has_deleted_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "imei"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "has_deleted_id"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SysUtils"

    const-string v3, "deleteDeviceIdInSpFile exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAndroidVersionNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    const-string v0, "ro.build.version.sdk"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    const-string v0, "ro.build.product"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHashedIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/SysUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getHashedMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    :try_start_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 56
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "mac":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 63
    .end local v1    # "mac":Ljava/lang/String;
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v3

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SysUtils"

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getHashedMac e"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v2, Lcom/xiaomi/analytics/internal/util/SysUtils;->IMEI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 30
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/analytics/internal/util/SysUtils;->IMEI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    sget-object v2, Lcom/xiaomi/analytics/internal/util/SysUtils;->IMEI:Ljava/lang/String;

    return-object v2

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SysUtils"

    const-string v3, "getIMEI failed!"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/analytics/internal/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getMIUIBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isAlphaBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "A"

    .line 82
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isStableBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "S"

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isDevBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const-string v0, "D"

    goto :goto_0

    .line 82
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static getMIUIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    :try_start_0
    const-string v2, "ro.miui.region"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "region":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "ro.product.locale.region"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    .end local v1    # "region":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 97
    .restart local v1    # "region":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SysUtils"

    const-string v3, "getRegion Exception: "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    const-string v1, ""

    goto :goto_0
.end method
