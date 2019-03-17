.class public Lcom/alibaba/alibclinkpartner/d/d/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alibaba/alibclinkpartner/d/d/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/d/b;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/d/b;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/d/d/c;->a:Lcom/alibaba/alibclinkpartner/d/d/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/d/c;->a:Lcom/alibaba/alibclinkpartner/d/d/a;

    invoke-interface {v0, p1}, Lcom/alibaba/alibclinkpartner/d/d/a;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ALPbcExecutorManager"

    const-string v1, "postUITask"

    const-string v2, "runnable is null"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/d/c;->a:Lcom/alibaba/alibclinkpartner/d/d/a;

    invoke-interface {v0, p1}, Lcom/alibaba/alibclinkpartner/d/d/a;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ALPbcExecutorManager"

    const-string v1, "postAsyncTask"

    const-string v2, "runnable is null"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
