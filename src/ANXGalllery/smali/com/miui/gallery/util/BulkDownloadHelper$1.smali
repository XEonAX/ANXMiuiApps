.class Lcom/miui/gallery/util/BulkDownloadHelper$1;
.super Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;
.source "BulkDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/BulkDownloadHelper;->generatorItemListener(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/BulkDownloadHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/BulkDownloadHelper;Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/BulkDownloadHelper;
    .param p2, "item"    # Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-direct {p0, p2}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;-><init>(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)V

    return-void
.end method


# virtual methods
.method public onLoadingFailed(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    .param p2, "errorCode"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 104
    const-string v0, "BulkDownloadHelper"

    const-string v1, "onLoadingFailed %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-static {v0, p1}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$000(Lcom/miui/gallery/util/BulkDownloadHelper;Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-static {v0, p1}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$100(Lcom/miui/gallery/util/BulkDownloadHelper;Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onLoadingProgress(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;JJ)V
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    .param p2, "current"    # J
    .param p4, "total"    # J

    .prologue
    .line 124
    iget-object v1, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-static {v1, p1}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$000(Lcom/miui/gallery/util/BulkDownloadHelper;Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-static {v1}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$600(Lcom/miui/gallery/util/BulkDownloadHelper;)Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-static {v2}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$200(Lcom/miui/gallery/util/BulkDownloadHelper;)J

    move-result-wide v2

    add-long/2addr v2, p2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-static {v2}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$700(Lcom/miui/gallery/util/BulkDownloadHelper;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 127
    .local v0, "progress":F
    iget-object v1, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-static {v1}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$600(Lcom/miui/gallery/util/BulkDownloadHelper;)Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;->onDownloadProgress(F)V

    .line 130
    .end local v0    # "progress":F
    :cond_0
    return-void
.end method

.method public onLoadingSuccess(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)V
    .locals 6
    .param p1, "item"    # Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .prologue
    .line 112
    const-string v0, "BulkDownloadHelper"

    const-string v1, "onLoadingSuccess %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-static {v0, p1}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$000(Lcom/miui/gallery/util/BulkDownloadHelper;Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    iget-object v1, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-static {v1}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$200(Lcom/miui/gallery/util/BulkDownloadHelper;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$202(Lcom/miui/gallery/util/BulkDownloadHelper;J)J

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$300(Lcom/miui/gallery/util/BulkDownloadHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$400(Lcom/miui/gallery/util/BulkDownloadHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper$1;->this$0:Lcom/miui/gallery/util/BulkDownloadHelper;

    invoke-static {v0}, Lcom/miui/gallery/util/BulkDownloadHelper;->access$500(Lcom/miui/gallery/util/BulkDownloadHelper;)V

    .line 120
    :cond_0
    return-void
.end method
