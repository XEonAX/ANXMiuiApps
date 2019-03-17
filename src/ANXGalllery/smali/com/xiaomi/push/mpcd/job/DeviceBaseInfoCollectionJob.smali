.class public Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;
.super Lcom/xiaomi/push/mpcd/job/CollectionJob;
.source "DeviceBaseInfoCollectionJob.java"


# instance fields
.field private androidDeviceIdSwitch:Z

.field private iccidSwitch:Z

.field private imsiSwitch:Z

.field private macSwitch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "period"    # I
    .param p3, "macSwitch"    # Z
    .param p4, "imsiSwitch"    # Z
    .param p5, "iccidSwitch"    # Z
    .param p6, "androidDeviceIdSwitch"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/mpcd/job/CollectionJob;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-boolean p3, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->macSwitch:Z

    .line 46
    iput-boolean p4, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->imsiSwitch:Z

    .line 47
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->imsiSwitch:Z

    .line 50
    :cond_0
    iput-boolean p5, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->iccidSwitch:Z

    .line 51
    iput-boolean p6, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->androidDeviceIdSwitch:Z

    .line 52
    return-void
.end method

.method private getDeviceIdMd5Sha1(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    iget-boolean v4, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->androidDeviceIdSwitch:Z

    if-nez v4, :cond_1

    .line 165
    const-string v2, "off"

    .line 180
    :cond_0
    :goto_0
    return-object v2

    .line 167
    :cond_1
    const-string v2, ""

    .line 169
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/android/DeviceInfo;->getIMEIList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 171
    .local v0, "androidDeviceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .local v1, "id":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getSHA1Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 176
    goto :goto_1

    .line 179
    .end local v0    # "androidDeviceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "id":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 180
    .local v3, "t":Ljava/lang/Throwable;
    const-string v2, ""

    goto :goto_0
.end method

.method private getIccidInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 149
    iget-boolean v3, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->iccidSwitch:Z

    if-nez v3, :cond_0

    .line 150
    const-string v3, "off"

    .line 159
    :goto_0
    return-object v3

    .line 153
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->context:Landroid/content/Context;

    const-string v4, "phone"

    .line 154
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 155
    .local v2, "tManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "iccid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getSHA1Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 158
    .end local v0    # "iccid":Ljava/lang/String;
    .end local v2    # "tManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "t":Ljava/lang/Throwable;
    const-string v3, ""

    goto :goto_0
.end method

.method private getImsiInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 134
    iget-boolean v3, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->imsiSwitch:Z

    if-nez v3, :cond_0

    .line 135
    const-string v3, "off"

    .line 144
    :goto_0
    return-object v3

    .line 138
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->context:Landroid/content/Context;

    const-string v4, "phone"

    .line 139
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 140
    .local v2, "tManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "imsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 142
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getSHA1Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 143
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v2    # "tManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "t":Ljava/lang/Throwable;
    const-string v3, ""

    goto :goto_0
.end method

.method private getMacInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    iget-boolean v2, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->macSwitch:Z

    if-nez v2, :cond_0

    .line 76
    const-string v2, "off"

    .line 83
    :goto_0
    return-object v2

    .line 79
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "macInfo":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 81
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getSHA1Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 82
    .end local v1    # "macInfo":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ignored":Ljava/lang/Throwable;
    const-string v2, ""

    goto :goto_0
.end method

.method private getWifiMacAddress()Ljava/lang/String;
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 89
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 90
    const-string v7, ""

    .line 129
    :cond_0
    :goto_0
    return-object v7

    .line 92
    :cond_1
    const-string v7, ""

    .line 93
    .local v7, "result":Ljava/lang/String;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-ge v10, v11, :cond_2

    .line 95
    iget-object v10, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->context:Landroid/content/Context;

    const-string/jumbo v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 96
    .local v8, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 97
    .local v3, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    .line 99
    .end local v3    # "info":Landroid/net/wifi/WifiInfo;
    .end local v8    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 102
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x9

    if-ge v10, v11, :cond_3

    .line 103
    const-string v7, ""

    goto :goto_0

    .line 106
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    .line 107
    .local v4, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 108
    .local v6, "networkInterface":Ljava/net/NetworkInterface;
    const-string/jumbo v11, "wlan0"

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 112
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v5

    .line 113
    .local v5, "mac":[B
    if-nez v5, :cond_5

    .line 114
    const-string v7, ""

    goto :goto_0

    .line 117
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v1, "buf":Ljava/lang/StringBuilder;
    array-length v10, v5

    :goto_1
    if-ge v9, v10, :cond_6

    aget-byte v0, v5, v9

    .line 119
    .local v0, "aMac":B
    const-string v11, "%02x:"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 121
    .end local v0    # "aMac":B
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 124
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 126
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v5    # "mac":[B
    .end local v6    # "networkInterface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 127
    .local v2, "exp":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    .end local v2    # "exp":Ljava/lang/Exception;
    :cond_8
    const-string v7, ""

    goto/16 :goto_0
.end method


# virtual methods
.method public collectInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->getMacInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->getImsiInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->getIccidInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->context:Landroid/content/Context;

    .line 70
    invoke-direct {p0, v1}, Lcom/xiaomi/push/mpcd/job/DeviceBaseInfoCollectionJob;->getDeviceIdMd5Sha1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method public getCollectionType()Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->DeviceBaseInfo:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0xd

    return v0
.end method
