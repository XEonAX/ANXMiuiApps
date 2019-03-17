.class Lcom/taobao/applink/auth/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/taobao/applink/auth/a;


# direct methods
.method constructor <init>(Lcom/taobao/applink/auth/a;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/applink/auth/b;->a:Lcom/taobao/applink/auth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-static {}, Lcom/taobao/applink/util/TBAppLinkUtil;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taobao/applink/util/TBAppLinkUtil;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/taobao/applink/auth/a;->a()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/taobao/applink/auth/userinfo/TBAppLinkUserInfo;

    invoke-direct {v0}, Lcom/taobao/applink/auth/userinfo/TBAppLinkUserInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/taobao/applink/auth/userinfo/TBAppLinkUserInfo;->result:Z

    iget-boolean v2, v0, Lcom/taobao/applink/auth/userinfo/TBAppLinkUserInfo;->result:Z

    if-eqz v2, :cond_4

    const-string v2, "mixedNick"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/applink/auth/userinfo/TBAppLinkUserInfo;->mixedNick:Ljava/lang/String;

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/applink/auth/userinfo/TBAppLinkUserInfo;->icon:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/applink/auth/b;->a:Lcom/taobao/applink/auth/a;

    invoke-static {v1}, Lcom/taobao/applink/auth/a;->a(Lcom/taobao/applink/auth/a;)Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/applink/auth/b;->a:Lcom/taobao/applink/auth/a;

    invoke-static {v1}, Lcom/taobao/applink/auth/a;->a(Lcom/taobao/applink/auth/a;)Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/taobao/applink/auth/TBAppLinkAuthListener;->onSuccess(Lcom/taobao/applink/auth/userinfo/TBAppLinkUserInfo;)V

    :cond_2
    :goto_2
    const-string v1, "AppLink"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/taobao/applink/auth/b;->a:Lcom/taobao/applink/auth/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/applink/auth/a;->a(Lcom/taobao/applink/auth/a;Lcom/taobao/applink/auth/TBAppLinkAuthListener;)Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/taobao/applink/auth/b;->a:Lcom/taobao/applink/auth/a;

    invoke-static {v1}, Lcom/taobao/applink/auth/a;->a(Lcom/taobao/applink/auth/a;)Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/applink/auth/b;->a:Lcom/taobao/applink/auth/a;

    invoke-static {v1}, Lcom/taobao/applink/auth/a;->a(Lcom/taobao/applink/auth/a;)Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/taobao/applink/auth/TBAppLinkAuthListener;->onFailure()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/taobao/applink/auth/b;->a:Lcom/taobao/applink/auth/a;

    invoke-static {v0}, Lcom/taobao/applink/auth/a;->a(Lcom/taobao/applink/auth/a;)Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/applink/auth/b;->a:Lcom/taobao/applink/auth/a;

    invoke-static {v0}, Lcom/taobao/applink/auth/a;->a(Lcom/taobao/applink/auth/a;)Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/applink/auth/TBAppLinkAuthListener;->onFailure()V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2e1a
        :pswitch_0
    .end packed-switch
.end method
