.class Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$4;
.super Ljava/lang/Object;
.source "SyncMonitor.java"

# interfaces
.implements Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->getUploadTraffic()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$4;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFunc()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 493
    const-wide/16 v2, 0x0

    .line 494
    .local v2, "traffic":J
    iget-object v1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$4;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    invoke-static {v1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->access$400(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;

    .line 495
    .local v0, "info":Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;
    iget-wide v4, v0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;->size:J

    add-long/2addr v2, v4

    .line 496
    goto :goto_0

    .line 497
    .end local v0    # "info":Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic doFunc()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$4;->doFunc()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
