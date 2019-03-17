.class Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl$1;
.super Ljava/lang/Object;
.source "MtopRemoteLoginImpl.java"

# interfaces
.implements Lcom/ali/auth/third/core/callback/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl;->login(Lcom/taobao/tao/remotebusiness/login/onLoginListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/tao/remotebusiness/login/onLoginListener;

.field final synthetic b:Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl;


# direct methods
.method constructor <init>(Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl;Lcom/taobao/tao/remotebusiness/login/onLoginListener;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl$1;->b:Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl;

    iput-object p2, p0, Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl$1;->a:Lcom/taobao/tao/remotebusiness/login/onLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl$1;->a:Lcom/taobao/tao/remotebusiness/login/onLoginListener;

    if-eqz v0, :cond_0

    .line 30
    const/16 v0, 0x2713

    if-ne p1, v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl$1;->a:Lcom/taobao/tao/remotebusiness/login/onLoginListener;

    invoke-interface {v0}, Lcom/taobao/tao/remotebusiness/login/onLoginListener;->onLoginCancel()V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl$1;->a:Lcom/taobao/tao/remotebusiness/login/onLoginListener;

    invoke-interface {v0}, Lcom/taobao/tao/remotebusiness/login/onLoginListener;->onLoginFail()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/ali/auth/third/core/model/Session;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl$1;->a:Lcom/taobao/tao/remotebusiness/login/onLoginListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/ali/auth/third/mtop/rpc/MtopRemoteLoginImpl$1;->a:Lcom/taobao/tao/remotebusiness/login/onLoginListener;

    invoke-interface {v0}, Lcom/taobao/tao/remotebusiness/login/onLoginListener;->onLoginSuccess()V

    .line 25
    :cond_0
    return-void
.end method
