.class Lcom/miui/internal/webkit/DeviceAccountLogin$LoginCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/webkit/DeviceAccountLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoginCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private pF:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/internal/webkit/DeviceAccountLogin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/internal/webkit/DeviceAccountLogin;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/webkit/DeviceAccountLogin$LoginCallback;->pF:Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/miui/internal/webkit/DeviceAccountLogin$LoginCallback;->pF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/webkit/DeviceAccountLogin;

    .line 92
    if-nez v0, :cond_0

    .line 93
    return-void

    .line 97
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "authtoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    if-nez p1, :cond_1

    .line 99
    invoke-virtual {v0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginFail()V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v0, p1}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    goto :goto_1

    .line 103
    :catch_0
    move-exception p1

    .line 104
    const-string v1, "DeviceAccountLogin"

    const-string v2, "Fail to login"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    invoke-virtual {v0}, Lcom/miui/internal/webkit/DeviceAccountLogin;->onLoginFail()V

    .line 107
    :goto_1
    return-void
.end method
