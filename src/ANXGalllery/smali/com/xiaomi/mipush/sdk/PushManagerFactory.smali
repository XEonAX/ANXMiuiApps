.class public Lcom/xiaomi/mipush/sdk/PushManagerFactory;
.super Ljava/lang/Object;
.source "PushManagerFactory.java"


# direct methods
.method public static getManager(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/xiaomi/mipush/sdk/PushManagerFactory;->getManagerByType(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    move-result-object v0

    .line 17
    .local v0, "manager":Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    return-object v0
.end method

.method private static getManagerByType(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/xiaomi/mipush/sdk/AssemblePush;

    .prologue
    .line 21
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper;->getManageClassInfoByType(Lcom/xiaomi/mipush/sdk/AssemblePush;)Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;

    move-result-object v0

    .line 22
    .local v0, "classInfo":Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;->methodName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;->className:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/AssemblePushInfoHelper$ManageClassInfo;->methodName:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xiaomi/channel/commonutils/reflect/JavaCalls;->callStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    .line 25
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
