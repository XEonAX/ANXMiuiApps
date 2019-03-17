.class public Lcom/taobao/applink/a/b;
.super Lcom/taobao/applink/a/d;


# instance fields
.field public a:Lcom/taobao/applink/auth/TBAppLinkAuthListener;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/applink/auth/TBAppLinkAuthListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/taobao/applink/a/d;-><init>()V

    iput-object p1, p0, Lcom/taobao/applink/a/b;->a:Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    iput-object p2, p0, Lcom/taobao/applink/a/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/applink/a/b;->a:Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/taobao/applink/auth/a;

    iget-object v1, p0, Lcom/taobao/applink/a/b;->a:Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    invoke-direct {v0, v1}, Lcom/taobao/applink/auth/a;-><init>(Lcom/taobao/applink/auth/TBAppLinkAuthListener;)V

    iget-object v1, p0, Lcom/taobao/applink/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/applink/auth/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/applink/a/b;->a:Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/taobao/applink/f/a/b;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/taobao/applink/a/c;

    invoke-direct {v0, p0, p2}, Lcom/taobao/applink/a/c;-><init>(Lcom/taobao/applink/a/b;Lcom/taobao/applink/f/a/b;)V

    iput-object p2, p0, Lcom/taobao/applink/a/b;->c:Lcom/taobao/applink/f/a/b;

    iput-object v0, p0, Lcom/taobao/applink/a/b;->a:Lcom/taobao/applink/auth/TBAppLinkAuthListener;

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
