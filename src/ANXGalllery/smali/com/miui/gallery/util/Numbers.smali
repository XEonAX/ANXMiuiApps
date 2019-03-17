.class public Lcom/miui/gallery/util/Numbers;
.super Ljava/lang/Object;
.source "Numbers.java"


# direct methods
.method public static compare(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ":",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "i":Ljava/lang/Number;, "TT;"
    .local p1, "j":Ljava/lang/Number;, "TT;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 42
    check-cast p0, Ljava/lang/Comparable;

    .end local p0    # "i":Ljava/lang/Number;, "TT;"
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 48
    :goto_0
    return v0

    .line 43
    .restart local p0    # "i":Ljava/lang/Number;, "TT;"
    :cond_0
    if-eqz p0, :cond_1

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    if-eqz p1, :cond_2

    .line 46
    const/4 v0, -0x1

    goto :goto_0

    .line 48
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs ensurePositive([J)V
    .locals 8
    .param p0, "nums"    # [J

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "nums can not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    .line 31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "nums can not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_1
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 34
    .local v0, "num":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    .line 35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "negative or zero received"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "num":Ljava/lang/Long;
    :cond_3
    return-void
.end method

.method public static equals(Ljava/lang/Number;I)Z
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ":",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "i":Ljava/lang/Number;, "TT;"
    const/4 v0, 0x0

    .line 69
    if-nez p0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Number;J)Z
    .locals 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ":",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;J)Z"
        }
    .end annotation

    .prologue
    .local p0, "i":Ljava/lang/Number;, "TT;"
    const/4 v0, 0x0

    .line 61
    if-nez p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ":",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "i":Ljava/lang/Number;, "TT;"
    .local p1, "j":Ljava/lang/Number;, "TT;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLong(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "index"    # I

    .prologue
    .line 123
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 20
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 24
    .end local p1    # "defaultValue":Ljava/lang/Long;
    :goto_0
    return-object p1

    .line 21
    .restart local p1    # "defaultValue":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static toArray(Ljava/util/List;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 155
    :cond_1
    return-object v0

    .line 151
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [J

    .line 152
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static unbox(Ljava/lang/Integer;I)I
    .locals 0
    .param p0, "x"    # Ljava/lang/Integer;
    .param p1, "defaultValue"    # I

    .prologue
    .line 91
    if-nez p0, :cond_0

    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static unbox(Ljava/lang/Long;J)J
    .locals 1
    .param p0, "x"    # Ljava/lang/Long;
    .param p1, "defaultValue"    # J

    .prologue
    .line 99
    if-nez p0, :cond_0

    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .restart local p1    # "defaultValue":J
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0
.end method
