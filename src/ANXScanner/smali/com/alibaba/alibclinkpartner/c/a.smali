.class public Lcom/alibaba/alibclinkpartner/c/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/c/b;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/alibaba/alibclinkpartner/g/f;->a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/c/b;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/a;Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;Z)I
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_5

    :cond_1
    const-string v0, "ALPDistribution"

    const-string v1, "invoke"

    const-string v2, "activity / jumpParam is null"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/alibaba/alibclinkpartner/d/e/a/n;

    move-object v0, p1

    check-cast v0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->module:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/alibclinkpartner/param/a;->linkKey:Ljava/lang/String;

    const-string v3, "312"

    invoke-direct {v1, v0, v2, v3}, Lcom/alibaba/alibclinkpartner/d/e/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    :goto_1
    const/16 v0, 0x138

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/alibaba/alibclinkpartner/d/e/a/n;

    const-string v2, "nav"

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/param/a;->linkKey:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "taobao"

    :goto_2
    const-string v3, "312"

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/alibclinkpartner/d/e/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/param/a;->linkKey:Ljava/lang/String;

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/a;->checkParam()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ALPDistribution"

    const-string v1, "invoke"

    const-string v2, "jumpParam.checkParam fail"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/alibaba/alibclinkpartner/d/e/a/n;

    move-object v0, p1

    check-cast v0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->module:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/alibclinkpartner/param/a;->linkKey:Ljava/lang/String;

    const-string v3, "302"

    invoke-direct {v1, v0, v2, v3}, Lcom/alibaba/alibclinkpartner/d/e/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    :goto_3
    const/16 v0, 0x12e

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/n;

    const-string v1, "nav"

    iget-object v2, p1, Lcom/alibaba/alibclinkpartner/param/a;->linkKey:Ljava/lang/String;

    const-string v3, "302"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alibclinkpartner/d/e/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    goto :goto_3

    :cond_7
    if-nez p2, :cond_8

    new-instance p2, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;

    invoke-direct {p2}, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;-><init>()V

    :cond_8
    const-string v0, "ALPDistribution"

    const-string v1, "invoke"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f20\u5165\u7684\u53c2\u6570\u4e3a:activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n jumpParam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n jumpFailedMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;->mode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n jumpFailWebview="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/alibclinkpartner/c/b;

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->e()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/alibclinkpartner/c/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;->webView:Landroid/webkit/WebView;

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/alibclinkpartner/c/a;->a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/a;Lcom/alibaba/alibclinkpartner/c/b;Landroid/webkit/WebView;)V

    const-string v1, "ALPDistribution"

    const-string v2, "invoke"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bbe\u7f6e\u53c2\u6570\u540e:ALPDistributionContext = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p2, Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;->mode:I

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/a;->isCallbackMode()Z

    move-result v2

    invoke-static {v0, p1, v1, p3, v2}, Lcom/alibaba/alibclinkpartner/c/a;->a(Lcom/alibaba/alibclinkpartner/c/b;Lcom/alibaba/alibclinkpartner/param/a;IZZ)Lcom/alibaba/alibclinkpartner/h/b;

    move-result-object v1

    if-eqz v1, :cond_a

    iget v2, v1, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    iget v2, v1, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    if-ne v2, v5, :cond_a

    :cond_9
    iput-boolean v5, v0, Lcom/alibaba/alibclinkpartner/c/b;->n:Z

    :cond_a
    const-string v2, "ALPDistribution"

    const-string v3, "invoke"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u83b7\u53d6\u6253\u5f00\u7b56\u7565:strategyInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Lcom/alibaba/alibclinkpartner/h/b;->b:I

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/h/b;->a:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/alibaba/alibclinkpartner/a/c;->a(Lcom/alibaba/alibclinkpartner/param/a;ILjava/lang/String;)Lcom/alibaba/alibclinkpartner/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/alibclinkpartner/a/a;->a(Lcom/alibaba/alibclinkpartner/c/b;)Lcom/alibaba/alibclinkpartner/a/d;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/alibaba/alibclinkpartner/a/d;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    const-string v0, "ALPDistribution"

    const-string v2, "invoke"

    const-string v3, "openInfo is null / open error"

    invoke-static {v0, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_c

    const/16 v0, 0x137

    goto/16 :goto_0

    :cond_c
    iget v0, v1, Lcom/alibaba/alibclinkpartner/a/d;->g:I

    goto/16 :goto_0

    :cond_d
    const-string v2, "ALPDistribution"

    const-string v3, "invoke"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u83b7\u53d6\u7684\u6253\u5f00\u4fe1\u606f\u4e3a: openInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alibaba/alibclinkpartner/c/a;->a(Lcom/alibaba/alibclinkpartner/c/b;Lcom/alibaba/alibclinkpartner/a/d;)V

    invoke-static {p0, v0}, Lcom/alibaba/alibclinkpartner/c/a;->a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/c/b;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;)I
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_4

    :cond_1
    new-instance v1, Lcom/alibaba/alibclinkpartner/d/e/a/n;

    const-string v2, "auth"

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->linkKey:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "taobao"

    :goto_1
    const-string v3, "314"

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/alibclinkpartner/d/e/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    const/16 v0, 0x13a

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->linkKey:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->checkParam()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/n;

    const-string v1, "auth"

    iget-object v2, p1, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->linkKey:Ljava/lang/String;

    const-string v3, "315"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alibclinkpartner/d/e/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    const/16 v0, 0x13b

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->getExParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->getExParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sourceVC"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/alibaba/alibclinkpartner/j/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->getExParams()Ljava/util/Map;

    move-result-object v1

    const-string v2, "sourceVC"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v1, Lcom/alibaba/alibclinkpartner/c/b;

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->e()Landroid/app/Application;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/alibclinkpartner/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->getModule()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/c/b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->getAPIType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/c/b;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->linkKey:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->getExParams()Ljava/util/Map;

    move-result-object v0

    const-string v2, "sourceVC"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/c/b;->l:Ljava/lang/String;

    const-string v0, "tbopen://m.taobao.com/getway/oauth?"

    sget-object v2, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-virtual {v2}, Lcom/alibaba/alibclinkpartner/d/a/d;->a()Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/alibclinkpartner/d/a/c;->f:Ljava/util/Map;

    invoke-static {p1, v0, v2}, Lcom/alibaba/alibclinkpartner/j/l;->a(Lcom/alibaba/alibclinkpartner/param/a;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/alibclinkpartner/c/b;->b:Ljava/lang/String;

    iput v4, v1, Lcom/alibaba/alibclinkpartner/c/b;->c:I

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/a/a;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/a/a;-><init>()V

    iget-object v2, v0, Lcom/alibaba/alibclinkpartner/d/a/a;->b:Ljava/util/List;

    const-string v3, "com.taobao.open.intent.action.GETWAY"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "tbopen://m.taobao.com/getway/oauth?"

    iput-object v2, v0, Lcom/alibaba/alibclinkpartner/d/a/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->e()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/alibclinkpartner/j/j;->a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/d/a/a;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v4, v1, Lcom/alibaba/alibclinkpartner/c/b;->n:Z

    invoke-static {p0, v1}, Lcom/alibaba/alibclinkpartner/c/a;->a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/c/b;)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    iget-object v0, v1, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/c/a;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/c/a;->a(Lcom/alibaba/alibclinkpartner/c/b;)V

    const/16 v0, 0x12f

    goto/16 :goto_0
