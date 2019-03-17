.class public Lcom/alibaba/alibclinkpartner/d/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alibaba/alibclinkpartner/d/c/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/c/c;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/c/c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/d/c/a;->a:Lcom/alibaba/alibclinkpartner/d/c/b;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/c/a;->a:Lcom/alibaba/alibclinkpartner/d/c/b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alibaba/alibclinkpartner/d/c/b;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/d/c/a;->a:Lcom/alibaba/alibclinkpartner/d/c/b;

    invoke-interface {v1, p1}, Lcom/alibaba/alibclinkpartner/d/c/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/c/a;->a:Lcom/alibaba/alibclinkpartner/d/c/b;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alibclinkpartner/d/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
