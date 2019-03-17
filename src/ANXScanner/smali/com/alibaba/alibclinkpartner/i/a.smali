.class public Lcom/alibaba/alibclinkpartner/i/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/alibclinkpartner/i/b;


# instance fields
.field public a:Lcom/alibaba/alibclinkpartner/param/a;


# direct methods
.method public constructor <init>(Lcom/alibaba/alibclinkpartner/param/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/alibclinkpartner/i/a;->a:Lcom/alibaba/alibclinkpartner/param/a;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/d/a/d;->a()Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/d/a/d;->a()Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/d/a/c;->e:Ljava/util/Map;

    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/i/a;->a:Lcom/alibaba/alibclinkpartner/param/a;

    invoke-virtual {v2}, Lcom/alibaba/alibclinkpartner/param/a;->getModule()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/i/a;->a:Lcom/alibaba/alibclinkpartner/param/a;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/param/a;->getBackUpH5Url()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/j/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/i/a;->a:Lcom/alibaba/alibclinkpartner/param/a;

    invoke-virtual {v1}, Lcom/alibaba/alibclinkpartner/param/a;->getPostfix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alibaba/alibclinkpartner/e/b;
    .locals 5

    new-instance v2, Lcom/alibaba/alibclinkpartner/e/b;

    invoke-direct {v2}, Lcom/alibaba/alibclinkpartner/e/b;-><init>()V

    const/4 v1, 0x0

    const-string v0, "ALPJumpUrlHandler"

    const-string v3, "getNativeUrlAndAction"

    const-string v4, "\u83b7\u53d6native\u6253\u5f00\u7684\u4fe1\u606f"

    invoke-static {v0, v3, v4}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/d/a/d;->a()Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/d/a/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alibclinkpartner/d/a/a;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/alibclinkpartner/d/a/a;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/alibclinkpartner/d/a/a;->b:Ljava/util/List;

    iput-object v3, v2, Lcom/alibaba/alibclinkpartner/e/b;->b:Ljava/util/List;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/d/a/a;->c:Ljava/util/List;

    iput-object v0, v2, Lcom/alibaba/alibclinkpartner/e/b;->c:Ljava/util/List;

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "tbopen://m.taobao.com/tbopen/index.html?"

    :cond_0
    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/i/a;->a:Lcom/alibaba/alibclinkpartner/param/a;

    sget-object v3, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-virtual {v3}, Lcom/alibaba/alibclinkpartner/d/a/d;->a()Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/alibclinkpartner/d/a/c;->f:Ljava/util/Map;

    invoke-static {v1, v0, v3}, Lcom/alibaba/alibclinkpartner/j/l;->a(Lcom/alibaba/alibclinkpartner/param/a;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/alibclinkpartner/e/b;->a:Ljava/lang/String;

    const-string v0, "ALPJumpUrlHandler"

    const-string v1, "getNativeUrlAndAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "native\u6253\u5f00\u4fe1\u606f\u4e3a info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string v0, "ALPJumpUrlHandler"

    const-string v3, "getNativeUrlAndAction"

    const-string v4, "\u4ece\u914d\u7f6e\u4e2d\u83b7\u53d6\u7684schmeInfo\u4e3a\u7a7a"

    invoke-static {v0, v3, v4}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/i/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/i/a;->a:Lcom/alibaba/alibclinkpartner/param/a;

    sget-object v2, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-virtual {v2}, Lcom/alibaba/alibclinkpartner/d/a/d;->a()Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/alibclinkpartner/d/a/c;->f:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/alibaba/alibclinkpartner/j/l;->b(Lcom/alibaba/alibclinkpartner/param/a;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/d/a/d;->a()Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/d/a/d;->a()Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/d/a/c;->g:Ljava/util/Map;

    if-eqz v0, :cond_3

    const-string v0, "taobao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "taobao"

    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/d/a/d;->a()Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/d/a/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const-string v0, "tmall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "tmall"

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1
.end method
