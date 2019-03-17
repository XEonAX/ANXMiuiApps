.class public Lcom/alibaba/alibclinkpartner/g/c;
.super Lcom/alibaba/alibclinkpartner/g/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/alibclinkpartner/c/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alibclinkpartner/c/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/alibaba/alibclinkpartner/g/d;-><init>(Lcom/alibaba/alibclinkpartner/c/b;)V

    iput-object p2, p0, Lcom/alibaba/alibclinkpartner/g/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alibclinkpartner/g/c;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/alibclinkpartner/g/c;->e:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/alibclinkpartner/g/c;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Lcom/alibaba/alibclinkpartner/g/b;

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/alibaba/alibclinkpartner/g/b;-><init>(Lcom/alibaba/alibclinkpartner/c/b;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {v0, p1}, Lcom/alibaba/alibclinkpartner/g/d;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/alibaba/alibclinkpartner/c/b;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-boolean v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/c/b;->f:Lcom/alibaba/alibclinkpartner/b/c;

    if-nez v0, :cond_2

    const-string v0, "ALPNavOpenClient"

    const-string v1, "startDeepLinkIfNecessary"

    const-string v2, "deeplinkUrl is null"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/alibaba/alibclinkpartner/b/c;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/alibclinkpartner/b/c;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/alibclinkpartner/b/c;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/b/c;->d:Ljava/util/List;

    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/alibclinkpartner/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-boolean v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->n:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alibaba/alibclinkpartner/d/e/a/i;

    invoke-direct {v1}, Lcom/alibaba/alibclinkpartner/d/e/a/i;-><init>()V

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/d/e/a/i;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/alibaba/alibclinkpartner/j/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/d/e/a/i;->c:Ljava/lang/String;

    iput-object p1, v1, Lcom/alibaba/alibclinkpartner/d/e/a/i;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->l:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-boolean v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->p:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-boolean v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->q:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-boolean v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->k:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->g()I

    move-result v0

    if-ne v0, v2, :cond_4

    new-instance v1, Lcom/alibaba/alibclinkpartner/d/e/a/g;

    invoke-direct {v1}, Lcom/alibaba/alibclinkpartner/d/e/a/g;-><init>()V

    const-string v0, ""

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/d/e/a/g;->d:Ljava/lang/String;

    iput-boolean v2, v1, Lcom/alibaba/alibclinkpartner/d/e/a/g;->c:Z

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/d/e/a/g;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->e:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_2
    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/d/e/a/g;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_3
    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/d/e/a/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    const-string v1, "taobao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-boolean v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->n:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/m;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/e/a/m;-><init>()V

    iput-object p1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    :cond_5
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-boolean v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->n:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/l;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/e/a/l;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/c/b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->e:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    goto :goto_3

    :cond_8
    new-instance v1, Lcom/alibaba/alibclinkpartner/d/e/a/g;

    invoke-direct {v1}, Lcom/alibaba/alibclinkpartner/d/e/a/g;-><init>()V

    const-string v0, ""

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/d/e/a/g;->d:Ljava/lang/String;

    iput-boolean v2, v1, Lcom/alibaba/alibclinkpartner/d/e/a/g;->c:Z

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/d/e/a/g;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->e:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_5
    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/d/e/a/g;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_6
    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/d/e/a/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->e:Ljava/lang/String;

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    goto :goto_6
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 5

    const-string v0, "ALPNavOpenClient"

    const-string v1, "execute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u73b0\u5728\u7684context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const v0, 0x30008000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/alibclinkpartner/g/c;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->a:Lcom/alibaba/alibclinkpartner/c/b;

    invoke-direct {p0, v0}, Lcom/alibaba/alibclinkpartner/g/c;->a(Lcom/alibaba/alibclinkpartner/c/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xcd

    :goto_2
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/g/c;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "ALPNavOpenClient"

    const-string v1, "execute"

    const-string v2, "degrade to h5 open"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/g/c;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alibclinkpartner/g/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_4
    const-string v1, "ALPNavOpenClient"

    const-string v2, "execute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8df3\u8f6c\u5931\u8d25,\u9519\u8bef\u4fe1\u606f\u4e3a:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x131

    goto :goto_2
.end method
