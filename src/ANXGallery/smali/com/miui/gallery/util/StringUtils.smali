.class public Lcom/miui/gallery/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static join(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [J

    .prologue
    .line 25
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    .line 26
    :cond_0
    const-string v4, ""

    .line 38
    :goto_0
    return-object v4

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 30
    .local v0, "firstTime":Z
    array-length v5, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-wide v2, p1, v4

    .line 31
    .local v2, "item":J
    if-eqz v0, :cond_2

    .line 32
    const/4 v0, 0x0

    .line 36
    :goto_2
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 38
    .end local v2    # "item":J
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static mergeStringArray([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "strings1"    # [Ljava/lang/String;
    .param p1, "strings2"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 13
    .end local p1    # "strings2":[Ljava/lang/String;
    :goto_0
    return-object p1

    .line 8
    .restart local p1    # "strings2":[Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/String;

    .line 11
    .local v0, "merged":[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 13
    goto :goto_0
.end method

.method public static nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 17
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
