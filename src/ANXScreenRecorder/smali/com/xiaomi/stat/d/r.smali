.class public Lcom/xiaomi/stat/d/r;
.super Ljava/lang/Object;


# static fields
.field public static final a:J = 0x5265c00L

.field private static final b:Ljava/lang/String; = "TimeUtil"

.field private static final c:J = 0x493e0L

.field private static d:J

.field private static e:J

.field private static f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    .line 27
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/xiaomi/stat/d/p;->f(Landroid/content/Context;)J

    move-result-wide v2

    .line 29
    invoke-static {v0}, Lcom/xiaomi/stat/d/p;->g(Landroid/content/Context;)J

    move-result-wide v4

    .line 30
    invoke-static {v0}, Lcom/xiaomi/stat/d/p;->h(Landroid/content/Context;)J

    move-result-wide v6

    .line 31
    const/4 v0, 0x1

    .line 32
    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    cmp-long v1, v4, v8

    if-eqz v1, :cond_0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    .line 35
    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    cmp-long v1, v8, v10

    if-gtz v1, :cond_0

    .line 36
    sput-wide v2, Lcom/xiaomi/stat/d/r;->d:J

    .line 37
    sput-wide v4, Lcom/xiaomi/stat/d/r;->f:J

    .line 38
    sput-wide v6, Lcom/xiaomi/stat/d/r;->e:J

    .line 39
    const/4 v0, 0x0

    .line 42
    :cond_0
    if-eqz v0, :cond_1

    .line 43
    invoke-static {}, Lcom/xiaomi/stat/b/e;->a()Lcom/xiaomi/stat/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stat/b/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/stat/d/s;

    invoke-direct {v2}, Lcom/xiaomi/stat/d/s;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 52
    :cond_1
    const-string v1, "TimeUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncTimeIfNeeded sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static a(J)V
    .locals 4

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v0, "MI_STAT_TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update server time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sput-wide p0, Lcom/xiaomi/stat/d/r;->d:J

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/stat/d/r;->e:J

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/stat/d/r;->f:J

    .line 78
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    .line 79
    sget-wide v2, Lcom/xiaomi/stat/d/r;->d:J

    invoke-static {v0, v2, v3}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;J)V

    .line 80
    sget-wide v2, Lcom/xiaomi/stat/d/r;->f:J

    invoke-static {v0, v2, v3}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;J)V

    .line 81
    sget-wide v2, Lcom/xiaomi/stat/d/r;->e:J

    invoke-static {v0, v2, v3}, Lcom/xiaomi/stat/d/p;->c(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static a(JJ)Z
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 59
    sget-wide v0, Lcom/xiaomi/stat/d/r;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/xiaomi/stat/d/r;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 60
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    :goto_0
    return-wide v0

    :cond_1
    sget-wide v0, Lcom/xiaomi/stat/d/r;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    sget-wide v2, Lcom/xiaomi/stat/d/r;->e:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public static b(J)Z
    .locals 12

    .prologue
    const-wide/32 v10, 0x5265c00

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    const-string v0, "MI_STAT_TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inToday,current ts :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 92
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 93
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 94
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 95
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 96
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 97
    add-long v6, v4, v10

    .line 99
    const-string v0, "MI_STAT_TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[start]:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\n[end]:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "duration"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v8, v6, v4

    sub-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v3, "MI_STAT_TEST"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is in today:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    cmp-long v0, v4, p0

    if-gtz v0, :cond_0

    cmp-long v0, p0, v6

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    cmp-long v0, v4, p0

    if-gtz v0, :cond_1

    cmp-long v0, p0, v6

    if-gez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1
.end method
