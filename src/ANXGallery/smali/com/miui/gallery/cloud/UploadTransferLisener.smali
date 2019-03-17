.class public Lcom/miui/gallery/cloud/UploadTransferLisener;
.super Ljava/lang/Object;
.source "UploadTransferLisener.java"

# interfaces
.implements Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;


# instance fields
.field private mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 0
    .param p1, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/miui/gallery/cloud/UploadTransferLisener;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 14
    return-void
.end method


# virtual methods
.method public onDataReceived(JJ)V
    .locals 3
    .param p1, "pos"    # J
    .param p3, "total"    # J

    .prologue
    .line 28
    const-string v0, "CloudGalleryTransferListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upload should not received, pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/cloud/UploadTransferLisener;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 29
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/RequestCloudItem;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public onDataSended(JJ)V
    .locals 4
    .param p1, "pos"    # J
    .param p3, "total"    # J

    .prologue
    .line 18
    iget-object v1, p0, Lcom/miui/gallery/cloud/UploadTransferLisener;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    iget v1, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->priority:I

    invoke-static {v1}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v0

    .line 19
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 20
    const-string v1, "CloudGalleryTransferListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net work is changed, interrupt this thread, priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/UploadTransferLisener;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    iget v3, v3, Lcom/miui/gallery/cloud/RequestCloudItem;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/UploadTransferLisener;->mRequestItem:Lcom/miui/gallery/cloud/RequestCloudItem;

    .line 21
    invoke-virtual {v3}, Lcom/miui/gallery/cloud/RequestCloudItem;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 24
    :cond_0
    return-void
.end method
