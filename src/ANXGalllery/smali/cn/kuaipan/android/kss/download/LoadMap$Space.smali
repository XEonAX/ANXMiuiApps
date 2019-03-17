.class Lcn/kuaipan/android/kss/download/LoadMap$Space;
.super Ljava/lang/Object;
.source "LoadMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/kss/download/LoadMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Space"
.end annotation


# instance fields
.field private final block:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

.field private end:J

.field private start:J

.field final synthetic this$0:Lcn/kuaipan/android/kss/download/LoadMap;


# direct methods
.method public constructor <init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;JJ)V
    .locals 1
    .param p1, "this$0"    # Lcn/kuaipan/android/kss/download/LoadMap;
    .param p2, "block"    # Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;
    .param p3, "start"    # J
    .param p5, "end"    # J

    .prologue
    .line 353
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->this$0:Lcn/kuaipan/android/kss/download/LoadMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    cmp-long v0, p5, p3

    if-gez v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 357
    :cond_0
    iput-object p2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->block:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    .line 358
    iput-wide p3, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->start:J

    .line 359
    iput-wide p5, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->end:J

    .line 360
    return-void
.end method

.method static synthetic access$1000(Lcn/kuaipan/android/kss/download/LoadMap$Space;)J
    .locals 2
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .prologue
    .line 348
    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->end:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcn/kuaipan/android/kss/download/LoadMap$Space;Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .param p1, "x1"    # Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->tryMerge(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .prologue
    .line 348
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->halve()Lcn/kuaipan/android/kss/download/LoadMap$Space;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .prologue
    .line 348
    invoke-direct {p0}, Lcn/kuaipan/android/kss/download/LoadMap$Space;->tryMerge()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcn/kuaipan/android/kss/download/LoadMap$Space;)J
    .locals 2
    .param p0, "x0"    # Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .prologue
    .line 348
    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->start:J

    return-wide v0
.end method

.method private halve()Lcn/kuaipan/android/kss/download/LoadMap$Space;
    .locals 12

    .prologue
    const-wide/16 v10, 0x400

    .line 376
    iget-wide v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->start:J

    iget-wide v6, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->end:J

    iget-wide v8, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->start:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long v4, v2, v6

    .line 377
    .local v4, "newStart":J
    rem-long v2, v4, v10

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    .line 378
    div-long v2, v4, v10

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    mul-long v4, v2, v10

    .line 381
    :cond_0
    new-instance v1, Lcn/kuaipan/android/kss/download/LoadMap$Space;

    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->this$0:Lcn/kuaipan/android/kss/download/LoadMap;

    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->block:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    iget-wide v6, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->end:J

    invoke-direct/range {v1 .. v7}, Lcn/kuaipan/android/kss/download/LoadMap$Space;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;JJ)V

    .line 382
    .local v1, "result":Lcn/kuaipan/android/kss/download/LoadMap$Space;
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->block:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    invoke-static {v0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$800(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iput-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->end:J

    .line 385
    return-object v1
.end method

.method private tryMerge()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->block:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    invoke-static {v0, p0}, Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;->access$1100(Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z

    move-result v0

    return v0
.end method

.method private tryMerge(Lcn/kuaipan/android/kss/download/LoadMap$Space;)Z
    .locals 4
    .param p1, "space"    # Lcn/kuaipan/android/kss/download/LoadMap$Space;

    .prologue
    .line 399
    iget-wide v0, p1, Lcn/kuaipan/android/kss/download/LoadMap$Space;->start:J

    iget-wide v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->end:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 404
    :goto_0
    return v0

    .line 403
    :cond_0
    iget-wide v0, p1, Lcn/kuaipan/android/kss/download/LoadMap$Space;->end:J

    iput-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->end:J

    .line 404
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method getStart()J
    .locals 2

    .prologue
    .line 363
    iget-wide v0, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->start:J

    return-wide v0
.end method

.method remove(I)V
    .locals 6
    .param p1, "size"    # I

    .prologue
    .line 370
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->block:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-wide v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->start:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->end:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->start:J

    .line 372
    monitor-exit v1

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method size()J
    .locals 6

    .prologue
    .line 389
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->block:Lcn/kuaipan/android/kss/download/LoadMap$BlockSpace;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-wide v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->end:J

    iget-wide v4, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->start:J

    sub-long/2addr v2, v4

    monitor-exit v1

    return-wide v2

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->start:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/kuaipan/android/kss/download/LoadMap$Space;->end:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
