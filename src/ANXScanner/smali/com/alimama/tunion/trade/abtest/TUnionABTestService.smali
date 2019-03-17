.class public Lcom/alimama/tunion/trade/abtest/TUnionABTestService;
.super Ljava/lang/Object;
.source "TUnionABTestService.java"


# static fields
.field public static final TUNION_KEY_SDK_COOKIE:Ljava/lang/String; = "sdk_param"


# instance fields
.field private a:J

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a:J

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->b:Z

    .line 47
    iput-boolean v2, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->c:Z

    .line 49
    iput-boolean v2, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->d:Z

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alimama/tunion/trade/abtest/TUnionABTestService;J)J
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;)Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;
    .locals 1

    .prologue
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-object p2

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->YES:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->NO:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    if-eqz p1, :cond_3

    .line 261
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 262
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 269
    const-string v4, "%s:%s,"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 275
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_1
    return-object v0

    :cond_3
    invoke-direct {p0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->b:Z

    .line 183
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getTUnionNetwork()Lcom/alimama/tunion/trade/base/ITUnionNetwork;

    move-result-object v0

    .line 184
    instance-of v1, v0, Lcom/alimama/tunion/trade/base/ITUnionNetworkMtop;

    invoke-static {v1}, Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;->createABTestRequest(Z)Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;

    move-result-object v1

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionUTUtils$Config;->start()V

    .line 187
    const-string v2, "config is calling..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/alimama/tunion/utils/TULog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance v2, Lcom/alimama/tunion/trade/abtest/TUnionABTestService$1;

    invoke-direct {v2, p0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService$1;-><init>(Lcom/alimama/tunion/trade/abtest/TUnionABTestService;)V

    invoke-interface {v0, v1, v2}, Lcom/alimama/tunion/trade/base/ITUnionNetwork;->sendRequest(Lcom/alimama/tunion/trade/net/TUnionNetworkRequest;Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;)V

    .line 226
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alimama/tunion/trade/abtest/TUnionABTestService;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->b:Z

    return p1
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return p2

    .line 124
    :cond_1
    const-string v2, "true"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move p2, v0

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    const-string v2, "yes"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move p2, v0

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    const-string v0, "no"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move p2, v1

    .line 129
    goto :goto_0

    .line 130
    :cond_4
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move p2, v1

    .line 131
    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->b:Z

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a()V

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    const-string v0, "abtest:nouse"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v0, ",mcid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getMcid()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getInstance()Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/utils/TUnionPhoneInfoUtils;->getCid()Ljava/lang/String;

    move-result-object v0

    .line 293
    if-nez v1, :cond_0

    const-string v1, ""

    .line 294
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 296
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, ",cid:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public enable(Z)V
    .locals 3

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->c:Z

    .line 144
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->c:Z

    if-nez v0, :cond_1

    .line 145
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getTUnionCookie()Lcom/alimama/tunion/trade/base/ITUnionCookie;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    const-string v1, ".taobao.com"

    invoke-direct {p0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alimama/tunion/trade/base/ITUnionCookie;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-static {}, Lcom/alimama/tunion/a/a;->a()Lcom/alimama/tunion/a/a;

    move-result-object v0

    const-string v1, "abtest"

    invoke-direct {p0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alimama/tunion/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/alimama/tunion/a/a;->a()Lcom/alimama/tunion/a/a;

    move-result-object v0

    const-string v1, "jumpService"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alimama/tunion/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/alimama/tunion/a/a;->a()Lcom/alimama/tunion/a/a;

    move-result-object v0

    const-string v1, "loginService"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alimama/tunion/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->b()V

    goto :goto_0
.end method

.method public getABTestCookies(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    :goto_0
    const-string v1, "%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "sdk_param"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public getABTestValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->c:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/alimama/tunion/a/a;->a()Lcom/alimama/tunion/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alimama/tunion/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-direct {p0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->b()V

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJumpType(Lcom/alimama/tunion/trade/convert/TUnionJumpType;)Lcom/alimama/tunion/trade/convert/TUnionJumpType;
    .locals 3

    .prologue
    .line 95
    sget-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->INVALID:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    .line 96
    invoke-static {}, Lcom/alimama/tunion/a/a;->a()Lcom/alimama/tunion/a/a;

    move-result-object v1

    const-string v2, "jumpService"

    invoke-virtual {v1, v2}, Lcom/alimama/tunion/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    sget-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->INVALID:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    invoke-direct {p0, v1, v0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a(Ljava/lang/String;Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;)Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    move-result-object v0

    .line 101
    :cond_0
    sget-object v1, Lcom/alimama/tunion/trade/abtest/TUnionABTestService$2;->a:[I

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-object p1

    .line 103
    :pswitch_0
    sget-object p1, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->NATIVE:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    goto :goto_0

    .line 105
    :pswitch_1
    sget-object p1, Lcom/alimama/tunion/trade/convert/TUnionJumpType;->H5:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->c:Z

    return v0
.end method

.method public isJumpServiceOn()Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->c:Z

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->INVALID:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    .line 84
    :goto_0
    return-object v0

    .line 80
    :cond_0
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getABTestService()Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    const-string v1, "jumpService"

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->getABTestValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->INVALID:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    invoke-direct {p0, v0, v1}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a(Ljava/lang/String;Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;)Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    sget-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->INVALID:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    goto :goto_0
.end method

.method public isSsoLoginServiceOn()Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;
    .locals 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->c:Z

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->INVALID:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    .line 68
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-static {}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getInstance()Lcom/alimama/tunion/trade/TUnionTradeSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/tunion/trade/TUnionTradeSDK;->getABTestService()Lcom/alimama/tunion/trade/abtest/TUnionABTestService;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    const-string v1, "loginService"

    invoke-virtual {v0, v1}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->getABTestValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->INVALID:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    invoke-direct {p0, v0, v1}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->a(Ljava/lang/String;Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;)Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    sget-object v0, Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;->INVALID:Lcom/alimama/tunion/trade/abtest/TUnionABTestValue;

    goto :goto_0
.end method

.method public startInitialFetch()V
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->d:Z

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->d:Z

    .line 243
    invoke-direct {p0}, Lcom/alimama/tunion/trade/abtest/TUnionABTestService;->b()V

    .line 245
    :cond_0
    return-void
.end method
