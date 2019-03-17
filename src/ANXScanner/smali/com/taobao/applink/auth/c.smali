.class Lcom/taobao/applink/auth/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/taobao/applink/auth/a;


# direct methods
.method constructor <init>(Lcom/taobao/applink/auth/a;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/applink/auth/c;->a:Lcom/taobao/applink/auth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const/4 v1, 0x0

    const/16 v2, 0x2e19

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/applink/auth/c;->a:Lcom/taobao/applink/auth/a;

    invoke-static {v2}, Lcom/taobao/applink/auth/a;->b(Lcom/taobao/applink/auth/a;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "AppLink"

    const-string v1, "\u670d\u52a1\u5df2\u65ad\u5f00"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/taobao/applink/auth/c;->a:Lcom/taobao/applink/auth/a;

    invoke-static {v0}, Lcom/taobao/applink/auth/a;->c(Lcom/taobao/applink/auth/a;)V

    iget-object v0, p0, Lcom/taobao/applink/auth/c;->a:Lcom/taobao/applink/auth/a;

    invoke-static {v0}, Lcom/taobao/applink/auth/a;->a(Lcom/taobao/applink/auth/a;)Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/applink/auth/c;->a:Lcom/taobao/applink/auth/a;

    invoke-static {v0}, Lcom/taobao/applink/auth/a;->a(Lcom/taobao/applink/auth/a;)Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/applink/auth/TBAppLinkAuthListener;->onFailure()V

    :cond_0
    iget-object v0, p0, Lcom/taobao/applink/auth/c;->a:Lcom/taobao/applink/auth/a;

    invoke-static {v0, v2}, Lcom/taobao/applink/auth/a;->a(Lcom/taobao/applink/auth/a;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/taobao/applink/auth/c;->a:Lcom/taobao/applink/auth/a;

    invoke-static {v0, v2}, Lcom/taobao/applink/auth/a;->a(Lcom/taobao/applink/auth/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    invoke-static {v2}, Lcom/taobao/applink/auth/a;->a(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    return-void
.end method
