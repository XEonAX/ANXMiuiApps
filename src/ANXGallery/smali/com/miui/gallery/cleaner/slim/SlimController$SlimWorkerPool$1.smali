.class Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;
.super Ljava/lang/Object;
.source "SlimController.java"

# interfaces
.implements Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDoneCount:I

.field private mTimeCost:J

.field final synthetic this$1:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;)V
    .locals 2
    .param p1, "this$1"    # Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;->this$1:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;->mDoneCount:I

    .line 507
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;->mTimeCost:J

    return-void
.end method


# virtual methods
.method public onSlimDone(J)V
    .locals 9
    .param p1, "timeCost"    # J

    .prologue
    .line 511
    iget-object v2, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;->this$1:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    monitor-enter v2

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;->this$1:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    invoke-static {v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->access$1500(Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;)[Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;

    move-result-object v1

    if-nez v1, :cond_0

    .line 513
    monitor-exit v2

    .line 527
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-wide v4, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;->mTimeCost:J

    cmp-long v1, v4, p1

    if-gez v1, :cond_1

    .line 516
    iput-wide p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;->mTimeCost:J

    .line 518
    :cond_1
    iget v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;->mDoneCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;->mDoneCount:I

    .line 519
    iget v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;->mDoneCount:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 520
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;->this$1:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->stop()V

    .line 521
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 522
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "timeCost"

    iget-wide v4, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool$1;->mTimeCost:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-float v3, v4

    sget-object v4, Lcom/miui/gallery/cleaner/slim/SlimController;->TIME_COST_STAGE:[I

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->formatValueStage(F[I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v1, "cleaner"

    const-string/jumbo v3, "slim_finish"

    invoke-static {v1, v3, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 526
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
