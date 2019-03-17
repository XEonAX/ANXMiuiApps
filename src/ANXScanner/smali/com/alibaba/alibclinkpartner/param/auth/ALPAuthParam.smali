.class public Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;
.super Lcom/alibaba/alibclinkpartner/param/a;


# instance fields
.field public apkSign:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pluginName:Ljava/lang/String;

.field public sign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/param/a;-><init>()V

    const-string v0, "taobao.oauth.code.create"

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->pluginName:Ljava/lang/String;

    const-string v0, "lp"

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->g:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/alibclinkpartner/b;->f:Lcom/alibaba/alibclinkpartner/plugin/a;

    const-string v1, "auth"

    invoke-virtual {v0, v1}, Lcom/alibaba/alibclinkpartner/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->pluginRules:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->e:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AlibcLinkPartner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/j/f;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "ALPAuthParam"

    const-string v1, "getLinkSign"

    const-string v2, "linksign md5 error"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public canDegrade()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkParam()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->apkSign:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->sign:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAPIType()Ljava/lang/String;
    .locals 1

    const-string v0, "auth"

    return-object v0
.end method

.method public getExParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    const-string v0, "auth"

    return-object v0
.end method

.method public getParams()Ljava/util/HashMap;
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

    const-string v0, "appkey"

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pluginName"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->pluginName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apkSign"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->apkSign:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sign"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->sign:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "linkSign"

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timeStamp"

    iget-wide v2, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "source"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "params"

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->g:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/alibclinkpartner/j/l;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/alibaba/alibclinkpartner/param/a;->getParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getUnUrlEnCodeParams()Ljava/util/HashMap;
    .locals 1
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

    invoke-super {p0}, Lcom/alibaba/alibclinkpartner/param/a;->getUnUrlEnCodeParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/alibaba/alibclinkpartner/param/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ALPAuthParam{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pluginName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->pluginName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apkSign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->apkSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkSign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;->g:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
