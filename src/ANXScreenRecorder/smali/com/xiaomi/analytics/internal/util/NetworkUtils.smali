.class public Lcom/xiaomi/analytics/internal/util/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final NETWORK_TYPE_GSM:I = 0x10

.field private static final NETWORK_TYPE_IWLAN:I = 0x12

.field private static final NETWORK_TYPE_LTE_CA:I = 0x13

.field private static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "NetworkUtils"

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetworkUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetState(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/util/NetState;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    :try_start_0
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 48
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 49
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-nez v5, :cond_1

    .line 50
    :cond_0
    sget-object v5, Lcom/xiaomi/analytics/internal/util/NetState;->NONE:Lcom/xiaomi/analytics/internal/util/NetState;

    .line 68
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-object v5

    .line 53
    .restart local v0    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    .line 54
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v5

    if-nez v5, :cond_3

    .line 55
    sget-object v5, Lcom/xiaomi/analytics/internal/util/NetState;->WIFI:Lcom/xiaomi/analytics/internal/util/NetState;

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 59
    sget-object v5, Lcom/xiaomi/analytics/internal/util/NetState;->WIFI:Lcom/xiaomi/analytics/internal/util/NetState;

    goto :goto_0

    .line 62
    :cond_3
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 63
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 64
    .local v3, "networkType":I
    invoke-static {v3}, Lcom/xiaomi/analytics/internal/util/NetworkUtils;->getNetworkClass(I)Lcom/xiaomi/analytics/internal/util/NetState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 65
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "networkType":I
    .end local v4    # "telephony":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/xiaomi/analytics/internal/util/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v6, "getNetState"

    invoke-static {v5, v6, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    sget-object v5, Lcom/xiaomi/analytics/internal/util/NetState;->NONE:Lcom/xiaomi/analytics/internal/util/NetState;

    goto :goto_0
.end method

.method private static getNetworkClass(I)Lcom/xiaomi/analytics/internal/util/NetState;
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 74
    packed-switch p0, :pswitch_data_0

    .line 98
    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->NONE:Lcom/xiaomi/analytics/internal/util/NetState;

    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->MN2G:Lcom/xiaomi/analytics/internal/util/NetState;

    goto :goto_0

    .line 92
    :pswitch_1
    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->MN3G:Lcom/xiaomi/analytics/internal/util/NetState;

    goto :goto_0

    .line 96
    :pswitch_2
    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->MN4G:Lcom/xiaomi/analytics/internal/util/NetState;

    goto :goto_0

    .line 74
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
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/NetworkUtils;->getNetState(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/util/NetState;

    move-result-object v0

    .line 30
    .local v0, "ns":Lcom/xiaomi/analytics/internal/util/NetState;
    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetworkUtils$1;->$SwitchMap$com$xiaomi$analytics$internal$util$NetState:[I

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/util/NetState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 41
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 32
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 34
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 36
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 38
    :pswitch_3
    const/16 v1, 0xa

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
