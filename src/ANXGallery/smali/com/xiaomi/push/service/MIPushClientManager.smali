.class public Lcom/xiaomi/push/service/MIPushClientManager;
.super Ljava/lang/Object;
.source "MIPushClientManager.java"


# static fields
.field private static pendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field private static final pendingRegisterationRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/MIPushClientManager;->pendingRegisterationRequests:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/MIPushClientManager;->pendingMessages:Ljava/util/ArrayList;

    return-void
.end method

.method public static addPendingMessages(Ljava/lang/String;[B)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "message"    # [B

    .prologue
    .line 72
    sget-object v1, Lcom/xiaomi/push/service/MIPushClientManager;->pendingMessages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/MIPushClientManager;->pendingMessages:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/xiaomi/push/service/MIPushClientManager;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_0

    .line 75
    sget-object v0, Lcom/xiaomi/push/service/MIPushClientManager;->pendingMessages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 77
    :cond_0
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "payload"    # [B
    .param p3, "errorCode"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "mipush_payload"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 84
    const-string v1, "mipush_error_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v1, "mipush_error_msg"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-static {p1}, Lcom/xiaomi/push/service/MIPushHelper;->getReceiverPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static notifyRegisterError(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v2, Lcom/xiaomi/push/service/MIPushClientManager;->pendingRegisterationRequests:Ljava/util/Map;

    monitor-enter v2

    .line 46
    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/MIPushClientManager;->pendingRegisterationRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcom/xiaomi/push/service/MIPushClientManager;->pendingRegisterationRequests:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {p0, v0, v1, p1, p2}, Lcom/xiaomi/push/service/MIPushClientManager;->notifyError(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/push/service/MIPushClientManager;->pendingRegisterationRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 50
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    return-void
.end method

.method public static processPendingMessages(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 6
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;[B>;>;"
    :try_start_0
    sget-object v4, Lcom/xiaomi/push/service/MIPushClientManager;->pendingMessages:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    sget-object v2, Lcom/xiaomi/push/service/MIPushClientManager;->pendingMessages:Ljava/util/ArrayList;

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/xiaomi/push/service/MIPushClientManager;->pendingMessages:Ljava/util/ArrayList;

    .line 61
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 63
    .local v1, "m":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [B

    invoke-static {p0, v3, v4}, Lcom/xiaomi/push/service/MIPushHelper;->sendPacket(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    :try_end_2
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 65
    .end local v1    # "m":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lcom/xiaomi/smack/XMPPException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 67
    const/16 v3, 0xa

    invoke-virtual {p0, v3, v0}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    .line 69
    .end local v0    # "e":Lcom/xiaomi/smack/XMPPException;
    :cond_0
    return-void

    .line 61
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public static processPendingRegistrationRequest(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 5
    .param p0, "pushService"    # Lcom/xiaomi/push/service/XMPushService;

    .prologue
    .line 27
    :try_start_0
    sget-object v3, Lcom/xiaomi/push/service/MIPushClientManager;->pendingRegisterationRequests:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    sget-object v2, Lcom/xiaomi/push/service/MIPushClientManager;->pendingRegisterationRequests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    .local v1, "packageName":Ljava/lang/String;
    sget-object v2, Lcom/xiaomi/push/service/MIPushClientManager;->pendingRegisterationRequests:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {p0, v1, v2}, Lcom/xiaomi/push/service/MIPushHelper;->sendPacket(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V

    goto :goto_0

    .line 32
    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Lcom/xiaomi/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lcom/xiaomi/smack/XMPPException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 35
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->disconnect(ILjava/lang/Exception;)V

    .line 37
    .end local v0    # "e":Lcom/xiaomi/smack/XMPPException;
    :goto_1
    return-void

    .line 31
    :cond_0
    :try_start_3
    sget-object v2, Lcom/xiaomi/push/service/MIPushClientManager;->pendingRegisterationRequests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 32
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static registerApp(Ljava/lang/String;[B)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "payload"    # [B

    .prologue
    .line 20
    sget-object v1, Lcom/xiaomi/push/service/MIPushClientManager;->pendingRegisterationRequests:Ljava/util/Map;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/MIPushClientManager;->pendingRegisterationRequests:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    monitor-exit v1

    .line 23
    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
