.class public Lcom/miui/gallery/provider/cache/CacheUtils;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# direct methods
.method public static columnEquals(Lcom/miui/gallery/provider/cache/CacheItem;Lcom/miui/gallery/provider/cache/CacheItem;I)Z
    .locals 5
    .param p0, "item1"    # Lcom/miui/gallery/provider/cache/CacheItem;
    .param p1, "item2"    # Lcom/miui/gallery/provider/cache/CacheItem;
    .param p2, "columnIndex"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 12
    if-ne p0, p1, :cond_1

    move v2, v3

    .line 37
    :cond_0
    :goto_0
    return v2

    .line 15
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 19
    invoke-interface {p0, p2}, Lcom/miui/gallery/provider/cache/CacheItem;->getType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 33
    :pswitch_0
    invoke-interface {p1, p2}, Lcom/miui/gallery/provider/cache/CacheItem;->getType(I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 21
    :pswitch_1
    invoke-interface {p0, p2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, p2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 23
    :pswitch_2
    invoke-interface {p0, p2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v0

    .line 24
    .local v0, "o1":Ljava/lang/Object;
    invoke-interface {p1, p2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v1

    .line 25
    .local v1, "o2":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 26
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o1":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/Long;

    .end local v1    # "o2":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    invoke-static {v0, v2, v3}, Lcom/miui/gallery/util/Numbers;->equals(Ljava/lang/Number;J)Z

    move-result v2

    goto :goto_0

    .restart local v1    # "o2":Ljava/lang/Object;
    :cond_2
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "o2":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    goto :goto_1

    .line 28
    .restart local v0    # "o1":Ljava/lang/Object;
    .restart local v1    # "o2":Ljava/lang/Object;
    :cond_3
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o1":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Long;

    .end local v1    # "o2":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_2
    invoke-static {v0, v2, v3}, Lcom/miui/gallery/util/Numbers;->equals(Ljava/lang/Number;J)Z

    move-result v2

    goto :goto_0

    .restart local v1    # "o2":Ljava/lang/Object;
    :cond_4
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "o2":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    goto :goto_2

    .line 31
    :pswitch_3
    invoke-interface {p0, p2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-interface {p1, p2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Numbers;->equals(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v2

    goto :goto_0

    .line 35
    :pswitch_4
    invoke-interface {p0, p2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Byte;

    check-cast v2, [Ljava/lang/Byte;

    invoke-interface {p1, p2, v3}, Lcom/miui/gallery/provider/cache/CacheItem;->get(IZ)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Byte;

    check-cast v3, [Ljava/lang/Byte;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
