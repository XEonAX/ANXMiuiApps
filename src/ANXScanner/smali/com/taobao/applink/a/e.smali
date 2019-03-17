.class public Lcom/taobao/applink/a/e;
.super Lcom/taobao/applink/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/taobao/applink/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/applink/a/e;->c:Lcom/taobao/applink/f/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/applink/a/e;->c:Lcom/taobao/applink/f/a/b;

    const-string v1, "{\"result\":true}"

    invoke-interface {v0, v1}, Lcom/taobao/applink/f/a/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/taobao/applink/f/a/b;)V
    .locals 0

    iput-object p2, p0, Lcom/taobao/applink/a/e;->c:Lcom/taobao/applink/f/a/b;

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/taobao/applink/a/e;->c:Lcom/taobao/applink/f/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/applink/a/e;->c:Lcom/taobao/applink/f/a/b;

    const-string v1, "{\"result\":false}"

    invoke-interface {v0, v1}, Lcom/taobao/applink/f/a/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
