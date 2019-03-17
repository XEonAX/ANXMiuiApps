.class Lcom/alibaba/alibclinkpartner/d/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/alibclinkpartner/d/a/h;


# instance fields
.field final synthetic a:Lcom/alibaba/alibclinkpartner/d/a/d;


# direct methods
.method private constructor <init>(Lcom/alibaba/alibclinkpartner/d/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/alibclinkpartner/d/a/f;->a:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alibclinkpartner/d/a/d;Lcom/alibaba/alibclinkpartner/d/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/alibclinkpartner/d/a/f;-><init>(Lcom/alibaba/alibclinkpartner/d/a/d;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    const/4 v1, 0x0

    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    const-class v1, Lcom/alibaba/alibclinkpartner/d/a/d;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/f;->a:Lcom/alibaba/alibclinkpartner/d/a/d;

    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/d/a/f;->a:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-static {v2}, Lcom/alibaba/alibclinkpartner/d/a/d;->a(Lcom/alibaba/alibclinkpartner/d/a/d;)Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/alibclinkpartner/d/a/c;->a:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/alibclinkpartner/d/a/d;->a(Lcom/alibaba/alibclinkpartner/d/a/d;J)V

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/f;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/alibclinkpartner/d/a/f;->a:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-static {v5}, Lcom/alibaba/alibclinkpartner/d/a/d;->a(Lcom/alibaba/alibclinkpartner/d/a/d;)Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v5

    iget v5, v5, Lcom/alibaba/alibclinkpartner/d/a/c;->a:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alibaba/alibclinkpartner/d/e/a/f;-><init>(ZZZI)V

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/f;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/alibaba/alibclinkpartner/d/e/a/f;-><init>(ZZZI)V

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    const-string v0, "ConfigPullCallbackImpl"

    const-string v1, "onSuccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config http error,errCode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/alibaba/alibclinkpartner/d/a/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ConfigPullCallbackImpl"

    const-string v1, "onSuccess"

    const-string v2, "\u914d\u7f6e\u6821\u9a8c\u6210\u529f"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/alibclinkpartner/d/a/c;->a(Ljava/lang/String;)Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/alibaba/alibclinkpartner/d/a/d;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/d/a/f;->a:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-static {v2, v0}, Lcom/alibaba/alibclinkpartner/d/a/d;->a(Lcom/alibaba/alibclinkpartner/d/a/d;Lcom/alibaba/alibclinkpartner/d/a/c;)Lcom/alibaba/alibclinkpartner/d/a/c;

    const-string v0, "ConfigPullCallbackImpl"

    const-string v2, "onSuccess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u914d\u7f6e\u66f4\u65b0,\u5f53\u524d\u7684\u914d\u7f6e\u4e3a\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alibclinkpartner/d/a/f;->a:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-static {v4}, Lcom/alibaba/alibclinkpartner/d/a/d;->a(Lcom/alibaba/alibclinkpartner/d/a/d;)Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/f;->a:Lcom/alibaba/alibclinkpartner/d/a/d;

    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/d/a/f;->a:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-static {v2}, Lcom/alibaba/alibclinkpartner/d/a/d;->a(Lcom/alibaba/alibclinkpartner/d/a/d;)Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/alibclinkpartner/d/a/c;->a:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/alibclinkpartner/d/a/d;->a(Lcom/alibaba/alibclinkpartner/d/a/d;J)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/a/f;->a:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-static {v0, p1}, Lcom/alibaba/alibclinkpartner/d/a/d;->a(Lcom/alibaba/alibclinkpartner/d/a/d;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/f;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/alibclinkpartner/d/a/f;->a:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-static {v5}, Lcom/alibaba/alibclinkpartner/d/a/d;->a(Lcom/alibaba/alibclinkpartner/d/a/d;)Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v5

    iget v5, v5, Lcom/alibaba/alibclinkpartner/d/a/c;->a:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alibaba/alibclinkpartner/d/e/a/f;-><init>(ZZZI)V

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const-string v0, "ConfigPullCallbackImpl"

    const-string v1, "onSuccess"

    const-string v2, "\u914d\u7f6e\u6821\u9a8c\u6210\u529f,\u4f46\u662f\u5185\u5bb9\u89e3\u6790\u51fa\u9519"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/f;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/alibaba/alibclinkpartner/d/e/a/f;-><init>(ZZZI)V

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    const-string v0, "ConfigPullCallbackImpl"

    const-string v1, "onSuccess"

    const-string v2, "format config fail"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ConfigPullCallbackImpl"

    const-string v1, "onSuccess"

    const-string v2, "\u914d\u7f6e\u6821\u9a8c\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/f;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/alibaba/alibclinkpartner/d/e/a/f;-><init>(ZZZI)V

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    const-string v0, "ConfigPullCallbackImpl"

    const-string v1, "onSuccess"

    const-string v2, "check config fail"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
