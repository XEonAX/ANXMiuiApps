.class Lcom/miui/internal/server/CoreJobService$AnyNetworkJob;
.super Lcom/miui/internal/server/CoreJobService$AbstractJob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/CoreJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyNetworkJob"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/server/CoreJobService$AbstractJob;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    .line 95
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 99
    invoke-static {}, Lcom/miui/internal/server/DataUpdateManager;->getInstance()Lcom/miui/internal/server/DataUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/server/DataUpdateManager;->update()V

    .line 100
    invoke-super {p0}, Lcom/miui/internal/server/CoreJobService$AbstractJob;->run()V

    .line 101
    return-void
.end method
