.class Lcom/alibaba/alibclinkpartner/d/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/alibclinkpartner/d/a/i;

.field private b:Lcom/alibaba/alibclinkpartner/d/a/h;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/alibclinkpartner/d/a/i;Ljava/lang/String;Lcom/alibaba/alibclinkpartner/d/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/alibclinkpartner/d/a/j;->a:Lcom/alibaba/alibclinkpartner/d/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/alibaba/alibclinkpartner/d/a/j;->b:Lcom/alibaba/alibclinkpartner/d/a/h;

    iput-object p2, p0, Lcom/alibaba/alibclinkpartner/d/a/j;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/alibaba/alibclinkpartner/f/b;)V
    .locals 5

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->e:Lcom/alibaba/alibclinkpartner/d/b/b;

    const-string v1, "Etag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/d/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ALPConfigServiceImpl"

    const-string v2, "setIfNoneMatch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u672c\u5730\u6709eTag,\u8bbe\u7f6eeTag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alibaba/alibclinkpartner/f/b;->b:Ljava/util/Map;

    const-string v2, "If-None-Match"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ALPConfigServiceImpl"

    const-string v1, "setIfNoneMatch"

    const-string v2, "\u672c\u5730\u6ca1\u6709eTag"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alibclinkpartner/f/c;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/f/c;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/f/c;->c:Ljava/util/Map;

    const-string v1, "Etag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "PollConfigTask"

    const-string v1, "getAndSaveEtag"

    const-string v2, "response/header is null"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/f/c;->c:Ljava/util/Map;

    const-string v1, "Etag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ALPConfigServiceImpl"

    const-string v2, "getAndSaveEtag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4fdd\u5b58eTag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/alibclinkpartner/b;->e:Lcom/alibaba/alibclinkpartner/d/b/b;

    const-string v2, "Etag"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/alibclinkpartner/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string v0, "PollConfigTask"

    const-string v1, "getAndSaveEtag"

    const-string v2, "eTag is null"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/alibaba/alibclinkpartner/f/b;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/f/b;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/d/a/j;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/f/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/alibclinkpartner/d/a/j;->a(Lcom/alibaba/alibclinkpartner/f/b;)V

    const-string v1, "PollConfigTask"

    const-string v2, "run"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/alibclinkpartner/b;->c:Lcom/alibaba/alibclinkpartner/f/a;

    invoke-virtual {v1, v0}, Lcom/alibaba/alibclinkpartner/f/a;->a(Lcom/alibaba/alibclinkpartner/f/b;)Lcom/alibaba/alibclinkpartner/f/c;

    move-result-object v0

    const-string v1, "PollConfigTask"

    const-string v2, "run"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alibaba/alibclinkpartner/f/c;->a:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/alibaba/alibclinkpartner/f/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/alibaba/alibclinkpartner/d/a/j;->a(Lcom/alibaba/alibclinkpartner/f/c;)V

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/f/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/d/a/j;->b:Lcom/alibaba/alibclinkpartner/d/a/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/d/a/j;->b:Lcom/alibaba/alibclinkpartner/d/a/h;

    invoke-interface {v1, v0}, Lcom/alibaba/alibclinkpartner/d/a/h;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "PollConfigTask"

    const-string v1, "run"

    const-string v2, "callback is null"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/d/a/j;->b:Lcom/alibaba/alibclinkpartner/d/a/h;

    iget v2, v0, Lcom/alibaba/alibclinkpartner/f/c;->a:I

    invoke-interface {v1, v2}, Lcom/alibaba/alibclinkpartner/d/a/h;->a(I)V

    const-string v1, "PollConfigTask"

    const-string v2, "run"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config http request fail,response code ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/alibaba/alibclinkpartner/f/c;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/j;->b:Lcom/alibaba/alibclinkpartner/d/a/h;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/alibaba/alibclinkpartner/d/a/h;->a(I)V

    const-string v0, "PollConfigTask"

    const-string v1, "run"

    const-string v2, "config http response is null"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
