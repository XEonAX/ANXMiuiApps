.class public Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;
.super Ljava/lang/Object;
.source "MiPushClient4Hybrid.java"


# static fields
.field private static dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private static sCallback:Lcom/xiaomi/mipush/sdk/MiPushClientCallbackV2;

.field private static sRegisterTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->dataMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->sRegisterTimeMap:Ljava/util/Map;

    return-void
.end method

.method private static isPlatformMessage(Lcom/xiaomi/mipush/sdk/MiPushMessage;)Z
    .locals 3
    .param p0, "message"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, ""

    .line 377
    .local v0, "action":Ljava/lang/String;
    :goto_0
    const-string v1, "platform_message"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 376
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v1

    const-string v2, "push_server_action"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public static onNotificationMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appPackage"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->isPlatformMessage(Lcom/xiaomi/mipush/sdk/MiPushMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->onPlatformNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    goto :goto_0

    .line 309
    :cond_2
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->sCallback:Lcom/xiaomi/mipush/sdk/MiPushClientCallbackV2;

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->sCallback:Lcom/xiaomi/mipush/sdk/MiPushClientCallbackV2;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/MiPushClientCallbackV2;->onNotificationMessageClicked(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    goto :goto_0
.end method

.method private static onPlatformNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "web_uri"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 326
    .local v3, "webUri":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v4

    const-string v5, "intent_uri"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 327
    .local v2, "intentUri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 328
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 337
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 338
    const-string/jumbo v4, "web uri and intent uri all are empty"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 347
    :goto_1
    return-void

    .line 330
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 332
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v4, "intent uri parse failed"

    invoke-static {v4, v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 341
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_2
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 343
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 344
    :catch_1
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "start activity failed from web uri or intent uri"

    invoke-static {v4, v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "regResult"    # Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "appPackage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->getErrorCode()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->dataMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;

    .line 243
    .local v8, "data":Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;
    if-eqz v8, :cond_0

    .line 244
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regSecret:Ljava/lang/String;

    invoke-virtual {v8, v0, v2}, Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;->setHybridRegIdAndSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/AppInfoHolder;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/mipush/sdk/AppInfoHolder;->saveHybridAppInfo(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;)V

    .line 249
    .end local v8    # "data":Lcom/xiaomi/mipush/sdk/AppInfoHolder$ClientInfoData;
    :cond_0
    const/4 v1, 0x0

    .line 250
    .local v1, "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .restart local v1    # "cmdArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->regId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_REGISTER:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v0, v0, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->errorCode:J

    iget-object v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;->reason:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v7

    .line 258
    .local v7, "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->sCallback:Lcom/xiaomi/mipush/sdk/MiPushClientCallbackV2;

    if-eqz v0, :cond_2

    .line 259
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->sCallback:Lcom/xiaomi/mipush/sdk/MiPushClientCallbackV2;

    invoke-virtual {v0, v6, v7}, Lcom/xiaomi/mipush/sdk/MiPushClientCallbackV2;->onReceiveRegisterResult(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    .line 261
    :cond_2
    return-void
.end method

.method public static onReceiveUnregisterResult(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "unregResult"    # Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    .prologue
    const/4 v1, 0x0

    .line 265
    sget-object v0, Lcom/xiaomi/push/service/xmpush/Command;->COMMAND_UNREGISTER:Lcom/xiaomi/push/service/xmpush/Command;

    iget-object v0, v0, Lcom/xiaomi/push/service/xmpush/Command;->value:Ljava/lang/String;

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->errorCode:J

    iget-object v4, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->reason:Ljava/lang/String;

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHelper;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v7

    .line 269
    .local v7, "commandMessage":Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 270
    .local v6, "appPackage":Ljava/lang/String;
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->sCallback:Lcom/xiaomi/mipush/sdk/MiPushClientCallbackV2;

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/xiaomi/mipush/sdk/MiPushClient4Hybrid;->sCallback:Lcom/xiaomi/mipush/sdk/MiPushClientCallbackV2;

    invoke-virtual {v0, v6, v7}, Lcom/xiaomi/mipush/sdk/MiPushClientCallbackV2;->onReceiveUnregisterResult(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    .line 273
    :cond_0
    return-void
.end method
