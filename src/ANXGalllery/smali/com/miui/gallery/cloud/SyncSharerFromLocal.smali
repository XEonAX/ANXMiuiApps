.class public Lcom/miui/gallery/cloud/SyncSharerFromLocal;
.super Lcom/miui/gallery/cloud/SyncFromLocalBase;
.source "SyncSharerFromLocal.java"


# instance fields
.field private mCopyImageToSharerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteShareImageItems:Ljava/util/ArrayList;
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

.field private mManualCreateSharerImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mManualCreateSharerVideoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveImageToSharerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotosToBeSynced:I

.field private mVideosToBeSynced:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "extendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncFromLocalBase;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    new-instance v0, Lcom/miui/gallery/data/DBShareImage;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBShareImage;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected bridge synthetic generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBItem;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBImage;

    move-result-object v0

    return-object v0
.end method

.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getSelectionClause()Ljava/lang/String;
    .locals 8

    .prologue
    .line 82
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "((serverType = 1 AND size < %s) OR (serverType = 2 AND size < %s))"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 84
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getMaxImageSizeLimit()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getMaxVideoSizeLimit()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 82
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "validSizeSelection":Ljava/lang/String;
    invoke-super {p0}, Lcom/miui/gallery/cloud/SyncFromLocalBase;->getSelectionClause()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected handleRequestCloudItemList()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 160
    const/4 v3, 0x0

    .line 162
    .local v3, "result":I
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mManualCreateSharerVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 163
    const-string v4, "SyncSharerFromLocal"

    const-string/jumbo v5, "start upload manual create videos"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mManualCreateSharerVideoItems:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;)I

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mManualCreateSharerImageItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 169
    const-string v4, "SyncSharerFromLocal"

    const-string/jumbo v5, "start upload manual create images"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mManualCreateSharerImageItems:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;)I

    .line 173
    if-ne v3, v8, :cond_2

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mCopyImageToSharerItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 179
    const-string v4, "SyncSharerFromLocal"

    const-string/jumbo v5, "start copy image items"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/miui/gallery/cloud/CopyImageToSharerAlbum;

    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/miui/gallery/cloud/CopyImageToSharerAlbum;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, "copy":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v6, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mCopyImageToSharerItems:Ljava/util/ArrayList;

    invoke-static {v4, v5, v6, v7, v0}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v3

    .line 184
    if-eq v3, v8, :cond_1

    .line 189
    .end local v0    # "copy":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mMoveImageToSharerItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 190
    const-string v4, "SyncSharerFromLocal"

    const-string/jumbo v5, "start move image items"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v2, Lcom/miui/gallery/cloud/MoveItemToSharerAlbum;

    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/miui/gallery/cloud/MoveItemToSharerAlbum;-><init>(Landroid/content/Context;)V

    .line 192
    .local v2, "move":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v6, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mMoveImageToSharerItems:Ljava/util/ArrayList;

    .line 193
    invoke-static {v4, v5, v6, v7, v2}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v3

    .line 196
    if-eq v3, v8, :cond_1

    .line 201
    .end local v2    # "move":Lcom/miui/gallery/cloud/RequestOperationBase;
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mDeleteShareImageItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 202
    const-string v4, "SyncSharerFromLocal"

    const-string/jumbo v5, "start delete image items"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v1, Lcom/miui/gallery/cloud/DeleteCloudItem;

    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/miui/gallery/cloud/DeleteCloudItem;-><init>(Landroid/content/Context;)V

    .line 204
    .local v1, "delete":Lcom/miui/gallery/cloud/RequestOperationBase;
    iget-object v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mAccount:Landroid/accounts/Account;

    iget-object v6, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    iget-object v7, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mDeleteShareImageItems:Ljava/util/ArrayList;

    invoke-static {v4, v5, v6, v7, v1}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v3

    .line 207
    if-ne v3, v8, :cond_1

    goto :goto_0
.end method

.method protected initRequestCloudItemList()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mManualCreateSharerImageItems:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mCopyImageToSharerItems:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mDeleteShareImageItems:Ljava/util/ArrayList;

    .line 96
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mManualCreateSharerVideoItems:Ljava/util/ArrayList;

    .line 97
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mMoveImageToSharerItems:Ljava/util/ArrayList;

    .line 98
    return-void
