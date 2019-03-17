.class public Lcom/alibaba/mtl/appmonitor/f/b;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 6
    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/f/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 11
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    .line 19
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    .line 14
    :goto_1
    if-ge v2, v3, :cond_3

    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 19
    goto :goto_0
.end method
