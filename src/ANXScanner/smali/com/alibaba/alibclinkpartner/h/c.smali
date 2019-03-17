.class public Lcom/alibaba/alibclinkpartner/h/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/alibaba/alibclinkpartner/c/b;Ljava/lang/String;IIZZZ)Lcom/alibaba/alibclinkpartner/h/b;
    .locals 6

    if-eqz p4, :cond_0

    new-instance v0, Lcom/alibaba/alibclinkpartner/h/a;

    invoke-direct {v0, p0}, Lcom/alibaba/alibclinkpartner/h/a;-><init>(Lcom/alibaba/alibclinkpartner/c/b;)V

    :goto_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alibclinkpartner/h/d;->a(Ljava/lang/String;IIZZ)Lcom/alibaba/alibclinkpartner/h/b;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/alibclinkpartner/h/e;

    invoke-direct {v0, p0}, Lcom/alibaba/alibclinkpartner/h/e;-><init>(Lcom/alibaba/alibclinkpartner/c/b;)V

    goto :goto_0
.end method
