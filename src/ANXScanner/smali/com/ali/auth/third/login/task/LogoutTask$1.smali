.class Lcom/ali/auth/third/login/task/LogoutTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/login/task/LogoutTask;->a([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/auth/third/login/task/LogoutTask;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/login/task/LogoutTask;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/login/task/LogoutTask$1;->a:Lcom/ali/auth/third/login/task/LogoutTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/auth/third/login/task/LogoutTask$1;->a:Lcom/ali/auth/third/login/task/LogoutTask;

    invoke-static {v0}, Lcom/ali/auth/third/login/task/LogoutTask;->a(Lcom/ali/auth/third/login/task/LogoutTask;)Lcom/ali/auth/third/login/callback/LogoutCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/auth/third/login/callback/LogoutCallback;->onSuccess()V

    return-void
.end method
