.class public Lcom/xiaomi/push/service/MIPushAppRegisterJob;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "MIPushAppRegisterJob.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private appToken:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private payload:[B

.field private pushService:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "pushService"    # Lcom/xiaomi/push/service/XMPushService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "appToken"    # Ljava/lang/String;
    .param p5, "payload"    # [B

    .prologue
    .line 24
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    .line 25
    iput-object p1, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    .line 26
    iput-object p2, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->packageName:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->payload:[B

    .line 28
    iput-object p3, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->appId:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->appToken:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "register app"

    return-object v0
.end method

.method public process()V
    .locals 8

    .prologue
    .line 35
    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4}, Lcom/xiaomi/push/service/MIPushAccountUtils;->getMIPushAccount(Landroid/content/Context;)Lcom/xiaomi/push/service/MIPushAccount;

    move-result-object v0

    .line 36
    .local v0, "account":Lcom/xiaomi/push/service/MIPushAccount;
    if-nez v0, :cond_0

    .line 38
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    iget-object v5, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->appId:Ljava/lang/String;

    iget-object v7, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->appToken:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/xiaomi/push/service/MIPushAccountUtils;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/MIPushAccount;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 45
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 46
    const-string v4, "no account for mipush"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    const v5, 0x42c1d82

    const-string v6, "no account."

    invoke-static {v4, v5, v6}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyRegisterError(Landroid/content/Context;ILjava/lang/String;)V

    .line 76
    :cond_1
    :goto_1
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 41
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 42
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 49
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v4

    const-string v5, "5"

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClientLoginInfoByChid(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 51
    .local v2, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    const/4 v3, 0x0

    .line 52
    .local v3, "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/service/MIPushAccount;->toClientLoginInfo(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    move-result-object v3

    .line 54
    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v4, v3}, Lcom/xiaomi/push/service/MIPushHelper;->prepareClientLoginInfo(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 55
    invoke-static {}, Lcom/xiaomi/push/service/PushClientsManager;->getInstance()Lcom/xiaomi/push/service/PushClientsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaomi/push/service/PushClientsManager;->addActiveClient(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    .line 60
    :goto_2
    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v4}, Lcom/xiaomi/push/service/XMPushService;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 62
    :try_start_1
    iget-object v4, v3, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v5, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->binded:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v4, v5, :cond_4

    .line 64
    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    iget-object v5, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->payload:[B

    invoke-static {v4, v5, v6}, Lcom/xiaomi/push/service/MIPushHelper;->sendPacket(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    :try_end_1
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 68
    :catch_2
    move-exception v1

    .line 69
    .local v1, "e":Lcom/xiaomi/smack/XMPPException;
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 70
    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v1}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    goto :goto_1

    .line 57
    .end local v1    # "e":Lcom/xiaomi/smack/XMPPException;
    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    check-cast v3, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .restart local v3    # "loginInfo":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    goto :goto_2

    .line 65
    :cond_4
    :try_start_2
    iget-object v4, v3, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->status:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    sget-object v5, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne v4, v5, :cond_1

    .line 66
    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    new-instance v5, Lcom/xiaomi/push/service/XMPushService$BindJob;

    iget-object v6, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6, v3}, Lcom/xiaomi/push/service/XMPushService$BindJob;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/service/XMPushService;->executeJob(Lcom/xiaomi/push/service/XMPushService$Job;)V
    :try_end_2
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 73
    :cond_5
    iget-object v4, p0, Lcom/xiaomi/push/service/MIPushAppRegisterJob;->pushService:Lcom/xiaomi/push/service/XMPushService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/service/XMPushService;->scheduleConnect(Z)V

    goto :goto_1
.end method
