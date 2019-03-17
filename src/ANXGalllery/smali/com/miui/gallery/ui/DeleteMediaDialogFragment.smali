.class public Lcom/miui/gallery/ui/DeleteMediaDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "DeleteMediaDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;,
        Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;,
        Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;
    }
.end annotation


# static fields
.field private static final TYPE_RESOURCE_MATRIX:[[I


# instance fields
.field private mDeletionFinishListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

.field private mExistXiaomiAccount:Z

.field private mIsFirstDelete:Z

.field private mParam:Lcom/miui/gallery/ui/DeletionTask$Param;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 48
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->TYPE_RESOURCE_MATRIX:[[I

    return-void

    :array_0
    .array-data 4
        0x7f0e001a
        0x7f0e001d
        0x7f0e0017
    .end array-data

    :array_1
    .array-data 4
        0x7f0e001b
        0x7f0e001e
        0x7f0e0018
    .end array-data

    :array_2
    .array-data 4
        0x7f0e0019
        0x7f0e001c
        0x7f0e0016
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->doDelete()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;)Lcom/miui/gallery/ui/DeletionTask$Param;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    return-object v0
.end method

.method private doDelete()V
    .locals 5

    .prologue
    .line 158
    new-instance v0, Lcom/miui/gallery/ui/DeletionTask;

    invoke-direct {v0}, Lcom/miui/gallery/ui/DeletionTask;-><init>()V

    .line 159
    .local v0, "task":Lcom/miui/gallery/ui/DeletionTask;
    iget-object v1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mDeletionFinishListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DeletionTask;->setOnDeletionCompleteListener(Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DeletionTask;->showProgress(Landroid/app/Activity;)V

    .line 161
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/gallery/ui/DeletionTask$Param;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/DeletionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    return-void
.end method

.method private genDialogInfo()Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 207
    new-instance v0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;-><init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;Lcom/miui/gallery/ui/DeleteMediaDialogFragment$1;)V

    .line 209
    .local v0, "info":Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;
    const/4 v2, 0x0

    .line 210
    .local v2, "sourceType":I
    iget-boolean v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mExistXiaomiAccount:Z

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->isOperateHomePage(Lcom/miui/gallery/ui/DeletionTask$Param;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    const/4 v2, 0x2

    .line 232
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->queryType(Lcom/miui/gallery/ui/DeletionTask$Param;)I

    move-result v1

    .line 233
    .local v1, "mediaType":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v2, v1}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getMessageRes(II)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/DeletionTask$Param;->getItemsCount()I

    move-result v5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/DeletionTask$Param;->getItemsCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;->message:Ljava/lang/String;

    .line 234
    return-object v0

    .line 214
    .end local v1    # "mediaType":I
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->isOperateAlbum(Lcom/miui/gallery/ui/DeletionTask$Param;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 216
    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    iget-wide v4, v3, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumId:J

    invoke-static {v4, v5}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->isLocalMode(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    new-instance v3, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;

    invoke-direct {v3, p0, v6}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;-><init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;I)V

    iput-object v3, v0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;->checkBoxInfo:Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;

    goto :goto_0

    .line 220
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->isAlbumSyncable(Lcom/miui/gallery/ui/DeletionTask$Param;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    iget v3, v3, Lcom/miui/gallery/ui/DeletionTask$Param;->mDupType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 222
    const/4 v2, 0x2

    goto :goto_0

    .line 224
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 229
    :cond_4
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private getCloudVideoCount(Lcom/miui/gallery/ui/DeletionTask$Param;)I
    .locals 17
    .param p1, "param"    # Lcom/miui/gallery/ui/DeletionTask$Param;

    .prologue
    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 291
    .local v12, "pre":J
    const/4 v15, 0x0

    .line 293
    .local v15, "videoCount":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v14, "shareImage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v9, "ownerImage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/gallery/ui/DeletionTask$Param;->mIds:[J

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-wide v10, v3, v2

    .line 296
    .local v10, "id":J
    invoke-static {v10, v11}, Lcom/miui/gallery/provider/ShareMediaManager;->isOtherShareMediaId(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    .end local v10    # "id":J
    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1073741823+_id"

    aput-object v6, v4, v5

    const-string v5, "serverType=? AND 1073741823+_id IN (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v16, ","

    .line 309
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    .line 307
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v16, 0x2

    .line 310
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    .line 305
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 312
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 313
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/2addr v15, v2

    .line 316
    :cond_2
    if-eqz v8, :cond_3

    .line 317
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 322
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "serverType=? AND _id IN (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v16, ","

    .line 327
    move-object/from16 v0, v16

    invoke-static {v0, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    .line 325
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v16, 0x2

    .line 328
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    .line 323
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 330
    .restart local v8    # "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 331
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    add-int/2addr v15, v2

    .line 334
    :cond_4
    if-eqz v8, :cond_5

    .line 335
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 339
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_5
    const-string v2, "DeleteMediaDialogFragment"

    const-string v3, "query video count cost %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    return v15

    .line 316
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_6

    .line 317
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 334
    :catchall_1
    move-exception v2

    if-eqz v8, :cond_7

    .line 335
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method private getMessageRes(II)I
    .locals 1
    .param p1, "sourceType"    # I
    .param p2, "mediaType"    # I

    .prologue
    .line 238
    sget-object v0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->TYPE_RESOURCE_MATRIX:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method private isAlbumSyncable(Lcom/miui/gallery/ui/DeletionTask$Param;)Z
    .locals 14
    .param p1, "param"    # Lcom/miui/gallery/ui/DeletionTask$Param;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 266
    iget-wide v0, p1, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumId:J

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v7

    .line 269
    :cond_1
    iget-wide v0, p1, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumId:J

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/AlbumManager;->isVirtualAlbum(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-wide v0, p1, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumId:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_4

    .line 273
    const/4 v6, 0x0

    .line 275
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "attributes"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v10, p1, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumId:J

    .line 278
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 275
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v0, v0, v12

    if-eqz v0, :cond_2

    move v0, v7

    .line 283
    :goto_1
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move v7, v0

    goto :goto_0

    :cond_2
    move v0, v8

    .line 280
    goto :goto_1

    .line 283
    :cond_3
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    move v7, v8

    .line 286
    goto :goto_0

    .line 283
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static isLocalMode(J)Z
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 145
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;->isOnlyShowLocalPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x3e8

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOperateAlbum(Lcom/miui/gallery/ui/DeletionTask$Param;)Z
    .locals 4
    .param p1, "param"    # Lcom/miui/gallery/ui/DeletionTask$Param;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->isOperateHomePage(Lcom/miui/gallery/ui/DeletionTask$Param;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p1, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumId:J

    const-wide/16 v2, -0x3e8

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOperateHomePage(Lcom/miui/gallery/ui/DeletionTask$Param;)Z
    .locals 2
    .param p1, "param"    # Lcom/miui/gallery/ui/DeletionTask$Param;

    .prologue
    const/4 v0, 0x1

    .line 137
    iget v1, p1, Lcom/miui/gallery/ui/DeletionTask$Param;->mDupType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/miui/gallery/ui/DeletionTask$Param;)Lcom/miui/gallery/ui/DeleteMediaDialogFragment;
    .locals 3
    .param p0, "param"    # Lcom/miui/gallery/ui/DeletionTask$Param;

    .prologue
    .line 59
    new-instance v1, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;-><init>()V

    .line 60
    .local v1, "dialog":Lcom/miui/gallery/ui/DeleteMediaDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "delete_params"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method

.method private queryType(Lcom/miui/gallery/ui/DeletionTask$Param;)I
    .locals 10
    .param p1, "param"    # Lcom/miui/gallery/ui/DeletionTask$Param;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 242
    invoke-virtual {p1}, Lcom/miui/gallery/ui/DeletionTask$Param;->getItemsCount()I

    move-result v0

    .line 243
    .local v0, "count":I
    const/16 v6, 0xc8

    if-le v0, v6, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v3

    .line 246
    :cond_1
    const/4 v2, 0x0

    .line 247
    .local v2, "videoCount":I
    iget v6, p1, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteBy:I

    if-nez v6, :cond_3

    .line 248
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getCloudVideoCount(Lcom/miui/gallery/ui/DeletionTask$Param;)I

    move-result v6

    add-int/2addr v2, v6

    .line 256
    :cond_2
    if-ne v2, v0, :cond_5

    move v3, v4

    .line 257
    goto :goto_0

    .line 249
    :cond_3
    iget v6, p1, Lcom/miui/gallery/ui/DeletionTask$Param;->mDeleteBy:I

    if-ne v6, v4, :cond_2

    .line 250
    iget-object v7, p1, Lcom/miui/gallery/ui/DeletionTask$Param;->mPaths:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v1, v7, v6

    .line 251
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 252
    add-int/lit8 v2, v2, 0x1

    .line 250
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 258
    .end local v1    # "path":Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_0

    move v3, v5

    .line 259
    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 152
    iget-boolean v0, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mIsFirstDelete:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->changeOrientation(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x1040000

    const v6, 0x7f0c0149

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "delete_params"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/ui/DeletionTask$Param;

    iput-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mExistXiaomiAccount:Z

    .line 70
    iget-boolean v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mExistXiaomiAccount:Z

    if-eqz v3, :cond_2

    .line 71
    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->isOperateHomePage(Lcom/miui/gallery/ui/DeletionTask$Param;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Delete;->isFirstDeleteFromHomePage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    iput-boolean v10, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mIsFirstDelete:Z

    .line 76
    new-instance v3, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;-><init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;Landroid/content/Context;)V

    new-instance v4, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$1;-><init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;)V

    .line 77
    invoke-virtual {v3, v6, v4}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;

    move-result-object v3

    .line 83
    invoke-virtual {v3, v7, v8}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;

    move-result-object v3

    const v4, 0x7f0c0156

    .line 84
    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setSubTitle(I)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;

    move-result-object v1

    .line 85
    .local v1, "dialog":Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->changeOrientation(I)V

    .line 133
    .end local v1    # "dialog":Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;
    :goto_0
    return-object v1

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->isOperateAlbum(Lcom/miui/gallery/ui/DeletionTask$Param;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    iget-wide v4, v3, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumId:J

    invoke-static {v4, v5}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->isLocalMode(J)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Delete;->isFirstDeleteFromAlbum()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    iput-boolean v10, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mIsFirstDelete:Z

    .line 93
    new-instance v3, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;-><init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;Landroid/content/Context;)V

    new-instance v4, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$2;-><init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;)V

    .line 94
    invoke-virtual {v3, v6, v4}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;

    move-result-object v3

    .line 100
    invoke-virtual {v3, v7, v8}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;

    move-result-object v3

    const v4, 0x7f0c0155

    .line 101
    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setSubTitle(I)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;

    move-result-object v3

    const/4 v4, 0x2

    .line 102
    invoke-virtual {v3, v4, v9}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setTipVisibility(IZ)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;

    move-result-object v1

    .line 103
    .restart local v1    # "dialog":Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;
    iget-object v3, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mParam:Lcom/miui/gallery/ui/DeletionTask$Param;

    iget-object v3, v3, Lcom/miui/gallery/ui/DeletionTask$Param;->mAlbumName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    const v3, 0x7f0c0151

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->setTipText(ILjava/lang/String;)Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v3}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;->changeOrientation(I)V

    goto :goto_0

    .line 111
    .end local v1    # "dialog":Lcom/miui/gallery/ui/DeleteMediaDialogFragment$FirstDeleteDialog;
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->genDialogInfo()Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;

    move-result-object v2

    .line 112
    .local v2, "info":Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    iget-object v3, v2, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;->checkBoxInfo:Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;

    if-eqz v3, :cond_3

    .line 114
    iget-object v3, v2, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;->checkBoxInfo:Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;

    iget-boolean v3, v3, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;->defaultValue:Z

    iget-object v4, v2, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;->checkBoxInfo:Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;

    iget-object v4, v4, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$CheckBoxInfo;->message:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 116
    :cond_3
    new-instance v3, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$3;

    invoke-direct {v3, p0, v2}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$3;-><init>(Lcom/miui/gallery/ui/DeleteMediaDialogFragment;Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;)V

    invoke-virtual {v0, v6, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    .line 132
    invoke-virtual {v3, v7, v8}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    .line 133
    invoke-virtual {p0, v6}, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/miui/gallery/ui/DeleteMediaDialogFragment$DialogInfo;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public setOnDeletionCompleteListener(Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/miui/gallery/ui/DeleteMediaDialogFragment;->mDeletionFinishListener:Lcom/miui/gallery/ui/DeletionTask$OnDeletionCompleteListener;

    .line 166
    return-void
.end method
