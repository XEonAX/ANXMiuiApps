.class public Lcom/miui/gallery/data/UbiIndexMapper;
.super Ljava/lang/Object;
.source "UbiIndexMapper.java"


# direct methods
.method public static cloudToLocal(II)I
    .locals 1
    .param p0, "cloudIndex"    # I
    .param p1, "subUbiCount"    # I

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    add-int/lit8 v0, p1, -0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    goto :goto_0
.end method

.method public static localToCloud(II)I
    .locals 1
    .param p0, "localIndex"    # I
    .param p1, "subUbiCount"    # I

    .prologue
    .line 23
    add-int/lit8 v0, p1, -0x1

    if-ne p0, v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x1

    goto :goto_0
.end method
