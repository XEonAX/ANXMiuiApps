.class public Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;
.super Lcom/alibaba/alibclinkpartner/a;


# static fields
.field public static volatile isSupportJumpFailedOpenTaobao:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->isSupportJumpFailedOpenTaobao:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/a;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;)V
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->linkKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->linkKey:Ljava/lang/String;

    const-string v1, "taobao_scheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "taobao"

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->linkKey:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->linkKey:Ljava/lang/String;

    const-string v1, "tmall_scheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tmall"

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;->linkKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public static doAuth(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/alibaba/alibclinkpartner/c/a;->a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/auth/ALPAuthParam;)I

    move-result v0

    return v0
.end method

.method public static jumpDetail(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/jump/ALPDetailParam;Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;)I
    .locals 1

    invoke-static {p1}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->a(Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/alibclinkpartner/c/a;->a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/a;Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;Z)I

    move-result v0

    return v0
.end method

.method public static jumpShop(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/jump/ALPShopParam;Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;)I
    .locals 1

    invoke-static {p1}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->a(Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/alibclinkpartner/c/a;->a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/a;Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;Z)I

    move-result v0

    return v0
.end method

.method public static jumpURI(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/jump/ALPURIParam;Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;)I
    .locals 1

    invoke-static {p1}, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->a(Lcom/alibaba/alibclinkpartner/param/tb/ALPTBJumpParam;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/alibclinkpartner/c/a;->a(Landroid/content/Context;Lcom/alibaba/alibclinkpartner/param/a;Lcom/alibaba/alibclinkpartner/param/ALPJumpFailedStrategy;Z)I

    move-result v0

    return v0
.end method

.method public static setDebugStatus(ZZ)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/alibaba/alibclinkpartner/b;->b(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/b;->a(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/alibaba/alibclinkpartner/b;->b(Z)V

    goto :goto_1
.end method

.method public static setEnvironment(I)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/b;->c(I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/b;->c(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/b;->c(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alibaba/alibclinkpartner/b;->c(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setSupportJumpFailedOpenTaobao(Z)V
    .locals 0

    sput-boolean p0, Lcom/alibaba/alibclinkpartner/ALPTBLinkPartnerSDK;->isSupportJumpFailedOpenTaobao:Z

    return-void
.end method

.method public static setTTID(Ljava/lang/String;)I
    .locals 3

    const/16 v1, 0x139

    const/16 v0, 0xca

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->b()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sput-object p0, Lcom/alibaba/alibclinkpartner/param/b;->a:Ljava/lang/String;

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/alibaba/alibclinkpartner/b;->a()Lcom/alibaba/alibclinkpartner/param/b;

    move-result-object v1

    iput-object p0, v1, Lcom/alibaba/alibclinkpartner/param/b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
