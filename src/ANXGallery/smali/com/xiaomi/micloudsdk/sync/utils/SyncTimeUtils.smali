.class public Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;
.super Ljava/lang/Object;
.source "SyncTimeUtils.java"


# direct methods
.method private static getFullJitterTime(SSI)I
    .locals 10
    .param p0, "cap"    # S
    .param p1, "base"    # S
    .param p2, "attempt"    # I

    .prologue
    .line 74
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 75
    .local v0, "syncTimeRandom":Ljava/util/Random;
    int-to-double v2, p0

    int-to-double v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    return v1
.end method

.method private static getResumeSyncTimeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "ResumeSyncTime_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSyncSuspendTime(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 54
    const-string v3, "AttemptNumber_%s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "prefAttemptNumberKey":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/xiaomi/micloudsdk/utils/PrefUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 56
    .local v0, "attempt":I
    const/16 v3, 0x1c20

    const/16 v4, 0x12c

    invoke-static {v3, v4, v0}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getFullJitterTime(SSI)I

    move-result v2

    .line 57
    .local v2, "syncTimeInSeconds":I
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/xiaomi/micloudsdk/utils/PrefUtils;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    return v2
.end method

.method public static isSyncTimeAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const-wide/16 v8, 0x0

    .line 24
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getResumeSyncTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/xiaomi/micloudsdk/utils/PrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 25
    .local v2, "resumeTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 27
    .local v0, "remaining":J
    const-wide/32 v6, 0x5265c00

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    .line 28
    const-string v5, "SyncTimeUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSyncTimeAvailable: Remaining time of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "is not right and reset."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getResumeSyncTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/xiaomi/micloudsdk/utils/PrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 39
    :cond_0
    :goto_0
    return v4

    .line 31
    :cond_1
    cmp-long v5, v0, v8

    if-lez v5, :cond_2

    .line 32
    const-string v4, "SyncTimeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSyncTimeAvailable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sync suspended. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds to resume."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v4, 0x0

    goto :goto_0

    .line 34
    :cond_2
    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 35
    const-string v5, "SyncTimeUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSyncTimeAvailable: The suspension of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sync is expired now."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getResumeSyncTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/xiaomi/micloudsdk/utils/PrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static resetBackoffStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 66
    const-string v1, "AttemptNumber_%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "prefAttemptNumberKey":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/xiaomi/micloudsdk/utils/PrefUtils;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    return-void
.end method

.method public static suspendSync(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "suspendTime"    # J

    .prologue
    .line 62
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getResumeSyncTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/xiaomi/micloudsdk/utils/PrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    return-void
.end method
