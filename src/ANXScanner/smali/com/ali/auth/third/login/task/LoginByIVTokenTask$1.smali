.class Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ali/auth/third/login/task/LoginByIVTokenTask;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/login/task/LoginByIVTokenTask;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;->c:Lcom/ali/auth/third/login/task/LoginByIVTokenTask;

    iput p2, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;->a:I

    iput-object p3, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "message"

    iget-object v2, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v0, Lcom/ali/auth/third/core/service/UserTrackerService;

    invoke-static {v0}, Lcom/ali/auth/third/core/context/KernelContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/service/UserTrackerService;

    sget-object v2, Lcom/ali/auth/third/login/UTConstants;->E_H5_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/ali/auth/third/core/service/UserTrackerService;->send(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;->c:Lcom/ali/auth/third/login/task/LoginByIVTokenTask;

    invoke-static {v0}, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a(Lcom/ali/auth/third/login/task/LoginByIVTokenTask;)Lcom/ali/auth/third/core/callback/LoginCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;->c:Lcom/ali/auth/third/login/task/LoginByIVTokenTask;

    invoke-static {v0}, Lcom/ali/auth/third/login/task/LoginByIVTokenTask;->a(Lcom/ali/auth/third/login/task/LoginByIVTokenTask;)Lcom/ali/auth/third/core/callback/LoginCallback;

    move-result-object v0

    iget v1, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;->a:I

    iget-object v2, p0, Lcom/ali/auth/third/login/task/LoginByIVTokenTask$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ali/auth/third/core/callback/LoginCallback;->onFailure(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
