.class public Lcn/kuaipan/android/utils/NetworkHelpers;
.super Ljava/lang/Object;
.source "NetworkHelpers.java"


# direct methods
.method public static getCurrentNetType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-string v3, "connectivity"

    .line 66
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 67
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, -0x1

    .line 68
    .local v2, "result":I
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 70
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 74
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method public static getCurrentProxy()Lorg/apache/http/HttpHost;
    .locals 5

    .prologue
    .line 79
    invoke-static {}, Lcn/kuaipan/android/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcn/kuaipan/android/utils/NetworkHelpers;->getCurrentNetType(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    const/4 v3, 0x0

    .line 90
    :cond_0
    :goto_0
    return-object v3

    .line 84
    :cond_1
    const/4 v3, 0x0

    .line 85
    .local v3, "result":Lorg/apache/http/HttpHost;
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "host":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 87
    .local v2, "port":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    new-instance v3, Lorg/apache/http/HttpHost;

    .end local v3    # "result":Lorg/apache/http/HttpHost;
    invoke-direct {v3, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "result":Lorg/apache/http/HttpHost;
    goto :goto_0
.end method
