.class Lcom/miui/internal/server/CoreJobService$UnmerteredNetworkJob;
.super Lcom/miui/internal/server/CoreJobService$AbstractJob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/CoreJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmerteredNetworkJob"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/server/CoreJobService$AbstractJob;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    .line 107
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    invoke-static {}, Lcom/miui/internal/server/DataUpdateManager;->getInstance()Lcom/miui/internal/server/DataUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/server/DataUpdateManager;->update()V

    .line 112
    invoke-static {}, Lcom/miui/internal/analytics/AnalyticsManager;->getInstance()Lcom/miui/internal/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/analytics/AnalyticsManager;->upload()V

    .line 113
    invoke-super {p0}, Lcom/miui/internal/server/CoreJobService$AbstractJob;->run()V

    .line 114
    return-void
.end method
