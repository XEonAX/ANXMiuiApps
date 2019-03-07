.class Lcom/xiaomi/stat/d/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 127
    if-nez v0, :cond_0

    .line 128
    const-string v0, "NOT_CONNECTED"

    .line 141
    :goto_0
    return-object v0

    .line 130
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    :cond_1
    const-string v0, "NOT_CONNECTED"

    goto :goto_0

    .line 134
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 135
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 136
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/stat/d/l$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 141
    :cond_4
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 189
    const/16 v0, 0x1324

    if-le p0, v0, :cond_0

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 146
    const-string v1, ""

    .line 148
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v0, v4, :cond_1

    .line 149
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 150
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 152
    invoke-static {v0}, Lcom/xiaomi/stat/d/l$a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    const-string v0, "5G"

    .line 185
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-static {v0}, Lcom/xiaomi/stat/d/l$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    const-string v0, "2G"

    goto :goto_0

    .line 158
    :cond_1
    const/4 v4, -0x1

    .line 159
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 160
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 161
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    .line 162
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 163
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_6

    .line 164
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 166
    iget-object v7, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    iget v5, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v5}, Lcom/xiaomi/stat/d/l$a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v2

    .line 176
    :goto_1
    if-ne v0, v2, :cond_4

    .line 177
    const-string v0, "5G"

    goto :goto_0

    .line 169
    :cond_3
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Lcom/xiaomi/stat/d/l$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 170
    goto :goto_1

    .line 178
    :cond_4
    if-ne v0, v3, :cond_5

    .line 179
    const-string v0, "2G"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v2, "NetWorkStateUtil"

    const-string v3, "getWifiFreeBand error"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_1
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 193
    const/16 v0, 0x960

    if-le p0, v0, :cond_0

    const/16 v0, 0x9c4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
