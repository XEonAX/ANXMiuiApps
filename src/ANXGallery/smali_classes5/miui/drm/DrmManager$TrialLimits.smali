.class public Lmiui/drm/DrmManager$TrialLimits;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrialLimits"
.end annotation


# instance fields
.field public endTime:J

.field public startTime:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-wide p1, p0, Lmiui/drm/DrmManager$TrialLimits;->startTime:J

    .line 142
    iput-wide p3, p0, Lmiui/drm/DrmManager$TrialLimits;->endTime:J

    .line 143
    return-void
.end method
