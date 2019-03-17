.class public Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;
.super Lcom/alibaba/alibclinkpartner/param/a;


# instance fields
.field public currentViewName:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field public extraParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public module:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/param/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->extraParams:Ljava/util/HashMap;

    const-string v0, "lp"

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->f:Lcom/alibaba/alibclinkpartner/plugin/a;

    const-string v1, "nav"

    invoke-virtual {v0, v1}, Lcom/alibaba/alibclinkpartner/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->pluginRules:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->pluginRules:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nav"

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->pluginRules:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->pluginRules:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->pluginRules:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->extraParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getExtraParams()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->currentViewName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sourceVC"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->currentViewName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->extraParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getH5DegradeParams()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->getExtraParams()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a:Ljava/util/HashMap;

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "tag"

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a:Ljava/util/HashMap;

    const-string v2, "tag"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a:Ljava/util/HashMap;

    const-string v1, "TTID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "TTID"

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a:Ljava/util/HashMap;

    const-string v2, "TTID"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "utdid"

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "source"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-super {p0}, Lcom/alibaba/alibclinkpartner/param/a;->getH5DegradeParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "TTID"

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    const-string v0, "nav"

    return-object v0
.end method

.method public getParams()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->module:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "module"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->module:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "action"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "source"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "appkey"

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "TTID"

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "utdid"

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->linkKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->linkKey:Ljava/lang/String;

    const-string v1, "tmall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->linkKey:Ljava/lang/String;

    const-string v1, "tmall_scheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    const-string v0, "paramsKVEncode"

    const-string v1, "ture"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    invoke-super {p0}, Lcom/alibaba/alibclinkpartner/param/a;->getParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->getExtraParams()Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->extraParams:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->extraParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "params"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->extraParams:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/j/l;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUnUrlEnCodeParams()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->linkKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->linkKey:Ljava/lang/String;

    const-string v1, "tmall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->linkKey:Ljava/lang/String;

    const-string v1, "tmall_scheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->getExtraParams()Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->extraParams:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->extraParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "params"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->extraParams:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/j/l;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0}, Lcom/alibaba/alibclinkpartner/param/a;->getUnUrlEnCodeParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public isInFirstParam(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/alibaba/alibclinkpartner/constants/b;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public putParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->isInFirstParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putParams(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->isInFirstParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/alibaba/alibclinkpartner/param/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ALPTBJumpParam{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "module=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->module:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->extraParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
