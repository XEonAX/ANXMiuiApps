.class public Lcom/alibaba/baichuan/trade/common/utils/network/NetworkUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_UNKNOWN:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_2G:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_3G:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_4G:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    goto :goto_0

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

.method public static getConnectType(Landroid/content/Context;)Lcom/alibaba/baichuan/trade/common/utils/network/ConnectType;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/ConnectType;->CONNECT_TYPE_OTHER:Lcom/alibaba/baichuan/trade/common/utils/network/ConnectType;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/ConnectType;->CONNECT_TYPE_MOBILE:Lcom/alibaba/baichuan/trade/common/utils/network/ConnectType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/ConnectType;->CONNECT_TYPE_WIFI:Lcom/alibaba/baichuan/trade/common/utils/network/ConnectType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/ConnectType;->CONNECT_TYPE_DISCONNECT:Lcom/alibaba/baichuan/trade/common/utils/network/ConnectType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMobileNetworkType(Landroid/content/Context;)Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/network/NetworkUtils;->a(I)Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;->MOBILE_NETWORK_TYPE_UNKNOWN:Lcom/alibaba/baichuan/trade/common/utils/network/MobileNetworkType;

    goto :goto_0
.end method

.method public static isNetworkAvaiable(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
