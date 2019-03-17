.class Lcom/alibaba/baichuan/trade/biz/auth/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/biz/auth/AlibcAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/biz/auth/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/taobao/tao/remotebusiness/auth/AuthListener;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/auth/c;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/auth/c;Lcom/taobao/tao/remotebusiness/auth/AuthListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;->b:Lcom/alibaba/baichuan/trade/biz/auth/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;->a:Lcom/taobao/tao/remotebusiness/auth/AuthListener;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;->b:Lcom/alibaba/baichuan/trade/biz/auth/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/c;->a(Lcom/alibaba/baichuan/trade/biz/auth/c;Z)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;->a:Lcom/taobao/tao/remotebusiness/auth/AuthListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;->a:Lcom/taobao/tao/remotebusiness/auth/AuthListener;

    const-string v1, "FAIL_SYS_ACCESS_TOKEN_CANCEL"

    const-string v2, "\u7528\u6237\u53d6\u6d88\u6388\u6743"

    invoke-interface {v0, v1, v2}, Lcom/taobao/tao/remotebusiness/auth/AuthListener;->onAuthCancel(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;->b:Lcom/alibaba/baichuan/trade/biz/auth/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/c;->a(Lcom/alibaba/baichuan/trade/biz/auth/c;Z)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;->a:Lcom/taobao/tao/remotebusiness/auth/AuthListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;->a:Lcom/taobao/tao/remotebusiness/auth/AuthListener;

    invoke-interface {v0, p1, p2}, Lcom/taobao/tao/remotebusiness/auth/AuthListener;->onAuthFail(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReTry()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;->b:Lcom/alibaba/baichuan/trade/biz/auth/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/c;->a(Lcom/alibaba/baichuan/trade/biz/auth/c;Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;->b:Lcom/alibaba/baichuan/trade/biz/auth/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/biz/auth/c;->a(Lcom/alibaba/baichuan/trade/biz/auth/c;Z)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;->a:Lcom/taobao/tao/remotebusiness/auth/AuthListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/auth/c$b;->a:Lcom/taobao/tao/remotebusiness/auth/AuthListener;

    invoke-interface {v0}, Lcom/taobao/tao/remotebusiness/auth/AuthListener;->onAuthSuccess()V

    :cond_0
    return-void
.end method
