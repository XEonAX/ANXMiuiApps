.class public abstract Lcom/alibaba/alibclinkpartner/plugin/ALPBaseAuthPlugin;
.super Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "auth"

    aput-object v2, v0, v1

    const-string v1, "auth"

    const-string v2, "auth"

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alibclinkpartner/param/b;->b:Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/d/e/c;->a(Lcom/alibaba/alibclinkpartner/d/e/a/d;)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/c;

    invoke-direct {v0, v1}, Lcom/alibaba/alibclinkpartner/d/e/a/c;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/a;

    invoke-direct {v0, v1}, Lcom/alibaba/alibclinkpartner/d/e/a/a;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a/b;

    invoke-direct {v0, v1}, Lcom/alibaba/alibclinkpartner/d/e/a/b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public execute(ILandroid/os/Bundle;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/alibaba/alibclinkpartner/plugin/ALPBaseAuthPlugin;->a(I)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/alibclinkpartner/plugin/ALPBaseAuthPlugin;->onSuccess(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "result"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alibclinkpartner/plugin/ALPBaseAuthPlugin;->onError(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "result"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
