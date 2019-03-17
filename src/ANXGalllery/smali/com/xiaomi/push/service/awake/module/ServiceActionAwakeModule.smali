.class Lcom/xiaomi/push/service/awake/module/ServiceActionAwakeModule;
.super Ljava/lang/Object;
.source "ServiceActionAwakeModule.java"

# interfaces
.implements Lcom/xiaomi/push/service/awake/module/IAwakeModule;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private awakeByServiceAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "awakeInfo"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x3f0

    .line 40
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    const-string v3, "service"

    const-string v4, "argument error"

    invoke-static {p1, v3, v5, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v3, "argument error"

    invoke-static {p1, p4, v5, v3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/xiaomi/push/service/awake/ComponentHelper;->checkService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 49
    const/16 v3, 0x3eb

    const-string v4, "B is not ready"

    invoke-static {p1, p4, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_3
    const/16 v3, 0x3ea

    const-string v4, "B is ready"

    invoke-static {p1, p4, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    const/16 v3, 0x3ec

    const-string v4, "A is ready"

    invoke-static {p1, p4, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v3, "awake_info"

    invoke-static {p4}, Lcom/xiaomi/push/service/awake/AwakeDataHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 61
    .local v1, "name":Landroid/content/ComponentName;
    if-eqz v1, :cond_4

    .line 62
    const/16 v3, 0x3ed

    const-string v4, "A is successful"

    invoke-static {p1, p4, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const/16 v3, 0x3ee

    const-string v4, "The job is finished"

    invoke-static {p1, p4, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_4
    const/16 v3, 0x3f0

    :try_start_1
    const-string v4, "A is fail to help B\'s service"

    invoke-static {p1, p4, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 69
    const-string v3, "A meet a exception when help B\'s service"

    invoke-static {p1, p4, v5, v3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private parseService(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 5
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x3f0

    .line 76
    const-string v1, "awake_info"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "awakeInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    invoke-static {v0}, Lcom/xiaomi/push/service/awake/AwakeDataHelper;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ef

    const-string v3, "play with service successfully"

    invoke-static {v1, v0, v2, v3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "service"

    const-string v3, "B get a incorrect message"

    invoke-static {v1, v2, v4, v3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "service"

    const-string v3, "B get a incorrect message"

    invoke-static {v1, v2, v4, v3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public doAwake(Landroid/content/Context;Lcom/xiaomi/push/service/awake/module/AwakeInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageInfo"    # Lcom/xiaomi/push/service/awake/module/AwakeInfo;

    .prologue
    .line 23
    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p2}, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->getAwakeInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaomi/push/service/awake/module/ServiceActionAwakeModule;->awakeByServiceAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string v0, "service"

    const/16 v1, 0x3f0

    const-string v2, "A receive incorrect message"

    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public doSendAwakeResult(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Landroid/app/Service;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/service/awake/module/ServiceActionAwakeModule;->parseService(Landroid/app/Service;Landroid/content/Intent;)V

    .line 37
    :goto_0
    return-void

    .line 35
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    const-string v0, "service"

    const/16 v1, 0x3f0

    const-string v2, "A receive incorrect message"

    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
