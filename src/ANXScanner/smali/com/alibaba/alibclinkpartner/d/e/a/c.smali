.class public Lcom/alibaba/alibclinkpartner/d/e/a/c;
.super Lcom/alibaba/alibclinkpartner/d/e/a/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/d/e/a/d;-><init>()V

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/param/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/c;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/alibclinkpartner/d/e/a/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "cf.linkpartner.1.10"

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

    const-string v2, "appkey"

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TTID"

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unknown"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/c;->b:Ljava/lang/String;

    goto :goto_1
.end method
