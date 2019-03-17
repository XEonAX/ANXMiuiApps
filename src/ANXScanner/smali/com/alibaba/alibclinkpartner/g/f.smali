.class public Lcom/alibaba/alibclinkpartner/g/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/c/b;)I
    .locals 3

    invoke-static {p1}, Lcom/alibaba/alibclinkpartner/g/e;->a(Lcom/alibaba/alibclinkpartner/c/b;)Lcom/alibaba/alibclinkpartner/g/d;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ALPOpenManager"

    const-string v1, "openUrl"

    const-string v2, "ALPOpenClient is null"

    invoke-static {v0, v1, v2}, Lcom/alibaba/alibclinkpartner/j/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12f

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/alibaba/alibclinkpartner/g/d;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method
