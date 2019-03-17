.class public Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallbacksImpl.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private mActiveStartTS:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentActiveActivity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startTS"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mActiveStartTS:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mActiveStartTS:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private writeData(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;-><init>()V

    .line 79
    .local v0, "collectionItem":Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->setContent(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->setCollectedAt(J)Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .line 81
    sget-object v1, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->ActivityActiveTimeStamp:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->setCollectionType(Lcom/xiaomi/xmpush/thrift/ClientCollectionType;)Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .line 82
    iget-object v1, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/push/mpcd/job/CollectionJob;->writeItemToFile(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/DataCollectionItem;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "activityName":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mActiveStartTS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mCurrentActiveActivity:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mCurrentActiveActivity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mCurrentActiveActivity:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mActiveStartTS:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mActiveStartTS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-direct {p0, v1}, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->writeData(Ljava/lang/String;)V

    .line 61
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mActiveStartTS:Ljava/lang/String;

    .line 62
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mCurrentActiveActivity:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mCurrentActiveActivity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mCurrentActiveActivity:Ljava/lang/String;

    .line 42
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/mpcd/ActivityLifecycleCallbacksImpl;->mActiveStartTS:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    return-void
.end method
