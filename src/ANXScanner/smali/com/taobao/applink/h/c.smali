.class public Lcom/taobao/applink/h/c;
.super Ljava/lang/Object;


# direct methods
.method private static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "/minitrade.1.21.2"

    goto :goto_0

    :pswitch_1
    const-string v0, "/minitrade.1.21.1"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(ILjava/util/Map;)V
    .locals 2

    invoke-static {p0}, Lcom/taobao/applink/h/c;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/taobao/applink/h/a;->a()Lcom/taobao/applink/h/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/applink/h/a;->a(Ljava/lang/String;)Lcom/taobao/applink/h/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/applink/h/a;->a(Ljava/util/Map;)Lcom/taobao/applink/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/applink/h/a;->b()V

    goto :goto_0
.end method
