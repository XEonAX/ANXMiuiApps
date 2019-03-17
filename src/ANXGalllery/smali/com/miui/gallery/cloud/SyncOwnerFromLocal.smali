.class public Lcom/miui/gallery/cloud/SyncOwnerFromLocal;
.super Lcom/miui/gallery/cloud/SyncFromLocalBase;
.source "SyncOwnerFromLocal.java"


# instance fields
.field private mAutoCreateImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoCreateVideoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCopyImageToOwnerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEditCloudThumbnailInfoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEditFavoriteInfoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEditGeoInfoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEditGroupDescriptionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEditedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargestElapsedTime:J

.field private mManualCreateOwnerImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mManualCreateOwnerVideoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveImageToOwnerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNoDelay:Z

.field private mPhotosToBeSynced:I

.field private mRenameGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVideosToBeSynced:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "extendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p4, "noDelay"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncFromLocalBase;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 58
    iput-boolean p4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    .line 59
    return-void
.end method

.method private shouldSyncEditedDescription(Lcom/miui/gallery/data/DBImage;)Z
    .locals 3
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v1

    .line 201
    .local v1, "localFlag":I
    if-eqz v1, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "editedColumns":Ljava/lang/String;
    const/4 v2, 0x6

    .line 205
    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 207
    .end local v0    # "editedColumns":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private shouldSyncEditedGeoInfo(Lcom/miui/gallery/data/DBImage;)Z
    .locals 3
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v1

    .line 212
    .local v1, "localFlag":I
    if-eqz v1, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "editedColumns":Ljava/lang/String;
    const/16 v2, 0x46

    .line 218
    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 220
    .end local v0    # "editedColumns":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private shouldSyncEditedItem(Lcom/miui/gallery/data/DBImage;)Z
    .locals 4
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v1

    .line 152
    .local v1, "localFlag":I
    if-eqz v1, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "editedColumns":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->isUbiFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->isShareItem()Z

    move-result v3

    invoke-static {v3}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getFocusIndexColumnElement(Z)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 161
    .end local v0    # "editedColumns":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private shouldSyncEditedThumbnailInfo(Lcom/miui/gallery/data/DBImage;)Z
    .locals 14
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    const/16 v13, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v4

    .line 166
    .local v4, "localFlag":I
    instance-of v9, p1, Lcom/miui/gallery/data/DBCloud;

    if-eqz v9, :cond_3

    .line 169
    if-eqz v4, :cond_0

    const/16 v9, 0xa

    if-eq v4, v9, :cond_0

    if-ne v4, v13, :cond_3

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "editedColumns":Ljava/lang/String;
    const/16 v9, 0x42

    .line 174
    invoke-static {v9}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v9

    .line 173
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 176
    .local v6, "thumbnailInfoEdited":Z
    if-eqz v6, :cond_3

    .line 177
    check-cast p1, Lcom/miui/gallery/data/DBCloud;

    .end local p1    # "dbImage":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBCloud;->getThumbnailInfo()Lcom/miui/gallery/cloud/ThumbnailInfo;

    move-result-object v5

    .line 178
    .local v5, "thumbnailInfo":Lcom/miui/gallery/cloud/ThumbnailInfo;
    if-eqz v5, :cond_3

    .line 179
    invoke-virtual {v5}, Lcom/miui/gallery/cloud/ThumbnailInfo;->getBgImageLocalId()J

    move-result-wide v0

    .line 180
    .local v0, "bgImageLocalId":J
    const-wide/16 v10, -0x1

    cmp-long v9, v0, v10

    if-nez v9, :cond_2

    .line 196
    .end local v0    # "bgImageLocalId":J
    .end local v3    # "editedColumns":Ljava/lang/String;
    .end local v5    # "thumbnailInfo":Lcom/miui/gallery/cloud/ThumbnailInfo;
    .end local v6    # "thumbnailInfoEdited":Z
    :cond_1
    :goto_0
    return v7

    .line 184
    .restart local v0    # "bgImageLocalId":J
    .restart local v3    # "editedColumns":Ljava/lang/String;
    .restart local v5    # "thumbnailInfo":Lcom/miui/gallery/cloud/ThumbnailInfo;
    .restart local v6    # "thumbnailInfoEdited":Z
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->getBaseUri()Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    const-string v11, "_id"

    .line 186
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 184
    invoke-static {v9, v10, v11, v12}, Lcom/miui/gallery/cloud/CloudUtils;->getItem(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBImage;

    move-result-object v2

    .line 187
    .local v2, "bgItem":Lcom/miui/gallery/data/DBImage;
    if-eqz v2, :cond_3

    .line 189
    invoke-virtual {v2}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v9

    if-ne v13, v9, :cond_1

    move v7, v8

    goto :goto_0

    .end local v0    # "bgImageLocalId":J
    .end local v2    # "bgItem":Lcom/miui/gallery/data/DBImage;
    .end local v3    # "editedColumns":Ljava/lang/String;
    .end local v5    # "thumbnailInfo":Lcom/miui/gallery/cloud/ThumbnailInfo;
    .end local v6    # "thumbnailInfoEdited":Z
    :cond_3
    move v7, v8

    .line 196
    goto :goto_0
.end method

.method private shouldSyncFavoriteInfo(Lcom/miui/gallery/data/DBImage;)Z
    .locals 3
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v1

    .line 225
    .local v1, "localFlag":I
    if-eqz v1, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 229
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "editedColumns":Ljava/lang/String;
    const/4 v2, -0x1

    .line 231
    invoke-static {v2}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 233
    .end local v0    # "editedColumns":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 97
    new-instance v0, Lcom/miui/gallery/data/DBCloud;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBCloud;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected bridge synthetic generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBItem;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    return-object v0
.end method

.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getSelectionClause()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 102
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "((serverType = 1 AND size < %s) OR (serverType = 2 AND size < %s))"

    new-array v8, v14, [Ljava/lang/Object;

    .line 104
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getMaxImageSizeLimit()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getMaxVideoSizeLimit()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v13

    .line 102
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "validSizeSelection":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "(%s OR %s)"

    new-array v8, v14, [Ljava/lang/Object;

    const-string v9, "(serverType=0)"

    aput-object v9, v8, v12

    aput-object v5, v8, v13

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "syncableItems":Ljava/lang/String;
    sget-object v6, Lcom/miui/gallery/cloud/CloudUtils;->SELECTION_OWNER_NEED_SYNC:Ljava/lang/String;

    invoke-static {v6, v4}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "baseSelection":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/provider/ProcessingMediaManager;->queryProcessingMediaPaths()Ljava/util/List;

    move-result-object v2

    .line 112
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "localFile NOT IN ("

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 115
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 116
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 117
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_0

    .line 118
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .end local v1    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v6

    :cond_2
    const-string v6, " (%s) "

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v0, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method protected handleRequestCloudItemList()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    .line 429
    const/4 v6, 0x0

    .line 431
    .local v6, "result":I
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCreateGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 432
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start create group items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v1, Lcom/miui/gallery/cloud/CreateGroupItem;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/miui/gallery/cloud/CreateGroupItem;-><init>(Landroid/content/Context;)V

    .line 435
    .local v1, "createGroup":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCreateGroupItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v1}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 439
    if-ne v6, v11, :cond_1

    .line 585
    .end local v1    # "createGroup":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 446
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start upload manual create videos"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerVideoItems:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;)I

    .line 451
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 452
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start upload auto create videos"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateVideoItems:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;)I

    .line 457
    :cond_3
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerImageItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 458
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start upload manual create images"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerImageItems:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;)I

    .line 464
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateImageItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 465
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start upload auto create images"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateImageItems:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;)I

    .line 470
    :cond_5
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCopyImageToOwnerItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 471
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start copy image items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v0, Lcom/miui/gallery/cloud/CopyImageToOwnerAlbum;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/miui/gallery/cloud/CopyImageToOwnerAlbum;-><init>(Landroid/content/Context;)V

    .line 473
    .local v0, "copy":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCopyImageToOwnerItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v0}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 476
    if-eq v6, v11, :cond_0

    .line 482
    .end local v0    # "copy":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_6
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mMoveImageToOwnerItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 483
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start move image items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v4, Lcom/miui/gallery/cloud/MoveItemToOwnerAlbum;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/miui/gallery/cloud/MoveItemToOwnerAlbum;-><init>(Landroid/content/Context;)V

    .line 485
    .local v4, "move":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mMoveImageToOwnerItems:Ljava/util/ArrayList;

    .line 486
    invoke-static {v7, v8, v9, v10, v4}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 489
    if-eq v6, v11, :cond_0

    .line 494
    .end local v4    # "move":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_7
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteImageItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 495
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start delete image items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v2, Lcom/miui/gallery/cloud/DeleteCloudItem;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/miui/gallery/cloud/DeleteCloudItem;-><init>(Landroid/content/Context;)V

    .line 497
    .local v2, "delete":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteImageItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v2}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 500
    if-eq v6, v11, :cond_0

    .line 505
    .end local v2    # "delete":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_8
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 506
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start delete group items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    new-instance v2, Lcom/miui/gallery/cloud/DeleteCloudItem;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/miui/gallery/cloud/DeleteCloudItem;-><init>(Landroid/content/Context;)V

    .line 508
    .restart local v2    # "delete":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteGroupItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v2}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 511
    if-eq v6, v11, :cond_0

    .line 516
    .end local v2    # "delete":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_9
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mRenameGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 517
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start rename group items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v5, Lcom/miui/gallery/cloud/RenameCloudItem;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/miui/gallery/cloud/RenameCloudItem;-><init>(Landroid/content/Context;)V

    .line 519
    .local v5, "rename":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mRenameGroupItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v5}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 522
    if-eq v6, v11, :cond_0

    .line 527
    .end local v5    # "rename":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_a
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditedItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 528
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start edit items"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v3, Lcom/miui/gallery/cloud/EditCloudItem;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/miui/gallery/cloud/EditCloudItem;-><init>(Landroid/content/Context;)V

    .line 530
    .local v3, "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditedItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v3}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 533
    if-eq v6, v11, :cond_0

    .line 539
    .end local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_b
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditCloudThumbnailInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 540
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start album thumbnail info"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    new-instance v3, Lcom/miui/gallery/cloud/EditCloudThumbnailInfo;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/miui/gallery/cloud/EditCloudThumbnailInfo;-><init>(Landroid/content/Context;)V

    .line 542
    .restart local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditCloudThumbnailInfoItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v3}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 545
    if-eq v6, v11, :cond_0

    .line 551
    .end local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_c
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGroupDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 552
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start edit album description"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v3, Lcom/miui/gallery/cloud/EditGroupDescription;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/miui/gallery/cloud/EditGroupDescription;-><init>(Landroid/content/Context;)V

    .line 554
    .restart local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGroupDescriptionItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v3}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 557
    if-eq v6, v11, :cond_0

    .line 563
    .end local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_d
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGeoInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e

    .line 564
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start edit geo info"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v3, Lcom/miui/gallery/cloud/EditCloudGeoInfo;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/miui/gallery/cloud/EditCloudGeoInfo;-><init>(Landroid/content/Context;)V

    .line 566
    .restart local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGeoInfoItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v3}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 569
    if-eq v6, v11, :cond_0

    .line 575
    .end local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_e
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditFavoriteInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 576
    const-string v7, "SyncOwnerFromLocal"

    const-string/jumbo v8, "start edit favorite info"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v3, Lcom/miui/gallery/cloud/EditCloudFavoriteInfo;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/miui/gallery/cloud/EditCloudFavoriteInfo;-><init>(Landroid/content/Context;)V

    .line 578
    .restart local v3    # "edit":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v10, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditFavoriteInfoItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v3}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 581
    if-ne v6, v11, :cond_0

    goto/16 :goto_0
