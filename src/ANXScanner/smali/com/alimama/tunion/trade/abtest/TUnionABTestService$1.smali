.class Lcom/alimama/tunion/trade/abtest/TUnionABTestService$1;
.super Ljava/lang/Object;
.source "TUnionABTestService.java"

# interfaces
.implements Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alimama/tunion/trade/abtest/TUnionABTestService;


# direct methods
.method constructor <init>(Lcom/alimama/tunion/trade/abtest/TUnionABTestService;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService$1;->a:Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ABTest request failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alimama/tunion/utils/TUnionUTUtils$Config;->failed(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService$1;->a:Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a(Lcom/alimama/tunion/trade/abtest/TUnionABTestService;Z)Z

    .line 223
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 191
    iget-object v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService$1;->a:Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    invoke-static {v0, v5}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a(Lcom/alimama/tunion/trade/abtest/TUnionABTestService;Z)Z

    .line 192
    iget-object v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService$1;->a:Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a(Lcom/alimama/tunion/trade/abtest/TUnionABTestService;J)J

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ABtest response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alimama/tunion/utils/TULog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    const-string v0, "abtest"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 195
    if-nez v0, :cond_0

    .line 196
    const-string v0, "config"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 198
    :cond_0
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getTUnionCookie()Lcom/alimama/tunion/trade/base/ITUnionCookie;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService$1;->a:Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    invoke-virtual {v2, v0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->getABTestCookies(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "taobaodo cookies\u503c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alimama/tunion/utils/TULog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    if-eqz v1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    const-string v3, ".taobao.com"

    invoke-interface {v1, v3, v2}, Lcom/alimama/tunion/trade/base/ITUnionCookie;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    if-eqz v0, :cond_2

    .line 205
    invoke-static {}, Lcom/alimama/tunion/a/a;->a()Lcom/alimama/tunion/a/a;

    move-result-object v1

    const-string v2, "abtest"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alimama/tunion/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/alimama/tunion/a/a;->a()Lcom/alimama/tunion/a/a;

    move-result-object v1

    const-string v2, "jumpService"

    const-string v3, "jumpService"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alimama/tunion/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/alimama/tunion/a/a;->a()Lcom/alimama/tunion/a/a;

    move-result-object v1

    const-string v2, "loginService"

    const-string v3, "loginService"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alimama/tunion/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_2
    invoke-static {}, Lcom/alimama/tunion/a/a;->a()Lcom/alimama/tunion/a/a;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alimama/tunion/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method
