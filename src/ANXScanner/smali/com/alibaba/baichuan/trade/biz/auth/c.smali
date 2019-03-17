.class public Lcom/alibaba/baichuan/trade/biz/auth/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/tao/remotebusiness/auth/IRemoteAuth;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/biz/auth/c$1;,
        Lcom/alibaba/baichuan/trade/biz/auth/c$b;,
        Lcom/alibaba/baichuan/trade/biz/auth/c$a;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/c;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/baichuan/trade/biz/auth/c$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/baichuan/trade/biz/auth/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/baichuan/trade/biz/auth/c;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/auth/c$a;->a:Lcom/alibaba/baichuan/trade/biz/auth/c;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/biz/auth/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/baichuan/trade/biz/auth/c;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/alibaba/baichuan/trade/biz/auth/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/taobao/tao/remotebusiness/auth/AuthListener;)V
    .locals 6

    const-string v0, "Alibc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call authorize authParam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " api_v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/baichuan/trade/biz/auth/c;->a(Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->postHintList(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/baichuan/trade/biz/auth/c$b;

    invoke-direct {v1, p0, p5}, Lcom/alibaba/baichuan/trade/biz/auth/c$b;-><init>(Lcom/alibaba/baichuan/trade/biz/auth/c;Lcom/taobao/tao/remotebusiness/auth/AuthListener;)V

    invoke-static {v0, p3, p4, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->auth(Ljava/util/List;Ljava/lang/String;ZLcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;)V

    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v0

    const-string v1, "BCPCSDK"

    const-string v2, "Hint_List_Error"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->getArgs()Ljava/lang/String;

    move-result-object v3

    const-string v4, "190101"

    const-string v5, "\u6743\u9650\u5217\u8868\u914d\u7f6e\u9519\u8bef"

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;

    invoke-direct {v0, p0, p5}, Lcom/alibaba/baichuan/trade/biz/auth/c$b;-><init>(Lcom/alibaba/baichuan/trade/biz/auth/c;Lcom/taobao/tao/remotebusiness/auth/AuthListener;)V

    invoke-static {p2, p3, p4, v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->auth(Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;)V

    goto :goto_0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->getInstance()Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alibc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthToken = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAuthInfoValid()Z
    .locals 4

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->getInstance()Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->checkAuthToken()Z

    move-result v0

    const-string v1, "Alibc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAuthInfoValid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public declared-synchronized isAuthorizing()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Alibc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAuthorizing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alibaba/baichuan/trade/biz/auth/c;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
