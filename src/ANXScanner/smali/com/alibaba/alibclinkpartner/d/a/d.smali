.class public Lcom/alibaba/alibclinkpartner/d/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alibaba/alibclinkpartner/d/a/c;

.field private b:Lcom/alibaba/alibclinkpartner/d/a/g;

.field private final c:Ljava/lang/String;

.field private volatile d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "alibc_linkpartner_config.json"

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->d:J

    const-string v0, "ALPConfigManager"

    const-string v1, "ALPConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521d\u59cb\u5316\u914d\u7f6e\u670d\u52a1,\u5f53\u524d\u7684\u8fc7\u671f\u65f6\u95f4\u4e3aexpiredTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/a/i;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/a/i;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->b:Lcom/alibaba/alibclinkpartner/d/a/g;

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/d/a/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/d/a/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/a/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/d/a/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/a/c;->a(Ljava/lang/String;)Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->a:Lcom/alibaba/alibclinkpartner/d/a/c;

    const-string v0, "ALPConfigManager"

    const-string v1, "ALPConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u5730SP\u5b58\u6709\u914d\u7f6e,\u8bfb\u53d6\u672c\u5730SP\u914d\u7f6e,memConfigInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->a:Lcom/alibaba/alibclinkpartner/d/a/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "ALPConfigManager"

    const-string v1, "ALPConfigManager"

    const-string v2, "\u5f00\u59cb\u62c9\u53d6\u670d\u52a1\u7aef\u914d\u7f6e"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->b:Lcom/alibaba/alibclinkpartner/d/a/g;

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/d/a/d;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alibclinkpartner/d/a/f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/alibclinkpartner/d/a/f;-><init>(Lcom/alibaba/alibclinkpartner/d/a/d;Lcom/alibaba/alibclinkpartner/d/a/e;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/d/a/g;->a(Ljava/lang/String;Lcom/alibaba/alibclinkpartner/d/a/h;)V

    return-void

    :cond_0
    const-string v0, "alibc_config"

    invoke-direct {p0, v0}, Lcom/alibaba/alibclinkpartner/d/a/d;->b(Ljava/lang/String;)V

    const-string v0, "Etag"

    invoke-direct {p0, v0}, Lcom/alibaba/alibclinkpartner/d/a/d;->b(Ljava/lang/String;)V

    const-string v0, "{\n  \"androidAppLinkConfig\": {\n    \"exp\" : \"600\",\n    \"degradeType\" : \"0\",\n    \"canDeeplink\": \"0\",\n    \"appScheme\":{\n      \"tmall\":{\n        \"uri\":\"tmall://page.tm/appLink\",\n        \"action\":[\"com.tmall.wireless.intent.action.APPLINK\"],\n        \"category\":[],\n        \"packageName\":\"com.tmall.wireless\"\n      },\n      \"taobao\":{\n        \"uri\":\"tbopen://m.taobao.com/tbopen/index.html\",\n        \"action\":[\"com.taobao.open.intent.action.GETWAY\"],\n        \"category\":[],\n        \"packageName\":\"com.taobao.taobao\"\n      }\n    },\n    \"h5Scheme\":{\n      \"detail\":\"https://h5.m.taobao.com/awp/core/detail.htm\",\n      \"shop\":\"https://shop.m.taobao.com/shop/shopIndex.htm\",\n      \"activity\":\"https://huodong.m.taobao.com/go/2085.html\"\n    },\n    \"dynamicParam\":{\n      \"k1\":\"v1\"\n    },\n    \"downloadUrl\":{\n      \"taobao\":\"https://h5.m.taobao.com/hd/downLoadAnroidSimple.html\",\n      \"tmall\":\"https://pages.tmall.com/wow/portal/act/app-download\"\n    }\n  }\n}"

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/a/c;->a(Ljava/lang/String;)Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->a:Lcom/alibaba/alibclinkpartner/d/a/c;

    const-string v0, "ALPConfigManager"

    const-string v1, "ALPConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SP\u6ca1\u6709\u914d\u7f6e,\u964d\u7ea7\u8bfb\u53d6\u672c\u5730\u914d\u7f6e,memConfigInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->a:Lcom/alibaba/alibclinkpartner/d/a/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alibclinkpartner/d/a/d;)Lcom/alibaba/alibclinkpartner/d/a/c;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->a:Lcom/alibaba/alibclinkpartner/d/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alibclinkpartner/d/a/d;Lcom/alibaba/alibclinkpartner/d/a/c;)Lcom/alibaba/alibclinkpartner/d/a/c;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->a:Lcom/alibaba/alibclinkpartner/d/a/c;

    return-object p1
.end method

.method private a(J)V
    .locals 7

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x7530

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->d:J

    const-string v0, "ALPConfigManager"

    const-string v1, "updateExpiredTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u66f4\u65b0\u8fc7\u671f\u65f6\u95f4,\u6700\u65b0\u7684\u8fc7\u671f\u65f6\u95f4\u4e3a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alibclinkpartner/d/a/d;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/alibclinkpartner/d/a/d;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alibclinkpartner/d/a/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/alibclinkpartner/d/a/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->e:Lcom/alibaba/alibclinkpartner/d/b/b;

    const-string v1, "alibc_config"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/alibclinkpartner/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private b()V
    .locals 6

    iget-wide v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "ALPConfigManager"

    const-string v1, "updateConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u914d\u7f6e\u9a6c\u4e0a\u8981\u8fc7\u671f,\u89e6\u53d1\u62c9\u53bb\u914d\u7f6e,expiredTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n currentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->d:J

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->b:Lcom/alibaba/alibclinkpartner/d/a/g;

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/d/a/d;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alibclinkpartner/d/a/f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alibaba/alibclinkpartner/d/a/f;-><init>(Lcom/alibaba/alibclinkpartner/d/a/d;Lcom/alibaba/alibclinkpartner/d/a/e;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/d/a/g;->a(Ljava/lang/String;Lcom/alibaba/alibclinkpartner/d/a/h;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->e:Lcom/alibaba/alibclinkpartner/d/b/b;

    invoke-virtual {v0, p1}, Lcom/alibaba/alibclinkpartner/d/b/b;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->e:Lcom/alibaba/alibclinkpartner/d/b/b;

    const-string v1, "alibc_config"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/d/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->h()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "http://100.69.205.47/1/linkout.htm?appKey=12345"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->h()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, "http://100.69.205.47/1/linkout.htm?appKey=12345"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alibaba/alibclinkpartner/constants/a;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/alibaba/alibclinkpartner/d/a/c;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/d/a/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->a:Lcom/alibaba/alibclinkpartner/d/a/c;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/d/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alibclinkpartner/d/a/c;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ALPConfigManager"

    const-string v2, "getMemConfigInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clonenotsupport e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/d;->a:Lcom/alibaba/alibclinkpartner/d/a/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
