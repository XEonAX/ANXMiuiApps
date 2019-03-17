.class public Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;
.super Ljava/lang/Object;
.source "AmazonAssistantHelper.java"


# static fields
.field private static final CLOUD_CONFIG_SERVER_CALL_GAP:I = 0x2

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mCloudConfigTask:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

.field private mScanActivity:Lcom/xiaomi/scanner/app/ScanActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "AmazonAssistantHelper"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mScanActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 19
    iput-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mCloudConfigTask:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    .line 22
    iput-object p1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mScanActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 23
    return-void
.end method


# virtual methods
.method public amazonAssistantCloudConfigCall()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isEURegion()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    .line 27
    .local v2, "isNotEURegion":Z
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->callCloudConfigTimeStamp()Z

    move-result v1

    .line 28
    .local v1, "isCloudConfigCallNeeded":Z
    iget-object v4, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mScanActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v4}, Lcom/xiaomi/scanner/settings/FeatureManager;->isAmazonShoppingModuleAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 30
    .local v0, "isAAFeatureAvailable":Z
    sget-object v4, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNotEURegion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - isCloudConfigCallNeeded : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isAAShoppingFeatureAvailable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 34
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 35
    new-instance v4, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    iget-object v5, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mScanActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v4, v5}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;-><init>(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask$CloudConfigResponse;)V

    iput-object v4, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mCloudConfigTask:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    .line 36
    iget-object v4, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mCloudConfigTask:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 38
    :cond_0
    return-void

    .end local v0    # "isAAFeatureAvailable":Z
    .end local v1    # "isCloudConfigCallNeeded":Z
    .end local v2    # "isNotEURegion":Z
    :cond_1
    move v2, v3

    .line 26
    goto :goto_0
.end method

.method public callCloudConfigTimeStamp()Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->isFirstAACloudCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->checkCloudConfigCallTimeGap()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkCloudConfigCallTimeGap()Z
    .locals 14

    .prologue
    .line 45
    iget-object v8, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mScanActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v8}, Lcom/xiaomi/scanner/app/ScanActivity;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v8

    const-string v9, "default_scope"

    const-string v10, "enable_amazon_assistant_timestamp"

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 45
    invoke-virtual {v8, v9, v10, v11}, Lcom/xiaomi/scanner/settings/SettingsManager;->getLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 48
    .local v6, "oldTimeStamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 49
    .local v4, "newTimeStamp":J
    sub-long v0, v4, v6

    .line 57
    .local v0, "diffValue":J
    const-wide/32 v8, 0x36ee80

    div-long v2, v0, v8

    .line 58
    .local v2, "finalDiffValue":J
    sget-object v8, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cloud config time gap is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hours currently."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    const-wide/16 v8, 0x2

    cmp-long v8, v2, v8

    if-ltz v8, :cond_0

    .line 62
    sget-object v8, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hours completed till last cloud config server call. So lets hit"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cloud again."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    const/4 v8, 0x1

    .line 66
    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public cleanUpCloudTask()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mCloudConfigTask:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mCloudConfigTask:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mCloudConfigTask:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;->cancel(Z)Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mCloudConfigTask:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigTask;

    .line 86
    :cond_0
    return-void
.end method

.method public isFirstAACloudCall()Z
    .locals 7

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    .local v0, "currentTimeStamp":J
    iget-object v3, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/AmazonAssistantHelper;->mScanActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/app/ScanActivity;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "enable_amazon_assistant_timestamp"

    .line 74
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "oldTimeStamp":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 76
    const/4 v3, 0x1

    .line 78
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
