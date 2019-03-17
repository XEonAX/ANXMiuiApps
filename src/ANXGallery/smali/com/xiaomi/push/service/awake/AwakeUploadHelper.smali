.class public Lcom/xiaomi/push/service/awake/AwakeUploadHelper;
.super Ljava/lang/Object;
.source "AwakeUploadHelper.java"


# direct methods
.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->doUploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static doLast(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getSendDataIml()Lcom/xiaomi/push/service/awake/module/IProcessData;

    move-result-object v0

    .line 113
    .local v0, "sendData":Lcom/xiaomi/push/service/awake/module/IProcessData;
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/service/awake/module/IProcessData;->shouldDoLast(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 116
    :cond_0
    return-void
.end method

.method private static doUploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "awakeInfo"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 65
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v1, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "awake_info"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v2, "event_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "description"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getOnLineCmd()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 87
    :goto_1
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->doLast(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v1    # "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    :try_start_1
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->sendResponseDirectly(Landroid/content/Context;Ljava/util/HashMap;)V

    goto :goto_1

    .line 78
    :pswitch_1
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->sendResultByTinyData(Landroid/content/Context;Ljava/util/HashMap;)V

    goto :goto_1

    .line 81
    :pswitch_2
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->sendResponseDirectly(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 82
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->sendResultByTinyData(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static sendResponseDirectly(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getSendDataIml()Lcom/xiaomi/push/service/awake/module/IProcessData;

    move-result-object v0

    .line 101
    .local v0, "sendData":Lcom/xiaomi/push/service/awake/module/IProcessData;
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/service/awake/module/IProcessData;->sendDirectly(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 104
    :cond_0
    return-void
.end method

.method private static sendResultByTinyData(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/awake/module/AwakeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/awake/module/AwakeManager;->getSendDataIml()Lcom/xiaomi/push/service/awake/module/IProcessData;

    move-result-object v0

    .line 126
    .local v0, "sendData":Lcom/xiaomi/push/service/awake/module/IProcessData;
    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/service/awake/module/IProcessData;->sendByTinyData(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 129
    :cond_0
    return-void
.end method

.method public static uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "awakeInfo"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/awake/AwakeUploadHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method