.end method

.method private static a(Lcom/alibaba/alibclinkpartner/c/b;Lcom/alibaba/alibclinkpartner/param/a;IZZ)Lcom/alibaba/alibclinkpartner/h/b;
    .locals 7

    iget-object v1, p1, Lcom/alibaba/alibclinkpartner/param/a;->linkKey:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->b:Lcom/alibaba/alibclinkpartner/d/a/d;

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/d/a/d;->a()Lcom/alibaba/alibclinkpartner/d/a/c;

    move-result-object v0

    iget v2, v0, Lcom/alibaba/alibclinkpartner/d/a/c;->b:I

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/a;->canDegrade()Z

    move-result v4

    move-object v0, p0

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/alibclinkpartner/h/c;->a(Lcom/alibaba/alibclinkpartner/c/b;Ljava/lang/String;IIZZZ)Lcom/alibaba/alibclinkpartner/h/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/a;Lcom/alibaba/alibclinkpartner/c/b;Landroid/webkit/WebView;)V
    .locals 3

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p3, p2, Lcom/alibaba/alibclinkpartner/c/b;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/a;->getModule()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_1
    iput-object v0, p2, Lcom/alibaba/alibclinkpartner/c/b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/a;->getAPIType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_2
    iput-object v0, p2, Lcom/alibaba/alibclinkpartner/c/b;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/param/a;->linkKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/param/a;->linkKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    const-string v0, "taobao"

    :goto_3
    iput-object v0, p2, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/a;->canDegrade()Z

    move-result v0

    iput-boolean v0, p2, Lcom/alibaba/alibclinkpartner/c/b;->k:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->getExtraParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "sourceVC"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/alibaba/alibclinkpartner/j/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->getExtraParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "sourceVC"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->getExtraParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "sourceVC"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p2, Lcom/alibaba/alibclinkpartner/c/b;->l:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/a;->getModule()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/alibclinkpartner/param/a;->getAPIType()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/param/a;->linkKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static a(Lcom/alibaba/alibclinkpartner/c/b;)V
    .locals 2

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/e/a/g;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/c/b;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/c/b;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->c:Z

    const-string v1, "none"

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/g;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    return-void
.end method

.method private static a(Lcom/alibaba/alibclinkpartner/c/b;Lcom/alibaba/alibclinkpartner/a/d;)V
    .locals 1

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/a/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/c/b;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/a/d;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/c/b;->i:Ljava/util/List;

    iget v0, p1, Lcom/alibaba/alibclinkpartner/a/d;->a:I

    iput v0, p0, Lcom/alibaba/alibclinkpartner/c/b;->c:I

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/a/d;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/c/b;->j:Ljava/util/List;

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/a/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/c/b;->o:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/alibclinkpartner/a/d;->d:Lcom/alibaba/alibclinkpartner/b/c;

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/c/b;->f:Lcom/alibaba/alibclinkpartner/b/c;

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/o;

    invoke-direct {v0, p0}, Lcom/alibaba/alibclinkpartner/d/e/a/o;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    :cond_0
    return-void
.end method
