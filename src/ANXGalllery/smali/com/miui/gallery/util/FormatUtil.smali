.class public Lcom/miui/gallery/util/FormatUtil;
.super Ljava/lang/Object;
.source "FormatUtil.java"


# direct methods
.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 33
    div-int/lit16 v1, p1, 0xe10

    .line 34
    .local v1, "h":I
    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v2, v4, 0x3c

    .line 35
    .local v2, "m":I
    mul-int/lit16 v4, v1, 0xe10

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v4, v5

    sub-int v3, p1, v4

    .line 37
    .local v3, "s":I
    if-nez v1, :cond_0

    .line 38
    const v4, 0x7f0c0739

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "durationValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 40
    .end local v0    # "durationValue":Ljava/lang/String;
    :cond_0
    const v4, 0x7f0c0738

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "durationValue":Ljava/lang/String;
    goto :goto_0
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatHourMinutes(J)Ljava/lang/String;
    .locals 14
    .param p0, "millisecond"    # J

    .prologue
    const-wide/16 v12, 0x3c

    const-wide/16 v10, 0xa

    const-wide/16 v8, 0x0

    .line 76
    cmp-long v5, p0, v8

    if-gez v5, :cond_0

    .line 77
    const/4 v5, 0x0

    .line 97
    :goto_0
    return-object v5

    .line 79
    :cond_0
    const-wide/32 v6, 0xea60

    div-long v2, p0, v6

    .line 80
    .local v2, "minutes":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_1

    .line 81
    const-string v5, "00:01"

    goto :goto_0

    .line 83
    :cond_1
    div-long v0, v2, v12

    .line 84
    .local v0, "hour":J
    rem-long/2addr v2, v12

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v4, "sb":Ljava/lang/StringBuilder;
    cmp-long v5, v0, v10

    if-lez v5, :cond_2

    .line 87
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    :goto_1
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    cmp-long v5, v2, v10

    if-lez v5, :cond_3

    .line 93
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 89
    :cond_2
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 95
    :cond_3
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static formatVideoDuration(J)Ljava/lang/String;
    .locals 12
    .param p0, "duration"    # J

    .prologue
    .line 46
    const-wide/16 v8, 0x0

    cmp-long v5, p0, v8

    if-gez v5, :cond_0

    .line 47
    const/4 v5, 0x0

    .line 72
    :goto_0
    return-object v5

    .line 50
    :cond_0
    const-wide/16 v0, 0x0

    .local v0, "hours":J
    const-wide/16 v2, 0x0

    .local v2, "minutes":J
    move-wide v6, p0

    .line 51
    .local v6, "seconds":J
    const-wide/16 v8, 0xe10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 52
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 53
    const-wide/16 v8, 0xe10

    mul-long/2addr v8, v0

    sub-long/2addr v6, v8

    .line 56
    :cond_1
    const-wide/16 v8, 0x3c

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 57
    const-wide/16 v8, 0x3c

    div-long v2, v6, v8

    .line 58
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    sub-long/2addr v6, v8

    .line 61
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_3

    .line 63
    const-string v5, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_3
    const-string v5, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-wide/16 v8, 0xa

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    .line 69
    const-string v5, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_4
    const-string v5, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method
