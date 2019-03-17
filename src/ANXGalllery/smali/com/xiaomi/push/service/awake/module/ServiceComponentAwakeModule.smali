.class Lcom/xiaomi/push/service/awake/module/ServiceComponentAwakeModule;
.super Ljava/lang/Object;
.source "ServiceComponentAwakeModule.java"

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

.method private awakeByServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "awakeInfo"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x3f0

    .line 36
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    const-string v3, "service"

    const-string v4, "argument error"

    invoke-static {p1, v3, v5, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string v3, "argument error"

    invoke-static {p1, p4, v5, v3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/awake/ComponentHelper;->checkService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 45
    const/16 v3, 0x3eb

    const-string v4, "B is not ready"

    invoke-static {p1, p4, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_3
    const/16 v3, 0x3ea

    const-string v4, "B is ready"

    invoke-static {p1, p4, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 50
    const/16 v3, 0x3ec

    const-string v4, "A is ready"

    invoke-static {p1, p4, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v3, "com.xiaomi.mipush.sdk.WAKEUP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v3, "waker_pkgname"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v3, "awake_info"

    invoke-static {p4}, Lcom/xiaomi/push/service/awake/AwakeDataHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 58
    .local v1, "name":Landroid/content/ComponentName;
    if-eqz v1, :cond_4

    .line 59
    const/16 v3, 0x3ed

    const-string v4, "A is successful"

    invoke-static {p1, p4, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/16 v3, 0x3ee

    const-string v4, "The job is finished"

    invoke-static {p1, p4, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_4
    const/16 v3, 0x3f0

    :try_start_1
    const-string v4, "A is fail to help B\'s service"

    invoke-static {p1, p4, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 66
    const-string v3, "A meet a exception when help B\'s service"

    invoke-static {p1, p4, v5, v3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private parseService(Landroid/app/Service;Landroid/content/Intent;)V
    .locals 6
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x3ef

    .line 78
    const-string v2, "com.xiaomi.mipush.sdk.WAKEUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string/jumbo v2, "waker_pkgname"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "awake_info"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "awakeInfo":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "service"

    const-string v4, "old version message"

    invoke-static {v2, v3, v5, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    .end local v0    # "awakeInfo":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local v0    # "awakeInfo":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    invoke-static {v0}, Lcom/xiaomi/push/service/awake/AwakeDataHelper;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "old version message "

    invoke-static {v2, v0, v5, v3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "service"

    const/16 v4, 0x3f0

    const-string v5, "B get a incorrect message"

    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "play with service "

    invoke-static {v2, v1, v5, v3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

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

    invoke-virtual {p2}, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->getAwakeInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaomi/push/service/awake/module/ServiceComponentAwakeModule;->awakeByServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method

.method public doSendAwakeResult(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Landroid/app/Service;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/service/awake/module/ServiceComponentAwakeModule;->parseService(Landroid/app/Service;Landroid/content/Intent;)V

    .line 33
    :cond_0
    return-void
.end method
