.class Lcom/alibaba/baichuan/trade/biz/login/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/auth/third/core/callback/LoginCallback;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/login/b;->b:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/login/b;->a:Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    const-string v0, "AlibcLogin"

    const-string v1, "auth\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/b;->b:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    invoke-static {v0, p1}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->a(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;I)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/b;->a:Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/ali/auth/third/core/model/Session;)V
    .locals 2

    const-string v0, "AlibcLogin"

    const-string v1, "auth\u6210\u529f"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/b;->b:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->d(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/b;->a:Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;->onSuccess(I)V

    return-void
.end method
