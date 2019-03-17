.class public abstract Lcom/miui/gallery/scanner/ScanTask;
.super Ljava/lang/Object;
.source "ScanTask.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/scanner/ScanTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final mForceScan:Z

.field private final mForeground:Z

.field private final mNewTime:J

.field private final mPriority:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "foreground"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/scanner/ScanTask;->mNewTime:J

    .line 29
    iput p1, p0, Lcom/miui/gallery/scanner/ScanTask;->mPriority:I

    .line 30
    iput-boolean p2, p0, Lcom/miui/gallery/scanner/ScanTask;->mForeground:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/scanner/ScanTask;->mForceScan:Z

    .line 32
    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "foreground"    # Z
    .param p3, "forceScan"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/scanner/ScanTask;->mNewTime:J

    .line 35
    iput p1, p0, Lcom/miui/gallery/scanner/ScanTask;->mPriority:I

    .line 36
    iput-boolean p2, p0, Lcom/miui/gallery/scanner/ScanTask;->mForeground:Z

    .line 37
    iput-boolean p3, p0, Lcom/miui/gallery/scanner/ScanTask;->mForceScan:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected canRunningInBackground()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public compareTo(Lcom/miui/gallery/scanner/ScanTask;)I
    .locals 4
    .param p1, "another"    # Lcom/miui/gallery/scanner/ScanTask;

    .prologue
    .line 62
    if-nez p1, :cond_1

    .line 63
    const/4 v0, -0x1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    if-ne p0, p1, :cond_2

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_2
    iget v1, p0, Lcom/miui/gallery/scanner/ScanTask;->mPriority:I

    invoke-virtual {p1}, Lcom/miui/gallery/scanner/ScanTask;->getPriority()I

    move-result v2

    sub-int v0, v1, v2

    .line 69
    .local v0, "priority":I
    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/miui/gallery/scanner/ScanTask;->mNewTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/scanner/ScanTask;->getNewTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/miui/gallery/scanner/ScanTask;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/scanner/ScanTask;->compareTo(Lcom/miui/gallery/scanner/ScanTask;)I

    move-result v0

    return v0
.end method

.method public getNewTime()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/miui/gallery/scanner/ScanTask;->mNewTime:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/miui/gallery/scanner/ScanTask;->mPriority:I

    return v0
.end method

.method public isForceScan()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/miui/gallery/scanner/ScanTask;->mForceScan:Z

    return v0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/miui/gallery/scanner/ScanTask;->mForeground:Z

    return v0
.end method
