.class public Lcom/alibaba/alibclinkpartner/h/a;
.super Lcom/alibaba/alibclinkpartner/h/d;


# direct methods
.method public constructor <init>(Lcom/alibaba/alibclinkpartner/c/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/alibclinkpartner/h/d;-><init>(Lcom/alibaba/alibclinkpartner/c/b;)V

    return-void
.end method

.method private a(Ljava/lang/String;IIZZLcom/alibaba/alibclinkpartner/h/b;)Lcom/alibaba/alibclinkpartner/h/b;
    .locals 6

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v0, "ALPDegradeHandler"

    const-string v3, "getNativeStrategyInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "native\u6253\u5f00: \u5f53\u524d\u914d\u7f6e\u7684\u6253\u5f00\u65b9\u5f0f\u4e3a = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n linkKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n jumpFailMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n isCallback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    if-eqz p5, :cond_4

    move v0, v1

    :goto_0
    iput v0, p6, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    iput-object p1, p6, Lcom/alibaba/alibclinkpartner/h/b;->a:Ljava/lang/String;

    :goto_1
    iget v0, p6, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    if-eq v0, v2, :cond_0

    iget v0, p6, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->e()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/alibclinkpartner/j/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ALPDegradeHandler"

    const-string v3, "getNativeStrategyInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0d\u652f\u6301\u5f53\u524d\u5ba2\u6237\u7aef,linkKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/h/a;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/alibclinkpartner/h/a;->a(Ljava/lang/String;)V

    if-eqz p4, :cond_7

    sget-boolean v0, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->isSupportJumpFailedOpenTaobao:Z

    if-eqz v0, :cond_7

    const-string v0, "taobao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ALPDegradeHandler"

    const-string v3, "getNativeStrategyInfo"

    const-string v4, "\u5c1d\u8bd5\u964d\u7ea7\u5230\u624b\u6dd8\u6253\u5f00"

    invoke-static {v0, v3, v4}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "taobao"

    invoke-direct {p0, v0}, Lcom/alibaba/alibclinkpartner/h/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/h/a;->a:Lcom/alibaba/alibclinkpartner/c/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/h/a;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iput-boolean v2, v0, Lcom/alibaba/alibclinkpartner/c/b;->p:Z

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/h/a;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iput-boolean v2, v0, Lcom/alibaba/alibclinkpartner/c/b;->q:Z

    :cond_1
    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->e()Landroid/app/Application;

    move-result-object v0

    const-string v3, "taobao"

    invoke-static {v0, v3}, Lcom/alibaba/alibclinkpartner/j/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ALPDegradeHandler"

    const-string v3, "getNativeStrategyInfo"

    const-string v4, "\u5f53\u524d\u624b\u673a\u652f\u6301\u624b\u6dd8\u6253\u5f00"

    invoke-static {v0, v3, v4}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_5

    :goto_2
    iput v1, p6, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    const-string v0, "taobao"

    iput-object v0, p6, Lcom/alibaba/alibclinkpartner/h/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/h/a;->a:Lcom/alibaba/alibclinkpartner/c/b;

    const-string v1, "taobao"

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    :cond_2
    :goto_3
    return-object p6

    :pswitch_0
    if-eqz p5, :cond_3

    move v0, v1

    :goto_4
    iput v0, p6, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    iput-object p1, p6, Lcom/alibaba/alibclinkpartner/h/b;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto :goto_4

    :pswitch_1
    const/4 v0, 0x0

    iput v0, p6, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    goto/16 :goto_1

    :pswitch_2
    const/4 v0, 0x5

    iput v0, p6, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    const-string v0, "ALPDegradeHandler"

    const-string v1, "getNativeStrategyInfo"

    const-string v2, "\u5f53\u524d\u624b\u673a\u4e0d\u652f\u6301\u624b\u6dd8\u6253\u5f00"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "taobao"

    invoke-direct {p0, v0}, Lcom/alibaba/alibclinkpartner/h/a;->a(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0, p3, p6}, Lcom/alibaba/alibclinkpartner/h/a;->a(ILcom/alibaba/alibclinkpartner/h/b;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ILcom/alibaba/alibclinkpartner/h/b;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "ALPDegradeHandler"

    const-string v1, "failModeSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8fdb\u5165\u5230\u6253\u5f00\u5931\u8d25\u964d\u7ea7 jumpFailMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    iput v4, p2, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    const-string v0, "h5"

    :goto_0
    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/h/a;->a:Lcom/alibaba/alibclinkpartner/c/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/h/a;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-boolean v1, v1, Lcom/alibaba/alibclinkpartner/c/b;->q:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alibaba/alibclinkpartner/h/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/h/a;->a:Lcom/alibaba/alibclinkpartner/c/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/alibclinkpartner/c/b;->q:Z

    :cond_0
    return-void

    :pswitch_0
    iput v4, p2, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    const-string v0, "h5"

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    iput v0, p2, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    const-string v0, "downloadPage"

    goto :goto_0

    :pswitch_2
    const/4 v0, -0x1

    iput v0, p2, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    const-string v0, "none"

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    iput v0, p2, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    const-string v0, "broswer"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
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

.method private b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/e/a/g;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/h/a;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/c/b;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/h/a;->a:Lcom/alibaba/alibclinkpartner/c/b;

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->c:Z

    iput-object p1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IIZZ)Lcom/alibaba/alibclinkpartner/h/b;
    .locals 7

    new-instance v6, Lcom/alibaba/alibclinkpartner/h/b;

    invoke-direct {v6}, Lcom/alibaba/alibclinkpartner/h/b;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v1, "taobao"

    :goto_0
    iput-object v1, v6, Lcom/alibaba/alibclinkpartner/h/b;->a:Ljava/lang/String;

    const-string v0, "ALPDegradeHandler"

    const-string v2, "getStrategyHandlerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7528\u6237\u8bbe\u7f6e\u7684openType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alibclinkpartner/h/a;->a(Ljava/lang/String;IIZZLcom/alibaba/alibclinkpartner/h/b;)Lcom/alibaba/alibclinkpartner/h/b;

    move-result-object v6

    :goto_1
    return-object v6

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    iput v0, v6, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    iput v0, v6, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
