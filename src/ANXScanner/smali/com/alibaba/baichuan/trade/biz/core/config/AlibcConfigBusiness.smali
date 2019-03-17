.class public Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$1;,
        Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;
    }
.end annotation


# static fields
.field public static final CHECK_GROUP_NAME:Ljava/lang/String; = "group0"

.field public static final EM_ANALYSE_FAILURE:Ljava/lang/String; = "\u89e3\u6790\u9519\u8bef"

.field public static final EM_CHECK_FAILURE:Ljava/lang/String; = "\u6821\u9a8c\u9519\u8bef"

.field public static final EM_NETWORK_ERROR:Ljava/lang/String; = "\u7f51\u7edc\u9519\u8bef"

.field public static final MD5_SALT:Ljava/lang/String; = "ALITRADE20160628"

.field public static final SIGN_KEY:Ljava/lang/String; = "sign"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;

.field private final d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a:Ljava/lang/String;

    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->d:J

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->c:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->b()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "\u6821\u9a8c\u9519\u8bef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Fetch_Config"

    const-string v1, "\u6821\u9a8c\u9519\u8bef"

    const-string v2, "130101"

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "\u89e3\u6790\u9519\u8bef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fetch_Config"

    const-string v1, "\u89e3\u6790\u9519\u8bef"

    const-string v2, "130102"

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Fetch_Config"

    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1301"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->removeCheckGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->b(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->restoreCheckGroup()V

    iget-object v0, p1, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->config:Ljava/util/Map;

    const-string v2, "group0"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v2, "sign"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;)Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->config:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigAdapter;->config:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "ALITRADE20160628"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcCodeUtils;->md5Digest([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AlibcConfigBusiness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u751f\u6210\u6458\u8981\u9519\u8bef"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b()V
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->d()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->c:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->getInstance()Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;

    move-result-object v0

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/core/config/a;

    invoke-direct {v1, p0}, Lcom/alibaba/baichuan/trade/biz/core/config/a;-><init>(Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/ExecutorServiceUtils;->postDelayTask(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private d()V
    .locals 1

    const-string v0, "Fetch_Config"

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilitySuccess(Ljava/lang/String;)V

    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$1;->a:[I

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getEnvironment()Lcom/alibaba/baichuan/trade/common/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/baichuan/trade/common/Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "https://nbsdk-baichuan.alicdn.com/%s/%s/%s/meta.htm?plat=android"

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/AlibcTradeBiz;->systemVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1.0.0"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "http://100.69.205.47/%s/%s/%s/meta.htm?plat=android"

    goto :goto_0

    :pswitch_1
    const-string v0, "http://100.69.205.47/%s/%s/%s/meta.htm?plat=android"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public startProcessor()V
    .locals 2

    const-string v0, "AlibcConfigBusiness"

    const-string v1, "\u5f00\u542f\u62c9\u53d6\u7f51\u7edc\u914d\u7f6e"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/network/NetworkUtils;->isNetworkAvaiable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness;->c:Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;

    const-string v1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u65e0\u6cd5\u62c9\u53d6config\u914d\u7f6e"

    invoke-interface {v0, v1}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigBusiness$ConfigPullCallback;->onError(Ljava/lang/String;)V

    const-string v0, "AlibcConfigBusiness"

    const-string v1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u65e0\u6cd5\u62c9\u53d6config\u914d\u7f6e"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
