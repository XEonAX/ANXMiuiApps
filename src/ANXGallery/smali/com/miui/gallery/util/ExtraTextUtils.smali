.class public Lcom/miui/gallery/util/ExtraTextUtils;
.super Ljava/lang/Object;
.source "ExtraTextUtils.java"


# direct methods
.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 7
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
