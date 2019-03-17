.class public Lcom/miui/gallery/util/assistant/FlagUtil;
.super Ljava/lang/Object;
.source "FlagUtil.java"


# direct methods
.method public static hasFlag(II)Z
    .locals 1
    .param p0, "srcFlag"    # I
    .param p1, "flag"    # I

    .prologue
    .line 14
    and-int v0, p0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFlag(II)I
    .locals 1
    .param p0, "srcFlag"    # I
    .param p1, "flag"    # I

    .prologue
    .line 6
    or-int v0, p0, p1

    return v0
.end method
