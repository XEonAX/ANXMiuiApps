.class Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;
.super Ljava/lang/Object;
.source "LoadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/uil/LoadMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Recorder"
.end annotation


# static fields
.field private static final TIME_FORMAT:Ljava/text/DecimalFormat;


# instance fields
.field private final mAssertLine:I

.field private final mBadLine:I

.field private mCount:I

.field private final mFrequency:I

.field private final mGoodLine:I

.field private volatile mIsSync:Z

.field private mSum:J

.field private final mType:I

.field private mWarnCount:I

.field private final mWarnLine:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->TIME_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(IZIII)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "initialSyncValue"    # Z
    .param p3, "frequency"    # I
    .param p4, "goodLine"    # I
    .param p5, "badLine"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mType:I

    .line 72
    iput-boolean p2, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mIsSync:Z

    .line 73
    iput p3, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mFrequency:I

    .line 74
    iput p4, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mGoodLine:I

    .line 75
    iput p5, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mBadLine:I

    .line 76
    iget v0, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mBadLine:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mWarnLine:I

    .line 77
    iget v0, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mBadLine:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mAssertLine:I

    .line 78
    return-void
.end method

.method private resetValues()V
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mCount:I

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mSum:J

    .line 141
    return-void
.end method

.method private setAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mIsSync:Z

    .line 129
    iput v0, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mWarnCount:I

    .line 130
    const-string v0, "LoadMonitor"

    const-string v1, "%s sync->async | %s"

    iget v2, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method private setSync()V
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mIsSync:Z

    .line 135
    const-string v0, "LoadMonitor"

    const-string v1, "%s async->sync"

    iget v2, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-void
.end method


# virtual methods
.method public isSync()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mIsSync:Z

    return v0
.end method

.method public declared-synchronized record(J)V
    .locals 13
    .param p1, "cost"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 84
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mIsSync:Z

    .line 87
    .local v2, "isSync":Z
    if-eqz v2, :cond_3

    .line 88
    iget v4, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mAssertLine:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    .line 89
    const-string v4, "assert"

    invoke-direct {p0, v4}, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->setAsync(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->resetValues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    :try_start_1
    iget v4, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mWarnLine:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-lez v4, :cond_2

    .line 93
    iget v4, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mWarnCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mWarnCount:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 94
    const-string/jumbo v4, "warnings"

    invoke-direct {p0, v4}, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->setAsync(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->resetValues()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    .end local v2    # "isSync":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 99
    .restart local v2    # "isSync":Z
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    iput v4, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mWarnCount:I

    .line 104
    :cond_3
    if-eqz v2, :cond_5

    iget v3, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mBadLine:I

    .line 105
    .local v3, "line":I
    :goto_1
    iget-wide v4, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mSum:J

    int-to-long v6, v3

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mSum:J

    .line 106
    iget v4, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mCount:I

    iget v5, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mFrequency:I

    if-ne v4, v5, :cond_0

    .line 107
    iget-wide v4, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mSum:J

    iget v6, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mFrequency:I

    int-to-long v6, v6

    div-long v0, v4, v6

    .line 112
    .local v0, "avg":J
    const-string v4, "LoadMonitor"

    const-string v5, "%s average: %s+ %s nanos"

    iget v6, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    if-eqz v2, :cond_6

    .line 115
    cmp-long v4, v0, v10

    if-lez v4, :cond_4

    .line 116
    const-string v4, "avg"

    invoke-direct {p0, v4}, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->setAsync(Ljava/lang/String;)V

    .line 123
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->resetValues()V

    goto :goto_0

    .line 104
    .end local v0    # "avg":J
    .end local v3    # "line":I
    :cond_5
    iget v3, p0, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->mGoodLine:I

    goto :goto_1

    .line 119
    .restart local v0    # "avg":J
    .restart local v3    # "line":I
    :cond_6
    cmp-long v4, v0, v10

    if-gez v4, :cond_4

    .line 120
    invoke-direct {p0}, Lcom/miui/gallery/util/uil/LoadMonitor$Recorder;->setSync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
