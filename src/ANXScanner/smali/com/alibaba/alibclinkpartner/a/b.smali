.class public Lcom/alibaba/alibclinkpartner/a/b;
.super Lcom/alibaba/alibclinkpartner/a/a;


# instance fields
.field private a:Lcom/alibaba/alibclinkpartner/param/a;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/alibaba/alibclinkpartner/i/b;


# direct methods
.method public constructor <init>(Lcom/alibaba/alibclinkpartner/param/a;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/a/a;-><init>()V

    iput-object p1, p0, Lcom/alibaba/alibclinkpartner/a/b;->a:Lcom/alibaba/alibclinkpartner/param/a;

    iput p2, p0, Lcom/alibaba/alibclinkpartner/a/b;->b:I

    iput-object p3, p0, Lcom/alibaba/alibclinkpartner/a/b;->c:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/alibclinkpartner/i/a;

    invoke-direct {v0, p1}, Lcom/alibaba/alibclinkpartner/i/a;-><init>(Lcom/alibaba/alibclinkpartner/param/a;)V

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/a/b;->d:Lcom/alibaba/alibclinkpartner/i/b;

    return-void
.end method

.method private a(Lcom/alibaba/alibclinkpartner/c/b;Lcom/alibaba/alibclinkpartner/param/a;ILjava/lang/String;)Lcom/alibaba/alibclinkpartner/a/d;
    .locals 8

    const/16 v7, 0x134

    const/16 v6, 0x133

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    new-instance v1, Lcom/alibaba/alibclinkpartner/a/d;

    invoke-direct {v1}, Lcom/alibaba/alibclinkpartner/a/d;-><init>()V

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/a/b;->d:Lcom/alibaba/alibclinkpartner/i/b;

    invoke-interface {v0, p4}, Lcom/alibaba/alibclinkpartner/i/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->f:Ljava/util/List;

    const-string v2, "android.intent.action.VIEW"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v5, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/a/b;->d:Lcom/alibaba/alibclinkpartner/i/b;

    invoke-interface {v0, p4}, Lcom/alibaba/alibclinkpartner/i/b;->a(Ljava/lang/String;)Lcom/alibaba/alibclinkpartner/e/b;

    move-result-object v0

    new-instance v2, Lcom/alibaba/alibclinkpartner/b/c;

    invoke-direct {v2}, Lcom/alibaba/alibclinkpartner/b/c;-><init>()V

    iput-object v2, v1, Lcom/alibaba/alibclinkpartner/a/d;->d:Lcom/alibaba/alibclinkpartner/b/c;

    iget-object v2, v1, Lcom/alibaba/alibclinkpartner/a/d;->d:Lcom/alibaba/alibclinkpartner/b/c;

    iget-object v3, v0, Lcom/alibaba/alibclinkpartner/e/b;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, ""

    :goto_1
    iput-object v0, v2, Lcom/alibaba/alibclinkpartner/b/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/d/a/d;->a()Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/d/a/c;->d:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alibclinkpartner/d/a/a;

    if-eqz v0, :cond_1

    iget-object v2, v1, Lcom/alibaba/alibclinkpartner/a/d;->d:Lcom/alibaba/alibclinkpartner/b/c;

    iget-object v3, v0, Lcom/alibaba/alibclinkpartner/d/a/a;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/alibclinkpartner/b/c;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/alibaba/alibclinkpartner/a/d;->d:Lcom/alibaba/alibclinkpartner/b/c;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/d/a/a;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/alibclinkpartner/b/c;->c:Ljava/lang/String;

    iget-object v2, v1, Lcom/alibaba/alibclinkpartner/a/d;->d:Lcom/alibaba/alibclinkpartner/b/c;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/d/a/a;->c:Ljava/util/List;

    iput-object v0, v2, Lcom/alibaba/alibclinkpartner/b/c;->d:Ljava/util/List;

    :cond_1
    if-eqz p1, :cond_0

    iput-boolean v5, p1, Lcom/alibaba/alibclinkpartner/c/b;->m:Z

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/b;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, "ALPJumpOpenAPI"

    const-string v2, "ALPJumpOpenAPI"

    const-string v3, "downloadurl is null"

    invoke-static {v0, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v4, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    const/16 v0, 0x132

    iput v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->g:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/a/b;->d:Lcom/alibaba/alibclinkpartner/i/b;

    invoke-interface {v0}, Lcom/alibaba/alibclinkpartner/i/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->b:Ljava/lang/String;

    iput v3, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    goto :goto_0

    :cond_4
    const-string v0, "ALPJumpOpenAPI"

    const-string v2, "ALPJumpOpenAPI"

    const-string v3, "h5Url is null"

    invoke-static {v0, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v4, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    iput v6, v1, Lcom/alibaba/alibclinkpartner/a/d;->g:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/a/b;->d:Lcom/alibaba/alibclinkpartner/i/b;

    invoke-interface {v0, p4}, Lcom/alibaba/alibclinkpartner/i/b;->a(Ljava/lang/String;)Lcom/alibaba/alibclinkpartner/e/b;

    move-result-object v0

    iget-object v2, v0, Lcom/alibaba/alibclinkpartner/e/b;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alibclinkpartner/a/d;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/alibclinkpartner/e/b;->b:Ljava/util/List;

    iput-object v2, v1, Lcom/alibaba/alibclinkpartner/a/d;->f:Ljava/util/List;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/b;->c:Ljava/util/List;

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->e:Ljava/util/List;

    iput v5, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    invoke-virtual {p2}, Lcom/alibaba/alibclinkpartner/param/a;->canDegrade()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/a/b;->d:Lcom/alibaba/alibclinkpartner/i/b;

    invoke-interface {v0}, Lcom/alibaba/alibclinkpartner/i/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->c:Ljava/lang/String;

    :cond_5
    iget-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ALPJumpOpenAPI"

    const-string v2, "ALPJumpOpenAPI"

    const-string v3, "native Url is null"

    invoke-static {v0, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v4, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    iput v7, v1, Lcom/alibaba/alibclinkpartner/a/d;->g:I

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/a/b;->d:Lcom/alibaba/alibclinkpartner/i/b;

    invoke-interface {v0, p4}, Lcom/alibaba/alibclinkpartner/i/b;->a(Ljava/lang/String;)Lcom/alibaba/alibclinkpartner/e/b;

    move-result-object v0

    iget-object v2, v0, Lcom/alibaba/alibclinkpartner/e/b;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alibclinkpartner/a/d;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/alibclinkpartner/e/b;->b:Ljava/util/List;

    iput-object v2, v1, Lcom/alibaba/alibclinkpartner/a/d;->f:Ljava/util/List;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/e/b;->c:Ljava/util/List;

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->e:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    iget-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ALPJumpOpenAPI"

    const-string v2, "ALPJumpOpenAPI"

    const-string v3, "native Url is null"

    invoke-static {v0, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v4, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    iput v7, v1, Lcom/alibaba/alibclinkpartner/a/d;->g:I

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/a/b;->d:Lcom/alibaba/alibclinkpartner/i/b;

    invoke-interface {v0}, Lcom/alibaba/alibclinkpartner/i/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->f:Ljava/util/List;

    const-string v2, "android.intent.action.VIEW"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v5, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    iget-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ALPJumpOpenAPI"

    const-string v2, "ALPJumpOpenAPI"

    const-string v3, "H5 Url is null"

    invoke-static {v0, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v4, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    iput v6, v1, Lcom/alibaba/alibclinkpartner/a/d;->g:I

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/d/a/d;->a()Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/d/a/c;->e:Ljava/util/Map;

    const-string v2, "activity"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->f:Ljava/util/List;

    const-string v2, "android.intent.action.VIEW"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v3, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    iget-object v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ALPJumpOpenAPI"

    const-string v2, "ALPJumpOpenAPI"

    const-string v3, "H5 Url is null"

    invoke-static {v0, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v4, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    const/16 v0, 0x135

    iput v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->g:I

    goto/16 :goto_0

    :pswitch_6
    iput v4, v1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    const/16 v0, 0x136

    iput v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->g:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/alibaba/alibclinkpartner/c/b;)Lcom/alibaba/alibclinkpartner/a/d;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/a/b;->a:Lcom/alibaba/alibclinkpartner/param/a;

    iget v1, p0, Lcom/alibaba/alibclinkpartner/a/b;->b:I

    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/a/b;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alibaba/alibclinkpartner/a/b;->a(Lcom/alibaba/alibclinkpartner/c/b;Lcom/alibaba/alibclinkpartner/param/a;ILjava/lang/String;)Lcom/alibaba/alibclinkpartner/a/d;

    move-result-object v0

    return-object v0
.end method
