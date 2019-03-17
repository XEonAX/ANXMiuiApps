.class public Lcom/alibaba/alibclinkpartner/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/alibaba/alibclinkpartner/param/a;ILjava/lang/String;)Lcom/alibaba/alibclinkpartner/a/a;
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/alibaba/alibclinkpartner/param/a;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alibaba/alibclinkpartner/a/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/alibclinkpartner/a/b;-><init>(Lcom/alibaba/alibclinkpartner/param/a;ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method
