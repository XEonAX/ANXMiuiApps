.class public Lcom/miui/os/FeatureHelper;
.super Ljava/lang/Object;
.source "FeatureHelper.java"


# direct methods
.method public static isPad()Z
    .locals 2

    .prologue
    .line 11
    const-string v0, "is_pad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isXiaoMi()Z
    .locals 2

    .prologue
    .line 15
    const-string v0, "is_xiaomi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
