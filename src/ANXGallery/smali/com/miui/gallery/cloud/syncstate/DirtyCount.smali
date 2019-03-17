.class public Lcom/miui/gallery/cloud/syncstate/DirtyCount;
.super Ljava/lang/Object;
.source "DirtyCount.java"


# instance fields
.field private mOversizedImageCount:I

.field private mOversizedVideoCount:I

.field private mSyncableImageCount:I

.field private mSyncableVideoCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 96
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 99
    check-cast v0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    .line 100
    .local v0, "other":Lcom/miui/gallery/cloud/syncstate/DirtyCount;
    iget v2, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableImageCount:I

    iget v3, v0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableImageCount:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableVideoCount:I

    iget v3, v0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableVideoCount:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedImageCount:I

    iget v3, v0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedImageCount:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedVideoCount:I

    iget v3, v0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedVideoCount:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getOversizedCount()I
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedImageCount:I

    iget v1, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSyncableCount()I
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableImageCount:I

    iget v1, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalImageCount()I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableImageCount:I

    iget v1, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedImageCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalVideoCount()I
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableVideoCount:I

    iget v1, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableImageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableVideoCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedImageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedVideoCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public plus(Lcom/miui/gallery/cloud/syncstate/DirtyCount;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;
    .locals 2
    .param p1, "dirtyCount"    # Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget v0, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableImageCount:I

    iget v1, p1, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableImageCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableImageCount:I

    .line 82
    iget v0, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableVideoCount:I

    iget v1, p1, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableVideoCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableVideoCount:I

    .line 83
    iget v0, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedImageCount:I

    iget v1, p1, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedImageCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedImageCount:I

    .line 84
    iget v0, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedVideoCount:I

    iget v1, p1, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedVideoCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedVideoCount:I

    .line 86
    :cond_0
    return-object p0
.end method

.method public setOversizedImageCount(I)V
    .locals 0
    .param p1, "oversizedImageCount"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedImageCount:I

    .line 49
    return-void
.end method

.method public setOversizedVideoCount(I)V
    .locals 0
    .param p1, "oversizedVideoCount"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedVideoCount:I

    .line 57
    return-void
.end method

.method public setSyncableImageCount(I)V
    .locals 0
    .param p1, "syncableImageCount"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableImageCount:I

    .line 33
    return-void
.end method

.method public setSyncableVideoCount(I)V
    .locals 0
    .param p1, "syncableVideoCount"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableVideoCount:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirtyCount{mSyncableImageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableImageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSyncableVideoCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mSyncableVideoCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOversizedImageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedImageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOversizedVideoCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->mOversizedVideoCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
