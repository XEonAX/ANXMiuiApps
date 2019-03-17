.class public Lcom/xiaomi/mipush/sdk/ActivityLifecycleCallbacksForCR;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallbacksForCR.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private mMsgIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ActivityLifecycleCallbacksForCR;->mMsgIdSet:Ljava/util/Set;

    return-void
.end method

.method private static attachApplication(Landroid/app/Application;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Application;

    .prologue
    .line 37
    new-instance v0, Lcom/xiaomi/mipush/sdk/ActivityLifecycleCallbacksForCR;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/ActivityLifecycleCallbacksForCR;-><init>()V

    .line 38
    .local v0, "instance":Lcom/xiaomi/mipush/sdk/ActivityLifecycleCallbacksForCR;
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 39
    return-void
.end method

.method public static forceAttachApplication(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 32
    check-cast p0, Landroid/app/Application;

    .end local p0    # "context":Landroid/content/Context;
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/ActivityLifecycleCallbacksForCR;->attachApplication(Landroid/app/Application;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 56
    .local v7, "intent":Landroid/content/Intent;
    if-nez v7, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v0, "messageId"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "msgId":Ljava/lang/String;
    const-string v0, "eventMessageType"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 60
    .local v6, "eventType":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez v6, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ActivityLifecycleCallbacksForCR;->mMsgIdSet:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ActivityLifecycleCallbacksForCR;->mMsgIdSet:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    const/16 v0, 0xbb8

    if-ne v6, v0, :cond_2

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xbc0

    const-string v5, "App calls by business message is visiable"

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    const/16 v0, 0x3e8

    if-ne v6, v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/clientReport/PushClientReportManager;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Lcom/xiaomi/push/service/clientReport/PushClientReportHelper;->getInterfaceIdByType(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x3f0

    const-string v5, "app calls by notification message is visiable"

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/clientReport/PushClientReportManager;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    return-void
.end method
