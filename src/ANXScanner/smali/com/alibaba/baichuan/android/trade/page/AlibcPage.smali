.class public Lcom/alibaba/baichuan/android/trade/page/AlibcPage;
.super Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;


# instance fields
.field public additionalHttpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;-><init>()V

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "^\\d+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/baichuan/trade/common/adapter/security/AlibcSecurityGuard;->analyzeItemId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method private a()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/alibaba/baichuan/android/trade/AlibcContext;->detailPatterns:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/alibaba/baichuan/android/trade/AlibcContext;->shopPatterns:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private c()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/alibaba/baichuan/android/trade/AlibcContext;->tunionUrlPatterns:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkParams()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public genOpenUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdditionalHttpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->additionalHttpHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/core/usertracker/UserTrackerConstants;->E_SHOWPAGE:Ljava/lang/String;

    return-object v0
.end method

.method public getApplinkData()Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;
    .locals 3

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->genOpenUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;-><init>(ILjava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "shop_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AlibcPage"

    const-string v2, "uri parse error"

    invoke-static {v1, v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    invoke-super {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->getApplinkData()Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->genOpenUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-direct {p0, v0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/alibaba/baichuan/trade/biz/applink/AlibcApplinkData;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "AlibcPage"

    const-string v2, "uri parse error"

    invoke-static {v1, v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    :try_start_2
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_3
.end method

.method public needTaoke(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->isAdZoneIdExist()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->isAdZoneIdExist()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public taokeTraceAndGenUrl(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeContext;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/alibaba/baichuan/android/trade/AlibcContext;->detailPatterns:[Ljava/lang/String;

    array-length v4, v2

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v2, v1

    iget-object v6, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    const-string v0, "(\\?|&)id=([^&?]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "itemId"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->INSTANCE:Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->genOpenUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;->getApi()Ljava/lang/String;

    move-result-object v5

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcPidTaokeComponent;->genUrlAndTaokeTrace(Ljava/util/HashMap;Ljava/lang/String;ZLcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeTraceCallback;)V

    goto :goto_0
.end method
