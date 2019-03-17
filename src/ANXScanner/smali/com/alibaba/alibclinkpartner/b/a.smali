.class public Lcom/alibaba/alibclinkpartner/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/p;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/e/a/p;-><init>()V

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/p;->d:Ljava/lang/String;

    iput-object p0, v0, Lcom/alibaba/alibclinkpartner/d/e/a/p;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/p;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/d/e/a/p;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/alibclinkpartner/b/b;

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alibclinkpartner/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->e()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/alibclinkpartner/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alibclinkpartner/j/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/alibaba/alibclinkpartner/b/b;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/alibclinkpartner/b/b;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/alibclinkpartner/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
