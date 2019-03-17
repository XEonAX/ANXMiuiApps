.class public Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;
.super Ljava/lang/Object;
.source "SyncMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/control/SyncMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadMonitorInfo"
.end annotation


# instance fields
.field final size:J

.field final timely:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "timely"    # J
    .param p3, "size"    # J

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-wide p1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;->timely:J

    .line 451
    iput-wide p3, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;->size:J

    .line 452
    return-void
.end method
