.class public Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;
.super Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;-><init>()V

    iput-object p1, p0, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->e:Ljava/lang/String;

    const-string v0, "detail"

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->module:Ljava/lang/String;

    const-string v0, "ali.open.nav"

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkParam()Z
    .locals 3

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/j/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ALPDetailParam"

    const-string v1, "checkParam"

    const-string v2, "mDetailId is not right"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAPIType()Ljava/lang/String;
    .locals 1

    const-string v0, "detail"

    return-object v0
.end method

.method public getBackUpH5Url()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://h5.m.taobao.com/awp/core/detail.htm?id=%s&"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtraParams()Ljava/util/HashMap;
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

    const-string v0, "itemId"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->getExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getPostfix()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->checkParam()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id=%s&"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->getPostfix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ALPDetailParam{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
