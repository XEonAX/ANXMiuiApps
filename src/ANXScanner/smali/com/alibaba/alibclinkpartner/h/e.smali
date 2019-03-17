.class public Lcom/alibaba/alibclinkpartner/h/e;
.super Lcom/alibaba/alibclinkpartner/h/d;


# direct methods
.method public constructor <init>(Lcom/alibaba/alibclinkpartner/c/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/alibclinkpartner/h/d;-><init>(Lcom/alibaba/alibclinkpartner/c/b;)V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/e/a/g;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/h/e;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/c/b;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/h/e;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->c:Z

    const-string v1, "none"

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/o;

    invoke-direct {v0, p1}, Lcom/alibaba/alibclinkpartner/d/e/a/o;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IIZZ)Lcom/alibaba/alibclinkpartner/h/b;
    .locals 6

    new-instance v2, Lcom/alibaba/alibclinkpartner/h/b;

    invoke-direct {v2}, Lcom/alibaba/alibclinkpartner/h/b;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "taobao"

    :goto_0
    iput-object v0, v2, Lcom/alibaba/alibclinkpartner/h/b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->e()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/alibclinkpartner/j/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ALPUnDegradeHandler"

    const-string v3, "getStrategyHandlerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u652f\u6301\u6253\u5f00app linkKey= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    const/4 v1, 0x3

    :goto_1
    iput v1, v2, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    iput-object v0, v2, Lcom/alibaba/alibclinkpartner/h/b;->a:Ljava/lang/String;

    :goto_2
    return-object v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "ALPUnDegradeHandler"

    const-string v3, "getStrategyHandlerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0d\u652f\u6301\u6253\u5f00app linkKey= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alibaba/alibclinkpartner/h/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/h/e;->a()V

    const/4 v0, -0x1

    iput v0, v2, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    goto :goto_2
.end method
