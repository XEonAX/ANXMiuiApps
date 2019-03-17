.class Lcom/xiaomi/push/service/awake/module/ProviderAwakeModule;
.super Ljava/lang/Object;
.source "ProviderAwakeModule.java"

# interfaces
.implements Lcom/xiaomi/push/service/awake/module/IAwakeModule;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private awakeByProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "awakeInfo"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x3f0

    .line 35
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    const-string v3, "provider"

    const-string v4, "argument error"

    invoke-static {p1, v3, v5, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v3, "argument error"

    invoke-static {p1, p3, v5, v3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/awake/ComponentHelper;->checkProvider(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 44
    const/16 v3, 0x3eb

    const-string v4, "B is not ready"

    invoke-static {p1, p3, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_3
    const/16 v3, 0x3ea

    const-string v4, "B is ready"

    invoke-static {p1, p3, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    const/16 v3, 0x3ec

    const-string v4, "A is ready"

    invoke-static {p1, p3, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 50
    invoke-static {p3}, Lcom/xiaomi/push/service/awake/AwakeDataHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "info":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p2, v1}, Lcom/xiaomi/push/service/awake/AwakeDataHelper;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "success"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 55
    const/16 v3, 0x3ed

    const-string v4, "A is successful"

    invoke-static {p1, p3, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/16 v3, 0x3ee

    const-string v4, "The job is finished"

    invoke-static {p1, p3, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    const/16 v3, 0x3f0

    :try_start_1
    const-string v4, "A is fail to help B\'s provider"

    invoke-static {p1, p3, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 66
    const-string v3, "A meet a exception when help B\'s provider"

    invoke-static {p1, p3, v5, v3}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/16 v3, 0x3f0

    :try_start_2
    const-string v4, "info is empty"

    invoke-static {p1, p3, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private parseProvider(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x3f0

    .line 74
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    .line 75
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "strs":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_3

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 77
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 78
    .local v0, "awakeInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    const-string v3, "provider"

    const/16 v4, 0x3f0

    const-string v5, "B get a incorrect message"

    invoke-static {p1, v3, v4, v5}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    .end local v0    # "awakeInfo":Ljava/lang/String;
    .end local v2    # "strs":[Ljava/lang/String;
    :goto_0
    return-void

    .line 82
    .restart local v0    # "awakeInfo":Ljava/lang/String;
    .restart local v2    # "strs":[Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    const-string v3, "provider"

    const/16 v4, 0x3f0

    const-string v5, "B get a incorrect message"

    invoke-static {p1, v3, v4, v5}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v0    # "awakeInfo":Ljava/lang/String;
    .end local v2    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "provider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "B meet a exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v6, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "awakeInfo":Ljava/lang/String;
    .restart local v2    # "strs":[Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/xiaomi/push/service/awake/AwakeDataHelper;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 89
    const/16 v3, 0x3ef

    const-string v4, "play with provider successfully"

    invoke-static {p1, v0, v3, v4}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    const-string v3, "provider"

    const/16 v4, 0x3f0

    const-string v5, "B get a incorrect message"

    invoke-static {p1, v3, v4, v5}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0    # "awakeInfo":Ljava/lang/String;
    :cond_3
    const-string v3, "provider"

    const/16 v4, 0x3f0

    const-string v5, "B get a incorrect message"

    invoke-static {p1, v3, v4, v5}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v2    # "strs":[Ljava/lang/String;
    :cond_4
    const-string v3, "provider"

    const/16 v4, 0x3f0

    const-string v5, "B get a incorrect message"

    invoke-static {p1, v3, v4, v5}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public doAwake(Landroid/content/Context;Lcom/xiaomi/push/service/awake/module/AwakeInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageInfo"    # Lcom/xiaomi/push/service/awake/module/AwakeInfo;

    .prologue
    .line 22
    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p2}, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/push/service/awake/module/AwakeInfo;->getAwakeInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/push/service/awake/module/ProviderAwakeModule;->awakeByProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v0, "provider"

    const/16 v1, 0x3f0

    const-string v2, "A receive incorrect message"

    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/push/service/awake/AwakeUploadHelper;->uploadData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public doSendAwakeResult(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p3}, Lcom/xiaomi/push/service/awake/module/ProviderAwakeModule;->parseProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method
