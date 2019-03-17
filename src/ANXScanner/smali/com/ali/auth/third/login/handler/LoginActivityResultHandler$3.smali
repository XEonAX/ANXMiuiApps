.class Lcom/ali/auth/third/login/handler/LoginActivityResultHandler$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/login/handler/LoginActivityResultHandler;->a(Landroid/content/Intent;Lcom/ali/auth/third/core/callback/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/ali/auth/third/core/callback/LoginCallback;

.field final synthetic c:Lcom/ali/auth/third/login/handler/LoginActivityResultHandler;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/login/handler/LoginActivityResultHandler;Ljava/lang/ref/WeakReference;Lcom/ali/auth/third/core/callback/LoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/auth/third/login/handler/LoginActivityResultHandler$3;->c:Lcom/ali/auth/third/login/handler/LoginActivityResultHandler;

    iput-object p2, p0, Lcom/ali/auth/third/login/handler/LoginActivityResultHandler$3;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/ali/auth/third/login/handler/LoginActivityResultHandler$3;->b:Lcom/ali/auth/third/core/callback/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ali/auth/third/login/handler/LoginActivityResultHandler$3;->a:Ljava/lang/ref/WeakReference;

    sput-object v0, Lcom/ali/auth/third/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/ali/auth/third/login/handler/LoginActivityResultHandler$3;->c:Lcom/ali/auth/third/login/handler/LoginActivityResultHandler;

    iget-object v0, p0, Lcom/ali/auth/third/login/handler/LoginActivityResultHandler$3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/ali/auth/third/login/UTConstants;->E_H5_OPERATION_BIND_FAILURE:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/auth/third/login/handler/LoginActivityResultHandler$3;->b:Lcom/ali/auth/third/core/callback/LoginCallback;

    const/16 v4, 0x2713

    invoke-static {v1, v0, v2, v3, v4}, Lcom/ali/auth/third/login/handler/LoginActivityResultHandler;->a(Lcom/ali/auth/third/login/handler/LoginActivityResultHandler;Landroid/app/Activity;Ljava/lang/String;Lcom/ali/auth/third/core/callback/LoginCallback;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/ali/auth/third/ui/context/CallbackContext;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method