.end method

.method protected putToRequestCloudItemList(Lcom/miui/gallery/data/DBItem;)V
    .locals 8
    .param p1, "item"    # Lcom/miui/gallery/data/DBItem;

    .prologue
    const/4 v3, 0x0

    .line 102
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/data/DBImage;

    .line 103
    .local v0, "dbCloud":Lcom/miui/gallery/data/DBImage;
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 152
    :pswitch_0
    const-string v2, "SyncSharerFromLocal"

    const-string/jumbo v3, "unsupport local flag %d"

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getLocalFlag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getServerType()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 107
    :pswitch_2
    new-instance v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;)V

    .line 108
    .local v1, "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mManualCreateSharerImageItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mPhotosToBeSynced:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mPhotosToBeSynced:I

    .line 110
    iget-wide v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mLargestElapsedTime:J

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 110
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mLargestElapsedTime:J

    goto :goto_0

    .line 115
    .end local v1    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_3
    new-instance v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;)V

    .line 116
    .restart local v1    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mManualCreateSharerVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mVideosToBeSynced:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mVideosToBeSynced:I

    .line 118
    iget-wide v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mLargestElapsedTime:J

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->getDateModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 118
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mLargestElapsedTime:J

    goto :goto_0

    .line 128
    .end local v1    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_4
    new-instance v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-direct {v1, v3, v0}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;)V

    .line 129
    .restart local v1    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mDeleteShareImageItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    .end local v1    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_5
    new-instance v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-direct {v1, v3, v0}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;)V

    .line 137
    .restart local v1    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mCopyImageToSharerItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    .end local v1    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    :pswitch_6
    const-string v2, "SyncSharerFromLocal"

    const-string v3, "don\'t handle move from flag."

    invoke-static {v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :pswitch_7
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBImage;->isItemType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    new-instance v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    invoke-direct {v1, v3, v0}, Lcom/miui/gallery/cloud/RequestCloudItem;-><init>(ILcom/miui/gallery/data/DBImage;)V

    .line 147
    .restart local v1    # "requestItem":Lcom/miui/gallery/cloud/RequestCloudItem;
    iget-object v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mMoveImageToSharerItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 105
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
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

    .line 43
    iput v0, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mPhotosToBeSynced:I

    .line 44
    iput v0, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mVideosToBeSynced:I

    .line 47
    :try_start_0
    invoke-super {p0}, Lcom/miui/gallery/cloud/SyncFromLocalBase;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget v0, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mPhotosToBeSynced:I

    if-lez v0, :cond_0

    .line 50
    const-string v0, "items_to_be_synced"

    const-string/jumbo v1, "sharer_photos_to_be_synced"

    iget v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mPhotosToBeSynced:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 55
    :cond_0
    iget v0, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mVideosToBeSynced:I

    if-lez v0, :cond_1

    .line 56
    const-string v0, "items_to_be_synced"

    const-string/jumbo v1, "sharer_videos_to_be_synced"

    iget v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mVideosToBeSynced:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 61
    :cond_1
    iget-wide v0, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mLargestElapsedTime:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    .line 62
    const-string v0, "items_to_be_synced"

    const-string/jumbo v1, "sharer_largest_elapsed_time"

    iget-wide v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mLargestElapsedTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 68
    :cond_2
    return-void

    .line 49
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mPhotosToBeSynced:I

    if-lez v1, :cond_3

    .line 50
    const-string v1, "items_to_be_synced"

    const-string/jumbo v2, "sharer_photos_to_be_synced"

    iget v3, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mPhotosToBeSynced:I

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 55
    :cond_3
    iget v1, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mVideosToBeSynced:I

    if-lez v1, :cond_4

    .line 56
    const-string v1, "items_to_be_synced"

    const-string/jumbo v2, "sharer_videos_to_be_synced"

    iget v3, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mVideosToBeSynced:I

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 61
    :cond_4
    iget-wide v2, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mLargestElapsedTime:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_5

    .line 62
    const-string v1, "items_to_be_synced"

    const-string/jumbo v2, "sharer_largest_elapsed_time"

    iget-wide v4, p0, Lcom/miui/gallery/cloud/SyncSharerFromLocal;->mLargestElapsedTime:J

    invoke-static {v1, v2, v4, v5}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_5
    throw v0
.end method
