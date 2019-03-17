.class Lcom/alibaba/mtl/appmonitor/c;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/mtl/appmonitor/c;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Z


# instance fields
.field private d:I

.field private e:I

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/c;->j:Z

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const v0, 0x2bf20

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/c;->d:I

    .line 94
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/c;->e:I

    .line 95
    iput p2, p0, Lcom/alibaba/mtl/appmonitor/c;->d:I

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/c;->startTime:J

    .line 97
    return-void
.end method

.method private static a(I)I
    .locals 1

    .prologue
    .line 117
    sparse-switch p0, :sswitch_data_0

    .line 127
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 119
    :sswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 121
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 123
    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 125
    :sswitch_3
    const/16 v0, 0xb

    goto :goto_0

    .line 117
    :sswitch_data_0
    .sparse-switch
        0xfe6d -> :sswitch_3
        0xffdd -> :sswitch_0
        0xffde -> :sswitch_1
        0xffdf -> :sswitch_2
    .end sparse-switch
.end method

.method static a(II)V
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 59
    const-string v0, "CommitTask"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setStatisticsInterval] eventId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " statisticsInterval:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget-object v1, Lcom/alibaba/mtl/appmonitor/c;->f:Ljava/util/Map;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/c;->f:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/c;

    .line 62
    if-nez v0, :cond_1

    .line 63
    if-lez p1, :cond_0

    .line 64
    new-instance v0, Lcom/alibaba/mtl/appmonitor/c;

    mul-int/lit16 v2, p1, 0x3e8

    invoke-direct {v0, p0, v2}, Lcom/alibaba/mtl/appmonitor/c;-><init>(II)V

    .line 65
    sget-object v2, Lcom/alibaba/mtl/appmonitor/c;->f:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "CommitTask"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "post next eventId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": uploadTask.interval "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/alibaba/mtl/appmonitor/c;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v2

    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/c;->a(I)I

    move-result v3

    iget v4, v0, Lcom/alibaba/mtl/appmonitor/c;->d:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V

    .line 90
    :cond_0
    :goto_0
    monitor-exit v1

    .line 91
    return-void

    .line 70
    :cond_1
    if-lez p1, :cond_2

    .line 72
    iget v4, v0, Lcom/alibaba/mtl/appmonitor/c;->d:I

    mul-int/lit16 v5, p1, 0x3e8

    if-eq v4, v5, :cond_0

    .line 73
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v4

    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/c;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/log/d/r;->f(I)V

    .line 74
    mul-int/lit16 v4, p1, 0x3e8

    iput v4, v0, Lcom/alibaba/mtl/appmonitor/c;->d:I

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 76
    iget v4, v0, Lcom/alibaba/mtl/appmonitor/c;->d:I

    int-to-long v4, v4

    iget-wide v8, v0, Lcom/alibaba/mtl/appmonitor/c;->startTime:J

    sub-long v8, v6, v8

    sub-long/2addr v4, v8

    .line 77
    cmp-long v8, v4, v2

    if-gez v8, :cond_3

    .line 80
    :goto_1
    const-string v4, "CommitTask"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "post next eventId"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " next:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  uploadTask.interval: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/alibaba/mtl/appmonitor/c;->d:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v4

    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/c;->a(I)I

    move-result v5

    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V

    .line 82
    iput-wide v6, v0, Lcom/alibaba/mtl/appmonitor/c;->startTime:J

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 85
    :cond_2
    :try_start_1
    const-string v0, "CommitTask"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadTasks.size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/mtl/appmonitor/c;->f:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/alibaba/mtl/appmonitor/c;->f:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "CommitTask"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadTasks.size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/mtl/appmonitor/c;->f:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_3
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method static d()V
    .locals 5

    .prologue
    .line 111
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 112
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alibaba/mtl/appmonitor/a/e;->a(I)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method static destroy()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 52
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v5

    invoke-virtual {v4}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/mtl/appmonitor/c;->a(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/alibaba/mtl/log/d/r;->f(I)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    sput-boolean v1, Lcom/alibaba/mtl/appmonitor/c;->j:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/c;->f:Ljava/util/Map;

    .line 56
    return-void
.end method

.method static init()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 33
    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/c;->j:Z

    if-nez v1, :cond_2

    .line 34
    const-string v1, "CommitTask"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "init StatisticsAlarmEvent"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/alibaba/mtl/appmonitor/c;->f:Ljava/util/Map;

    .line 36
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v1

    .line 37
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 38
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v4

    .line 40
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->c()I

    move-result v3

    .line 41
    new-instance v5, Lcom/alibaba/mtl/appmonitor/c;

    mul-int/lit16 v3, v3, 0x3e8

    invoke-direct {v5, v4, v3}, Lcom/alibaba/mtl/appmonitor/c;-><init>(II)V

    .line 42
    sget-object v3, Lcom/alibaba/mtl/appmonitor/c;->f:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v3

    invoke-static {v4}, Lcom/alibaba/mtl/appmonitor/c;->a(I)I

    move-result v4

    iget v6, v5, Lcom/alibaba/mtl/appmonitor/c;->d:I

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    sput-boolean v8, Lcom/alibaba/mtl/appmonitor/c;->j:Z

    .line 48
    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    const-string v0, "CommitTask"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "check&commit event:"

    aput-object v2, v1, v4

    iget v2, p0, Lcom/alibaba/mtl/appmonitor/c;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/mtl/appmonitor/c;->e:I

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(I)V

    .line 103
    sget-object v0, Lcom/alibaba/mtl/appmonitor/c;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/c;->startTime:J

    .line 105
    const-string v0, "CommitTask"

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/mtl/appmonitor/c;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/mtl/appmonitor/c;->e:I

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/c;->a(I)I

    move-result v1

    iget v2, p0, Lcom/alibaba/mtl/appmonitor/c;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V

    .line 108
    :cond_0
    return-void
.end method
