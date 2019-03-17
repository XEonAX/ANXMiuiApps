.class public abstract Lcom/miui/gallery/model/BaseCloudDataSet;
.super Lcom/miui/gallery/model/CursorDataSet;
.source "BaseCloudDataSet.java"


# instance fields
.field protected mAlbumId:J

.field protected mAlbumName:Ljava/lang/String;

.field protected mOpDupType:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;IIJLjava/lang/String;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "initPos"    # I
    .param p3, "dupType"    # I
    .param p4, "albumId"    # J
    .param p6, "albumName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/model/CursorDataSet;-><init>(Landroid/database/Cursor;I)V

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/model/BaseCloudDataSet;->mAlbumId:J

    .line 19
    iput p3, p0, Lcom/miui/gallery/model/BaseCloudDataSet;->mOpDupType:I

    .line 20
    iput-wide p4, p0, Lcom/miui/gallery/model/BaseCloudDataSet;->mAlbumId:J

    .line 21
    iput-object p6, p0, Lcom/miui/gallery/model/BaseCloudDataSet;->mAlbumName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public addToAlbum(Landroid/app/Activity;IZZLcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;)Z
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "operateSync"    # Z
    .param p4, "canAddSecret"    # Z
    .param p5, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    .prologue
    const/4 v8, 0x1

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/miui/gallery/model/BaseCloudDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v7

    .line 42
    .local v7, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v7, :cond_0

    .line 43
    iget v2, p0, Lcom/miui/gallery/model/BaseCloudDataSet;->mOpDupType:I

    invoke-virtual {p0}, Lcom/miui/gallery/model/BaseCloudDataSet;->isAlbumRemovable()Z

    move-result v3

    new-array v6, v8, [J

    const/4 v0, 0x0

    check-cast v7, Lcom/miui/gallery/model/CloudItem;

    .line 44
    .end local v7    # "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {v7}, Lcom/miui/gallery/model/CloudItem;->getId()J

    move-result-wide v4

    aput-wide v4, v6, v0

    move-object v0, p1

    move-object v1, p5

    move v4, p3

    move v5, p4

    .line 43
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addToAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;IZZZ[J)V

    .line 46
    :cond_0
    return v8
.end method

.method public addToFavorites(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    const/4 v6, 0x1

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/miui/gallery/model/BaseCloudDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/CloudItem;

    .line 76
    .local v0, "item":Lcom/miui/gallery/model/CloudItem;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p3}, Lcom/miui/gallery/model/CloudItem;->wrapAddToFavoritesListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    move-result-object v1

    new-array v2, v6, [J

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/miui/gallery/model/CloudItem;->getId()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 77
    invoke-static {p1, v1, v2}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->addToFavoritesById(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V

    .line 81
    :cond_0
    return v6
.end method

.method public delete(Landroid/app/Activity;ILcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    .prologue
    .line 26
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/miui/gallery/model/BaseCloudDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 27
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    .line 28
    const-string v2, "DeleteMediaDialogFragment"

    iget-wide v4, p0, Lcom/miui/gallery/model/BaseCloudDataSet;->mAlbumId:J

    iget-object v6, p0, Lcom/miui/gallery/model/BaseCloudDataSet;->mAlbumName:Ljava/lang/String;

    iget v7, p0, Lcom/miui/gallery/model/BaseCloudDataSet;->mOpDupType:I

    const/16 v8, 0x19

    const/4 v1, 0x1

    new-array v9, v1, [J

    const/4 v1, 0x0

    check-cast v0, Lcom/miui/gallery/model/CloudItem;

    .line 30
    .end local v0    # "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {v0}, Lcom/miui/gallery/model/CloudItem;->getId()J

    move-result-wide v10

    aput-wide v10, v9, v1

    move-object v1, p1

    move-object v3, p3

    .line 28
    invoke-static/range {v1 .. v9}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->delete(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;JLjava/lang/String;II[J)V

    .line 32
    :cond_0
    return-void
.end method

.method protected doDelete(Lcom/miui/gallery/model/BaseDataItem;)I
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected isAlbumRemovable()Z
    .locals 4

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/miui/gallery/model/BaseCloudDataSet;->mAlbumId:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/model/BaseCloudDataSet;->mAlbumId:J

    const-wide/32 v2, 0x7ffffffd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/model/BaseCloudDataSet;->mAlbumId:J

    const-wide/32 v2, 0x7ffffffa

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFromFavorites(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    const/4 v6, 0x1

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/miui/gallery/model/BaseCloudDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/CloudItem;

    .line 87
    .local v0, "item":Lcom/miui/gallery/model/CloudItem;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p3}, Lcom/miui/gallery/model/CloudItem;->wrapRemoveFromFavoritesListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    move-result-object v1

    new-array v2, v6, [J

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/miui/gallery/model/CloudItem;->getId()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 88
    invoke-static {p1, v1, v2}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->removeFromFavoritesById(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V

    .line 92
    :cond_0
    return v6
.end method

.method public removeFromSecret(Landroid/app/Activity;ILcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "position"    # I
    .param p3, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    const/4 v3, 0x1

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/miui/gallery/model/BaseCloudDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 67
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    .line 68
    new-array v1, v3, [J

    const/4 v2, 0x0

    check-cast v0, Lcom/miui/gallery/model/CloudItem;

    .end local v0    # "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {v0}, Lcom/miui/gallery/model/CloudItem;->getId()J

    move-result-wide v4

    aput-wide v4, v1, v2

    invoke-static {p1, p3, v1}, Lcom/miui/gallery/util/MediaAndAlbumOperations;->removeFromSecretAlbum(Landroid/app/Activity;Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;[J)V

    .line 70
    :cond_0
    return v3
.end method
