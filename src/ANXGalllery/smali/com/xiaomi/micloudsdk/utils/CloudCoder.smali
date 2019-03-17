.class public Lcom/xiaomi/micloudsdk/utils/CloudCoder;
.super Ljava/lang/Object;
.source "CloudCoder.java"


# static fields
.field private static sServerDateOffset:J


# direct methods
.method public static generateNonce()Ljava/lang/String;
    .locals 6

    .prologue
    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->sServerDateOffset:J

    add-long v0, v2, v4

    .line 379
    .local v0, "serverTime":J
    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->generateNonce(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static generateNonce(J)Ljava/lang/String;
    .locals 2
    .param p0, "serverTime"    # J

    .prologue
    .line 383
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/Coder;->generateNonce(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p3, "security"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 161
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/utils/Coder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setServerDateOffset(J)V
    .locals 0
    .param p0, "serverDateOffset"    # J

    .prologue
    .line 374
    sput-wide p0, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->sServerDateOffset:J

    .line 375
    return-void
.end method
