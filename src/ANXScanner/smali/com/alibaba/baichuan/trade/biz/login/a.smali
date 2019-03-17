.class Lcom/alibaba/baichuan/trade/biz/login/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/auth/third/core/callback/InitResultCallback;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;

.field final synthetic b:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/login/a;->b:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/biz/login/a;->a:Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3

    const-string v0, "AlibcLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemberSDK init error, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/a;->a:Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;->onFailure(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/a;->b:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->a(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;Z)Z

    return-void
.end method

.method public onSuccess()V
    .locals 3

    const-string v0, "AlibcLogin"

    const-string v1, "MemberSDK init success"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/login/a;->b:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    const-class v0, Lcom/ali/auth/third/login/LoginService;

    invoke-static {v0}, Lcom/ali/auth/third/core/MemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/login/LoginService;

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->a(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;Lcom/ali/auth/third/login/LoginService;)Lcom/ali/auth/third/login/LoginService;

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/a;->b:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->a(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;)Lcom/ali/auth/third/login/LoginService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/a;->a:Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;->onSuccess(I)V

    :goto_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/a;->b:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->a(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/login/a;->a:Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/login/a;->b:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    invoke-static {v1}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->b(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/biz/login/a;->b:Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;

    invoke-static {v2}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;->c(Lcom/alibaba/baichuan/trade/biz/login/AlibcLogin;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/trade/biz/login/AlibcLoginCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_0
.end method
