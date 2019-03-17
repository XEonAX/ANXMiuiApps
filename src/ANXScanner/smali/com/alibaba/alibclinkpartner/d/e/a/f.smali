.class public Lcom/alibaba/alibclinkpartner/d/e/a/f;
.super Lcom/alibaba/alibclinkpartner/d/e/a/d;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZZI)V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/d/e/a/d;-><init>()V

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/f;->e:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/alibaba/alibclinkpartner/d/e/a/f;->a:Z

    iput-boolean p2, p0, Lcom/alibaba/alibclinkpartner/d/e/a/f;->b:Z

    iput-boolean p3, p0, Lcom/alibaba/alibclinkpartner/d/e/a/f;->c:Z

    iput p4, p0, Lcom/alibaba/alibclinkpartner/d/e/a/f;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "cf.linkpartner.2.1"

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 3
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

    invoke-super {p0}, Lcom/alibaba/alibclinkpartner/d/e/a/d;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "isSuccess"

    iget-boolean v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/f;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appkeyExist"

    iget-boolean v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/f;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "configExist"

    iget-boolean v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/f;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "exp"

    iget v2, p0, Lcom/alibaba/alibclinkpartner/d/e/a/f;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TTID"

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "unknown"

    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    const-string v0, "0"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_1

    :cond_2
    const-string v0, "0"

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/f;->e:Ljava/lang/String;

    goto :goto_3
.end method
