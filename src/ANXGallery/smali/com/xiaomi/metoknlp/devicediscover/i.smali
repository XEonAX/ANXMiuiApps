.class Lcom/xiaomi/metoknlp/devicediscover/i;
.super Ljava/lang/Object;
.source "DiscoverUtils.java"


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 70
    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 71
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 79
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 84
    :goto_1
    if-eqz v0, :cond_0

    .line 86
    if-nez p1, :cond_2

    .line 87
    :try_start_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 88
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 89
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 90
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/i;->l(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 130
    const-string v0, "devicediscover"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/net/DhcpInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v1

    .line 28
    :cond_1
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 29
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 37
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 43
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    const-string v0, "devicediscover"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/metoknlp/devicediscover/i;->b(Landroid/content/Context;)Landroid/net/DhcpInfo;

    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget v1, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1}, Lcom/xiaomi/metoknlp/devicediscover/i;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/metoknlp/devicediscover/i;->b(Landroid/content/Context;)Landroid/net/DhcpInfo;

    move-result-object v1

    .line 60
    if-nez v1, :cond_0

    .line 65
    :goto_0
    return-object v0

    .line 62
    :cond_0
    iget v1, v1, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-static {v1}, Lcom/xiaomi/metoknlp/devicediscover/i;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-static {p0, v0}, Lcom/xiaomi/metoknlp/devicediscover/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    const/4 v2, 0x0

    .line 111
    const/16 v1, 0x400

    :try_start_0
    new-array v3, v1, [C

    .line 112
    new-instance v1, Ljava/io/FileReader;

    const-string v4, "/sys/class/net/wlan0/address"

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const/4 v2, 0x0

    const/16 v4, 0x400

    :try_start_1
    invoke-virtual {v1, v3, v2, v4}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .line 114
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 118
    if-eqz v1, :cond_1

    .line 120
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 126
    :cond_1
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 118
    :goto_1
    if-eqz v1, :cond_1

    .line 120
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 121
    :catch_1
    move-exception v1

    goto :goto_0

    .line 116
    :catch_2
    move-exception v1

    move-object v1, v2

    .line 118
    :goto_2
    if-eqz v1, :cond_1

    .line 120
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 121
    :catch_3
    move-exception v1

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 120
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 122
    :cond_2
    :goto_4
    throw v0

    .line 121
    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_4

    .line 118
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 116
    :catch_6
    move-exception v2

    goto :goto_2

    .line 115
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method public static intToInetAddress(I)Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 155
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 103
    :cond_0
    return-object p0
.end method
