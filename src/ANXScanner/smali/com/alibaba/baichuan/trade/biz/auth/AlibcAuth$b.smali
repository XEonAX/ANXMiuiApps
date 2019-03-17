.class Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkClient$NetworkRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->c:Z

    return-void
.end method


# virtual methods
.method public onError(ILcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    iget-object v1, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    iget-object v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;)V
    .locals 6

    iget-object v0, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v1, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->isSuccess:Z

    if-nez v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    iget-object v1, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    iget-object v2, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p2, Lcom/alibaba/baichuan/trade/common/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->getInstance()Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;

    move-result-object v1

    const-string v2, "BCPCSDK"

    const-string v3, "Mtop_Auth"

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->getArgs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTracker;->sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->c:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->getInstance()Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->getAuthOldToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    invoke-interface {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;->onSuccess()V

    goto :goto_0

    :cond_4
    const-string v1, "token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/utils/StringUtils;->obj2Long(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->getInstance()Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthInfo;->setToken(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuth$b;->a:Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;

    invoke-interface {v0}, Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;->onSuccess()V

    goto :goto_0
.end method
