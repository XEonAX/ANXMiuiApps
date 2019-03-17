.class public Lcom/xiaomi/mipush/sdk/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# direct methods
.method protected static getEnvType()I
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/xiaomi/channel/commonutils/misc/BuildSettings;->getEnvType()I

    move-result v0

    return v0
.end method
