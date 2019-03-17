.class Lcom/ali/auth/third/login/LoginServiceImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/auth/third/core/callback/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/login/LoginServiceImpl;->showQrCodeLogin(Ljava/util/Map;Lcom/ali/auth/third/core/callback/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/core/callback/LoginCallback;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/ali/auth/third/login/LoginServiceImpl;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/login/LoginServiceImpl;Lcom/ali/auth/third/core/callback/LoginCallback;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/login/LoginServiceImpl$2;->c:Lcom/ali/auth/third/login/LoginServiceImpl;

    iput-object p2, p0, Lcom/ali/auth/third/login/LoginServiceImpl$2;->a:Lcom/ali/auth/third/core/callback/LoginCallback;

    iput-object p3, p0, Lcom/ali/auth/third/login/LoginServiceImpl$2;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ali/auth/third/login/LoginServiceImpl$2;->c:Lcom/ali/auth/third/login/LoginServiceImpl;

    iget-object v1, p0, Lcom/ali/auth/third/login/LoginServiceImpl$2;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/ali/auth/third/login/LoginServiceImpl$2;->a:Lcom/ali/auth/third/core/callback/LoginCallback;

    invoke-static {v0, v1, v2}, Lcom/ali/auth/third/login/LoginServiceImpl;->a(Lcom/ali/auth/third/login/LoginServiceImpl;Ljava/util/Map;Lcom/ali/auth/third/core/callback/LoginCallback;)V

    return-void
.end method

.method public onSuccess(Lcom/ali/auth/third/core/model/Session;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/auth/third/login/LoginServiceImpl$2;->a:Lcom/ali/auth/third/core/callback/LoginCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/auth/third/login/LoginServiceImpl$2;->a:Lcom/ali/auth/third/core/callback/LoginCallback;

    iget-object v1, p0, Lcom/ali/auth/third/login/LoginServiceImpl$2;->c:Lcom/ali/auth/third/login/LoginServiceImpl;

    invoke-virtual {v1}, Lcom/ali/auth/third/login/LoginServiceImpl;->getSession()Lcom/ali/auth/third/core/model/Session;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/auth/third/core/callback/LoginCallback;->onSuccess(Lcom/ali/auth/third/core/model/Session;)V

    :cond_0
    return-void
.end method
