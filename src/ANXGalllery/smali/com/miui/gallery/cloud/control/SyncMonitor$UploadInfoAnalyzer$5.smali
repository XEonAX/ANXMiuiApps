.class Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;
.super Ljava/lang/Object;
.source "SyncMonitor.java"

# interfaces
.implements Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$Func;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->addUploadInfo(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

.field final synthetic val$info:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    iput-object p2, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->val$info:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doFunc()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->doFunc()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doFunc()Ljava/lang/Void;
    .locals 12

    .prologue
    .line 516
    iget-object v1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    iget-object v6, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    iget-object v7, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->val$info:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;

    iget-wide v8, v7, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;->size:J

    iget-object v7, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->val$info:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;

    iget-wide v10, v7, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;->timely:J

    invoke-static {v6, v8, v9, v10, v11}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->access$500(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;JJ)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->access$202(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;J)J

    .line 517
    iget-object v1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    invoke-static {v1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->access$200(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)J

    move-result-wide v6

    iget-object v1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    invoke-static {v1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->access$100(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    iget-object v6, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    invoke-static {v6}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->access$200(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->access$102(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;J)J

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    invoke-static {v1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->access$400(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)Ljava/util/List;

    move-result-object v1

    iget-object v6, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->val$info:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    const-wide/16 v2, 0x0

    .line 522
    .local v2, "totalSize":J
    const-wide/16 v4, 0x0

    .line 523
    .local v4, "totalTime":J
    iget-object v1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    invoke-static {v1}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->access$400(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;

    .line 524
    .local v0, "info":Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;
    iget-wide v6, v0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;->size:J

    add-long/2addr v2, v6

    .line 525
    iget-wide v6, v0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;->timely:J

    add-long/2addr v4, v6

    .line 526
    goto :goto_0

    .line 527
    .end local v0    # "info":Lcom/miui/gallery/cloud/control/SyncMonitor$UploadMonitorInfo;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    iget-object v6, p0, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer$5;->this$0:Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;

    invoke-static {v6, v2, v3, v4, v5}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->access$500(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;JJ)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;->access$302(Lcom/miui/gallery/cloud/control/SyncMonitor$UploadInfoAnalyzer;J)J

    .line 528
    const/4 v1, 0x0

    return-object v1
.end method
