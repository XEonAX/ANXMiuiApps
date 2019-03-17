.class public Lcom/alibaba/alibclinkpartner/g/b;
.super Lcom/alibaba/alibclinkpartner/g/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/alibaba/alibclinkpartner/c/b;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/alibclinkpartner/g/d;-><init>(Lcom/alibaba/alibclinkpartner/c/b;)V

    iput-object p2, p0, Lcom/alibaba/alibclinkpartner/g/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alibclinkpartner/g/b;->c:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 4

    const-string v0, "ALPNavOpenClient"

    const-string v1, "execute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u73b0\u5728\u7684context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alibclinkpartner/g/b;->a:Lcom/alibaba/alibclinkpartner/c/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ALPH5OpenClient"

    const-string v1, "execute"

    const-string v2, "url is null"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x130

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/b;->c:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->e()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alibaba/alibclinkpartner/ui/ALPWebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "webviewUrl"

    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/g/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    const/16 v0, 0xce

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/b;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/g/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
