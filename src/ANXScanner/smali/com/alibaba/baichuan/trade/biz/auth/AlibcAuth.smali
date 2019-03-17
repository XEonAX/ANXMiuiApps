.class public Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;,
        Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;
    }
.end annotation


# static fields
.field public static final ERR_CODE:I = 0x68

.field public static final ERR_MSG:Ljava/lang/String; = "\u6388\u6743\u670d\u52a1\u521d\u59cb\u5316\u5931\u8d25"

.field static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthRemote;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthRemote;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthRemote;

    invoke-interface {v0, p0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthRemote;->getHintList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    const-class v2, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "authId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;ZZ)V
    .locals 2

    new-instance v0, Lcom/alibaba/baichuan/trade/biz/auth/a;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/alibaba/baichuan/trade/biz/auth/a;-><init>(Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;ZZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static a(Ljava/util/Set;Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->getInstance()Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->getAuthOldToken()Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->HINTLIST_NULL:Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->code:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->HINTLIST_NULL:Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    iget-object v1, v1, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->msg:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/alibaba/baichuan/trade/biz/auth/a/a;

    invoke-direct {v1}, Lcom/alibaba/baichuan/trade/biz/auth/a/a;-><init>()V

    new-instance v2, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;

    invoke-direct {v2, p1, v0, p2}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;-><init>(Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;Ljava/lang/String;Z)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/alibaba/baichuan/trade/biz/auth/a/a;->a(Ljava/util/Set;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;)Z

    goto :goto_0
.end method

.method public static auth(Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;)V
    .locals 4

    invoke-static {p1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->auth(Ljava/util/List;Ljava/lang/String;ZLcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;-><init>(Ljava/lang/String;ZLcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;)V

    iput-object p0, v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p3, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a(Ljava/lang/String;Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;ZZ)V

    goto :goto_0
.end method

.method public static auth(Ljava/util/List;Ljava/lang/String;ZLcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->HINTLIST_NULL:Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    iget-object v0, v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->code:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->HINTLIST_NULL:Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;

    iget-object v1, v1, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->msg:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;-><init>(Ljava/lang/String;ZLcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;)V

    iput-object v0, v1, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$a;->c:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sget-object v3, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    invoke-static {v2}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a(I)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a(Ljava/util/Set;Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;Z)V

    goto :goto_2
.end method

.method public static authRefresh()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v1, v1, v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->a(Ljava/util/Set;Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;Z)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static cleanAuth()V
    .locals 1

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->getInstance()Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->cleanToken()Z

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AliAuthError;->mMtopErrorCode:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "00"

    move-object v4, v0

    :goto_0
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v0

    const-string v1, "BCPCSDK"

    const-string v2, "Mtop_Auth"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->getArgs()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2101"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6388\u6743\u5931\u8d25"

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v4, v0

    goto :goto_0
.end method

.method public static init()Z
    .locals 2

    const-string v0, "Alibc"

    const-string v1, "AlibcAuth init"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/auth/c;->a()Lcom/alibaba/baichuan/trade/biz/auth/c;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth;->setAuthImpl(Lcom/taobao/tao/remotebusiness/auth/IRemoteAuth;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static postHintList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthRemote;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthRemote;

    invoke-interface {v1, p0, v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthRemote;->postHintList(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static registAuthEvent(Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthRemote;)V
    .locals 0

    sput-object p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthRemote;

    return-void
.end method

.method public static unregistAuthEvent()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->b:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthRemote;

    return-void
.end method
