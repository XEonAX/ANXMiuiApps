.class public Lcom/alibaba/alibclinkpartner/f/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alibaba/alibclinkpartner/f/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/alibclinkpartner/f/f;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/f/f;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/f/a;->a:Lcom/alibaba/alibclinkpartner/f/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/alibclinkpartner/f/b;)Lcom/alibaba/alibclinkpartner/f/c;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/f/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ALPHttpManager"

    const-string v2, "sendRequest"

    const-string v3, "request param error"

    invoke-static {v1, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p1, Lcom/alibaba/alibclinkpartner/f/b;->c:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Lcom/alibaba/alibclinkpartner/f/c;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/f/c;-><init>()V

    iget v2, v1, Lcom/alibaba/alibclinkpartner/f/d;->a:I

    iput v2, v0, Lcom/alibaba/alibclinkpartner/f/c;->a:I

    iget-object v2, v1, Lcom/alibaba/alibclinkpartner/f/d;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/alibclinkpartner/f/c;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/f/d;->c:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/f/c;->c:Ljava/util/Map;

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/f/a;->a:Lcom/alibaba/alibclinkpartner/f/e;

    iget-object v2, p1, Lcom/alibaba/alibclinkpartner/f/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/alibclinkpartner/f/b;->b:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alibclinkpartner/f/e;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/alibclinkpartner/f/d;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/f/a;->a:Lcom/alibaba/alibclinkpartner/f/e;

    iget-object v2, p1, Lcom/alibaba/alibclinkpartner/f/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/alibclinkpartner/f/b;->b:Ljava/util/Map;

    iget-object v4, p1, Lcom/alibaba/alibclinkpartner/f/b;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/alibclinkpartner/f/e;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/alibaba/alibclinkpartner/f/d;

    move-result-object v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