.end method

.method protected initRequestCloudItemList()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCreateGroupItems:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerImageItems:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateImageItems:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCopyImageToOwnerItems:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mMoveImageToOwnerItems:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteImageItems:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteGroupItems:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mRenameGroupItems:Ljava/util/ArrayList;

    .line 140
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateVideoItems:Ljava/util/ArrayList;

    .line 141
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerVideoItems:Ljava/util/ArrayList;

    .line 143
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditedItems:Ljava/util/ArrayList;

    .line 144
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditCloudThumbnailInfoItems:Ljava/util/ArrayList;

    .line 145
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGroupDescriptionItems:Ljava/util/ArrayList;

    .line 146
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGeoInfoItems:Ljava/util/ArrayList;

    .line 147
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditFavoriteInfoItems:Ljava/util/ArrayList;

    .line 148
    return-void
.end method

.method protected putToRequestCloudItemList(Lcom/miui/gallery/data/DBItem;)V
    .locals 10
    .param p1, "item"    # Lcom/miui/gallery/data/DBItem;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 238
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/data/DBImage;

    .line 239
    .local v0, "dbCloud":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "editedColumns":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 241
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 242
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->shouldSyncEditedItem(Lcom/miui/gallery/data/DBImage;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 245
    .local v2, "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditedItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->shouldSyncEditedGeoInfo(Lcom/miui/gallery/data/DBImage;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 251
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGeoInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->shouldSyncFavoriteInfo(Lcom/miui/gallery/data/DBImage;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 258
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditFavoriteInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 415
    :pswitch_0
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getEditedColumns()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 416
    const-string v3, "SyncOwnerFromLocal"

    const-string/jumbo v4, "unsupport local flag: %d"

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    :cond_3
    :goto_1
    return-void

    .line 262
    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->shouldSyncEditedThumbnailInfo(Lcom/miui/gallery/data/DBImage;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 263
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 265
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditCloudThumbnailInfoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :cond_5
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->shouldSyncEditedDescription(Lcom/miui/gallery/data/DBImage;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 271
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mEditGroupDescriptionItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 304
    const-string v3, "SyncOwnerFromLocal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupport local flag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", serverType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 280
    :pswitch_2
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v3, v0, v4}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 282
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerImageItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    .line 284
    iget-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 284
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    goto :goto_1

    .line 289
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_3
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v3, v0, v4}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 291
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mManualCreateOwnerVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    .line 293
    iget-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 293
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    goto/16 :goto_1

    .line 298
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_4
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 300
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCreateGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 310
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_5
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 336
    const-string v3, "SyncOwnerFromLocal"

    const-string/jumbo v4, "unsupport local flag= %d serverType= %d"

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 312
    :pswitch_6
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v6, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 314
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateImageItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    .line 316
    iget-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 316
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    goto/16 :goto_1

    .line 321
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_7
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v5, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 323
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    .line 325
    iget-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 325
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    goto/16 :goto_1

    .line 330
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_8
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 332
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCreateGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 343
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_9
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v3

    packed-switch v3, :pswitch_data_3

    .line 357
    const-string v3, "SyncOwnerFromLocal"

    const-string/jumbo v4, "unsupport local flag= %d serverType= %d"

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 345
    :pswitch_a
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v6, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 347
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateImageItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 351
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_b
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v5, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 353
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mAutoCreateVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 363
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_c
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 365
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, v2, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 366
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteImageItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 368
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mDeleteGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 376
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_d
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 377
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 379
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCopyImageToOwnerItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 384
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_e
    const-string v3, "SyncOwnerFromLocal"

    const-string v4, "don\'t handle move from flag."

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 388
    :pswitch_f
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 391
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mMoveImageToOwnerItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 396
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_10
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v3

    if-nez v3, :cond_3

    .line 397
    new-instance v2, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget-boolean v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mNoDelay:Z

    invoke-direct {v2, v4, v0, v3}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;Z)V

    .line 401
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 402
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mCreateGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    const-string v3, "Sync"

    const-string/jumbo v4, "sync_album_renamed_before_sync"

    .line 406
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v5

    .line 403
    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 409
    :cond_7
    iget-object v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mRenameGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 276
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_0
        :pswitch_9
        :pswitch_f
        :pswitch_d
        :pswitch_5
        :pswitch_1
        :pswitch_d
        :pswitch_10
        :pswitch_e
    .end packed-switch

    .line 278
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 310
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 343
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public sync()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    .line 64
    iput v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    .line 67
    :try_start_0
    invoke-super {p0}, Lcom/miui/gallery/cloud/SyncFromLocalBase;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    if-lez v0, :cond_0

    .line 70
    const-string v0, "items_to_be_synced"

    const-string v1, "owner_photos_to_be_synced"

    iget v2, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 75
    :cond_0
    iget v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    if-lez v0, :cond_1

    .line 76
    const-string v0, "items_to_be_synced"

    const-string v1, "owner_videos_to_be_synced"

    iget v2, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 81
    :cond_1
    iget-wide v0, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    .line 82
    const-string v0, "items_to_be_synced"

    const-string v1, "owner_largest_elapsed_time"

    iget-wide v2, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 88
    :cond_2
    return-void

    .line 69
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    if-lez v1, :cond_3

    .line 70
    const-string v1, "items_to_be_synced"

    const-string v2, "owner_photos_to_be_synced"

    iget v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mPhotosToBeSynced:I

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 75
    :cond_3
    iget v1, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    if-lez v1, :cond_4

    .line 76
    const-string v1, "items_to_be_synced"

    const-string v2, "owner_videos_to_be_synced"

    iget v3, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mVideosToBeSynced:I

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 81
    :cond_4
    iget-wide v2, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_5

    .line 82
    const-string v1, "items_to_be_synced"

    const-string v2, "owner_largest_elapsed_time"

    iget-wide v4, p0, Lcom/miui/gallery/cloud/SyncOwnerFromLocal;->mLargestElapsedTime:J

    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_5
    throw v0
.end method
