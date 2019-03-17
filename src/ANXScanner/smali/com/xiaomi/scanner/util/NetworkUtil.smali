.class public Lcom/xiaomi/scanner/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/util/NetworkUtil$NetState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "NetworkUtil"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/util/NetworkUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getActiveNetworkType()I
    .locals 5

    .prologue
    .line 32
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 33
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 34
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 41
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/xiaomi/scanner/util/NetworkUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 41
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getActiveNetworkTypeName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 53
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 54
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 63
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v4

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v4, Lcom/xiaomi/scanner/util/NetworkUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    const-string v4, "<unknown>"

    goto :goto_0
.end method

.method public static getNetState()Lcom/xiaomi/scanner/util/NetworkUtil$NetState;
    .locals 7

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 87
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 88
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    :cond_0
    sget-object v5, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->NONE:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    .line 108
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-object v5

    .line 92
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    .line 93
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v5

    if-nez v5, :cond_3

    .line 94
    sget-object v5, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->WIFI:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 98
    sget-object v5, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->WIFI:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 103
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 104
    .local v3, "networkType":I
    invoke-static {v3}, Lcom/xiaomi/scanner/util/NetworkUtil;->getNetworkClass(I)Lcom/xiaomi/scanner/util/NetworkUtil$NetState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 105
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "networkType":I
    .end local v4    # "telephony":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/xiaomi/scanner/util/NetworkUtil;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    sget-object v5, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->NONE:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    goto :goto_0
.end method

.method private static getNetworkClass(I)Lcom/xiaomi/scanner/util/NetworkUtil$NetState;
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 112
    packed-switch p0, :pswitch_data_0

    .line 132
    sget-object v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->NONE:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    sget-object v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->MN2G:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    goto :goto_0

    .line 128
    :pswitch_1
    sget-object v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->MN3G:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    goto :goto_0

    .line 130
    :pswitch_2
    sget-object v0, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->MN4G:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkConnected()Z
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/xiaomi/scanner/util/NetworkUtil;->getActiveNetworkType()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifiConnected()Z
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/xiaomi/scanner/util/NetworkUtil;->getNetState()Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/scanner/util/NetworkUtil$NetState;->WIFI:Lcom/xiaomi/scanner/util/NetworkUtil$NetState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
