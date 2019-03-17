.class abstract Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;
.super Ljava/lang/Object;
.source "AsyncUpDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/AsyncUpDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ResourceRef"
.end annotation


# instance fields
.field protected final mOwners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mOwners:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mTag:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 89
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "size=%d"

    iget-object v3, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mOwners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v1, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mOwners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "owner":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v0    # "owner":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire(Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mOwners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mTag:Ljava/lang/String;

    const-string v1, "onAcquire"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->onAcquire()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mOwners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method protected abstract onAcquire()V
.end method

.method protected abstract onRelease()V
.end method

.method public release(Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mOwners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mTag:Ljava/lang/String;

    const-string v1, "remove owner success: %s, left owners: %s"

    iget-object v2, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mOwners:Ljava/util/List;

    invoke-static {v0, v1, p1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mOwners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mTag:Ljava/lang/String;

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->onRelease()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove owner failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseAll()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->dump()V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mOwners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mOwners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->mTag:Ljava/lang/String;

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/AsyncUpDownloadService$ResourceRef;->onRelease()V

    .line 86
    :cond_0
    return-void
.end method
