.class Lcom/miui/gallery/monitor/LogMonitor;
.super Ljava/lang/Object;
.source "LogMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;
    }
.end annotation


# instance fields
.field private final mBlockTime:J

.field private mStart:J

.field private final mTraceStackTime:J

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;J)V
    .locals 6
    .param p1, "monitorLooper"    # Landroid/os/Looper;
    .param p2, "blockTime"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v2, 0x1e

    const-wide/16 v4, 0xbb8

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/monitor/LogMonitor;->mBlockTime:J

    .line 25
    iget-wide v2, p0, Lcom/miui/gallery/monitor/LogMonitor;->mBlockTime:J

    long-to-float v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    iput-wide v2, p0, Lcom/miui/gallery/monitor/LogMonitor;->mTraceStackTime:J

    .line 26
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "monitor work"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 27
    .local v0, "workThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 28
    new-instance v1, Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/miui/gallery/monitor/LogMonitor$WorkHandler;-><init>(Landroid/os/Looper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/gallery/monitor/LogMonitor;->mWorkHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method


# virtual methods
.method startMonitor(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/monitor/LogMonitor;->mStart:J

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/monitor/LogMonitor;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/miui/gallery/monitor/LogMonitor;->mTraceStackTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    return-void
.end method

.method stopMonitor(Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 37
    iget-object v3, p0, Lcom/miui/gallery/monitor/LogMonitor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 38
    iget-wide v4, p0, Lcom/miui/gallery/monitor/LogMonitor;->mStart:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/gallery/monitor/LogMonitor;->mStart:J

    sub-long v0, v4, v6

    .line 40
    .local v0, "cost":J
    iget-wide v4, p0, Lcom/miui/gallery/monitor/LogMonitor;->mBlockTime:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    const-string v3, "%s ########### Processing: %sms"

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "log":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/monitor/LogMonitor;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 47
    .end local v0    # "cost":J
    .end local v2    # "log":Ljava/lang/String;
    :cond_0
    return-void
.end method
