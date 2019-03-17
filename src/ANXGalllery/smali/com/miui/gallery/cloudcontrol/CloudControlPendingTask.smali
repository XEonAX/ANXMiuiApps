.class public Lcom/miui/gallery/cloudcontrol/CloudControlPendingTask;
.super Lcom/miui/gallery/push/PendingPullTask;
.source "CloudControlPendingTask.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/miui/gallery/push/PendingPullTask;-><init>(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public requireCharging()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public requireDeviceIdle()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method
