.class public Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo$1;,
        Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J


# direct methods
.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->a:Ljava/lang/String;

    iput-wide v2, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->b:J

    iput-wide v2, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->c:J

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    const-string v0, "BC_AuthToken"

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/cache/CacheUtils;->getDecryptedCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/JSONUtils;->getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "AuthToken"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->a:Ljava/lang/String;

    const-string v1, "TokenExpires"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/JSONUtils;->optLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->b:J

    const-string v1, "RefreshTime"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/JSONUtils;->optLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->c:J

    :cond_0
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "AuthToken"

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "TokenExpires"

    iget-wide v2, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->b:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "RefreshTime"

    iget-wide v2, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo$a;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;

    return-object v0
.end method


# virtual methods
.method public checkAuthToken()Z
    .locals 4

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized cleanToken()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->b:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->c:J

    const-string v0, "BC_AuthToken"

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->getInstance()Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;

    move-result-object v1

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/cache/CacheUtils;->asyncPutEncryptedCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAuthOldToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->checkAuthToken()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->c:J

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->authRefresh()V

    const-string v0, "alibc"

    const-string v1, "authRefresh"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized setToken(Ljava/lang/String;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "alibc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->c:J

    const-string v0, "BC_AuthToken"

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->getInstance()Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;

    move-result-object v1

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/cache/CacheUtils;->asyncPutEncryptedCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
