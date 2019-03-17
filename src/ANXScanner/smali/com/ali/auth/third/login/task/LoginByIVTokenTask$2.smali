.class Lcom/ali/auth/third/login/task/LoginByIVTokenTask$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/login/task/LoginByIVTokenTask;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/login/task/LoginByIVTokenTask;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$2;->a:Lcom/ali/auth/third/login/task/LoginByIVTokenTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$2;->a:Lcom/ali/auth/third/login/task/LoginByIVTokenTask;

    invoke-static {v0}, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a(Lcom/ali/auth/third/login/task/LoginByIVTokenTask;)Lcom/ali/auth/third/core/callback/LoginCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$2;->a:Lcom/ali/auth/third/login/task/LoginByIVTokenTask;

    invoke-static {v0}, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a(Lcom/ali/auth/third/login/task/LoginByIVTokenTask;)Lcom/ali/auth/third/core/callback/LoginCallback;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/context/KernelContext;->credentialService:Lcom/ali/auth/third/core/service/CredentialService;

    invoke-interface {v1}, Lcom/ali/auth/third/core/service/CredentialService;->getSession()Lcom/ali/auth/third/core/model/Session;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/auth/third/core/callback/LoginCallback;->onSuccess(Lcom/ali/auth/third/core/model/Session;)V

    :cond_0
    return-void
.end method
