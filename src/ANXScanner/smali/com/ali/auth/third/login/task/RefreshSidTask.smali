.class public Lcom/ali/auth/third/login/task/RefreshSidTask;
.super Lcom/ali/auth/third/core/task/TaskWithDialog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/auth/third/core/task/TaskWithDialog",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/ali/auth/third/core/task/TaskWithDialog;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/ali/auth/third/login/task/RefreshSidTask;->a:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->credentialService:Lcom/ali/auth/third/core/service/CredentialService;

    invoke-interface {v0}, Lcom/ali/auth/third/core/service/CredentialService;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/auth/third/login/task/RefreshSidTask;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ali/auth/third/ui/context/CallbackContext;->setActivity(Landroid/app/Activity;)V

    sget-object v0, Lcom/ali/auth/third/login/LoginComponent;->INSTANCE:Lcom/ali/auth/third/login/LoginComponent;

    iget-object v1, p0, Lcom/ali/auth/third/login/task/RefreshSidTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/login/LoginComponent;->showLogin(Landroid/app/Activity;)V

    :cond_0
    return-object v2
.end method

.method protected synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ali/auth/third/login/task/RefreshSidTask;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {}, Lcom/ali/auth/third/core/util/CommonUtils;->toastSystemException()V

    return-void
.end method
