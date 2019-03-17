.class Lcom/ali/auth/third/core/task/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/core/task/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/core/task/a;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/core/task/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/core/task/a$1;->a:Lcom/ali/auth/third/core/task/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ali/auth/third/core/task/a$1;->a:Lcom/ali/auth/third/core/task/a;

    invoke-static {v0}, Lcom/ali/auth/third/core/task/a;->a(Lcom/ali/auth/third/core/task/a;)Lcom/ali/auth/third/core/callback/InitResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/auth/third/core/task/a$1;->a:Lcom/ali/auth/third/core/task/a;

    invoke-static {v0}, Lcom/ali/auth/third/core/task/a;->a(Lcom/ali/auth/third/core/task/a;)Lcom/ali/auth/third/core/callback/InitResultCallback;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "service register fail"

    invoke-interface {v0, v1, v2}, Lcom/ali/auth/third/core/callback/InitResultCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
