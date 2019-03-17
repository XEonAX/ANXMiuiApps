.class public Lcom/xiaomi/tinyData/TinyDataCacheProcessor;
.super Ljava/lang/Object;
.source "TinyDataCacheProcessor.java"

# interfaces
.implements Lcom/xiaomi/push/service/XMPushService$PingCallBack;


# static fields
.field private static mIsTinyDataExtracting:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPeriod:I

.field private mUploadSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mIsTinyDataExtracting:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private canUpload(Lcom/xiaomi/tinyData/TinyDataUploader;)Z
    .locals 4
    .param p1, "uploader"    # Lcom/xiaomi/tinyData/TinyDataUploader;

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v2, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    if-eqz p1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "tiny_data.data"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    sget-boolean v2, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mIsTinyDataExtracting:Z

    if-nez v2, :cond_0

    .line 99
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v0, "1000271"

    .line 112
    .local v0, "appId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 107
    .end local v0    # "appId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mContext:Landroid/content/Context;

    const-string v3, "pref_registered_pkg_names"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 110
    .local v1, "sp":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "appId":Ljava/lang/String;
    goto :goto_0
.end method

.method private readOnlineConfig(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-static {p1}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ConfigKey;->TinyDataUploadSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mUploadSwitch:Z

    .line 60
    invoke-static {p1}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ConfigKey;->TinyDataUploadFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v1

    const/16 v2, 0x1c20

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mPeriod:I

    .line 62
    const/16 v0, 0x3c

    iget v1, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mPeriod:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mPeriod:I

    .line 63
    return-void
.end method

.method public static setIsTinyDataExtracting(Z)V
    .locals 0
    .param p0, "status"    # Z

    .prologue
    .line 116
    sput-boolean p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mIsTinyDataExtracting:Z

    .line 117
    return-void
.end method

.method private verifyUploadPeriod()Z
    .locals 8

    .prologue
    .line 66
    iget-object v4, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mContext:Landroid/content/Context;

    const-string v5, "mipush_extra"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "last_tiny_data_upload_timestamp"

    const-wide/16 v6, -0x1

    .line 67
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 68
    .local v2, "lastUpdateDataTimestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 69
    .local v0, "currentInSecond":J
    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget v6, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mPeriod:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public pingFollowUpAction()V
    .locals 4

    .prologue
    .line 42
    iget-object v1, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->readOnlineConfig(Landroid/content/Context;)V

    .line 43
    iget-boolean v1, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mUploadSwitch:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->verifyUploadPeriod()Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TinyData TinyDataCacheProcessor.pingFollowUpAction ts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/tinyData/TinyDataManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/tinyData/TinyDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/tinyData/TinyDataManager;->getUploader()Lcom/xiaomi/tinyData/TinyDataUploader;

    move-result-object v0

    .line 49
    .local v0, "uploader":Lcom/xiaomi/tinyData/TinyDataUploader;
    invoke-direct {p0, v0}, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->canUpload(Lcom/xiaomi/tinyData/TinyDataUploader;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TinyData TinyDataCacheProcessor.pingFollowUpAction !canUpload(uploader) ts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mIsTinyDataExtracting:Z

    .line 54
    iget-object v1, p0, Lcom/xiaomi/tinyData/TinyDataCacheProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/tinyData/TinyDataCacheReader;->addTinyDataCacheReadJob(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;)V

    goto :goto_0
.end method
