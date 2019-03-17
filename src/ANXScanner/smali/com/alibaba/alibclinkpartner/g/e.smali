.class public Lcom/alibaba/alibclinkpartner/g/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/alibaba/alibclinkpartner/c/b;)Lcom/alibaba/alibclinkpartner/g/d;
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/alibaba/alibclinkpartner/c/b;->c:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/alibaba/alibclinkpartner/g/c;

    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/c/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alibclinkpartner/c/b;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alibclinkpartner/c/b;->i:Ljava/util/List;

    iget-object v5, p0, Lcom/alibaba/alibclinkpartner/c/b;->j:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alibclinkpartner/g/c;-><init>(Lcom/alibaba/alibclinkpartner/c/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/alibaba/alibclinkpartner/g/b;

    iget-object v1, p0, Lcom/alibaba/alibclinkpartner/c/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/c/b;->a:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/alibclinkpartner/g/b;-><init>(Lcom/alibaba/alibclinkpartner/c/b;Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/alibaba/alibclinkpartner/g/a;

    iget v2, p0, Lcom/alibaba/alibclinkpartner/c/b;->r:I

    iget-object v3, p0, Lcom/alibaba/alibclinkpartner/c/b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alibclinkpartner/c/b;->i:Ljava/util/List;

    iget-object v5, p0, Lcom/alibaba/alibclinkpartner/c/b;->j:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alibclinkpartner/g/a;-><init>(Lcom/alibaba/alibclinkpartner/c/b;ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
