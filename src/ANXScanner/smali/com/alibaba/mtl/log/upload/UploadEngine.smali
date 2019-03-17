.class public Lcom/alibaba/mtl/log/upload/UploadEngine;
.super Ljava/lang/Object;
.source "UploadEngine.java"


# static fields
.field static a:Lcom/alibaba/mtl/log/upload/UploadEngine;


# instance fields
.field private A:I

.field private G:Z

.field protected z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/alibaba/mtl/log/upload/UploadEngine;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/upload/UploadEngine;->a:Lcom/alibaba/mtl/log/upload/UploadEngine;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->z:J

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->G:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/mtl/log/upload/UploadEngine;)J
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/mtl/log/upload/UploadEngine;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->G:Z

    return v0
.end method

.method private c()J
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    const-string v2, "UploadEngine"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "UTDC.bBackground:"

    aput-object v4, v3, v1

    sget-boolean v4, Lcom/alibaba/mtl/log/a;->o:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string v5, "AppInfoUtil.isForeground(UTDC.getContext()) "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/mtl/log/d/b;->b(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/mtl/log/d/b;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    sput-boolean v0, Lcom/alibaba/mtl/log/a;->o:Z

    .line 73
    sget-boolean v0, Lcom/alibaba/mtl/log/a;->o:Z

    .line 74
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()J

    .line 75
    if-eqz v0, :cond_2

    .line 76
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->b()J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->A:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 80
    :goto_1
    iput-wide v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->z:J

    .line 81
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->z:J

    .line 84
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->z:J

    return-wide v0

    :cond_1
    move v0, v1

    .line 72
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->A:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public static getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/mtl/log/upload/UploadEngine;->a:Lcom/alibaba/mtl/log/upload/UploadEngine;

    return-object v0
.end method


# virtual methods
.method public refreshInterval()V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->A:I

    if-nez v0, :cond_0

    .line 59
    const/16 v0, 0x1b58

    iput v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->A:I

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->A:I

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 6

    .prologue
    .line 26
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->G:Z

    .line 27
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/d/r;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/d/r;->f(I)V

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->c()J

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 32
    invoke-static {}, Lcom/alibaba/mtl/log/upload/a;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Lcom/alibaba/mtl/log/upload/UploadEngine$1;

    invoke-direct {v3, p0}, Lcom/alibaba/mtl/log/upload/UploadEngine$1;-><init>(Lcom/alibaba/mtl/log/upload/UploadEngine;)V

    iget-wide v4, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->z:J

    long-to-int v4, v4

    .line 53
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 33
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine;->G:Z

    .line 67
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/d/r;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
