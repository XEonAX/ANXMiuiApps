.class Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;
.super Lcom/miui/gallery/adapter/BaseAdapter;
.source "AddToAlbumDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AddToAlbumDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumSelectorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;
    }
.end annotation


# instance fields
.field private mSharedAlbums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    .line 319
    invoke-direct {p0, p2}, Lcom/miui/gallery/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 320
    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->sortCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private bindImage(ILandroid/widget/ImageView;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 418
    .line 419
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getLocalPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getDownloadUri(I)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 420
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getDisplayImageOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 421
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v3

    iget-object v5, v3, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object v3, p2

    .line 418
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 423
    return-void
.end method

.method private getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->isCameraAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    const v2, 0x7f0c0032

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "albumName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 447
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->isScreenshotsAlbum(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    const v2, 0x7f0c004b

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0

    .line 450
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "albumName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getShareAlbumInfo(I)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v1

    .line 472
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 473
    .local v0, "albumId":I
    iget-object v2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->mSharedAlbums:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->mSharedAlbums:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isBabyAlbum(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 477
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 456
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "serverId":Ljava/lang/String;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isForceTypeTime(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 488
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/GalleryPreferences$Album;->isForceTopAlbumByTopTime(J)Z

    move-result v0

    return v0
.end method

.method private isOtherShareAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 466
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 467
    .local v0, "albumId":I
    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareAlbumManager;->isOtherShareAlbumId(J)Z

    move-result v1

    return v1
.end method

.method private isOwnerShareAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 481
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 483
    .local v0, "albumId":I
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->isOtherShareAlbum(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->mSharedAlbums:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->mSharedAlbums:Ljava/util/Map;

    .line 484
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isScreenshotsAlbum(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 461
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "serverId":Ljava/lang/String;
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isSystemAlbum(Landroid/database/Cursor;)Z
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 492
    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "serverId":Ljava/lang/String;
    sget-object v4, Lcom/miui/gallery/provider/GalleryContract$Album;->ALL_SYSTEM_ALBUM_SERVER_IDS:[Ljava/lang/Long;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 495
    .local v0, "albumId":Ljava/lang/Long;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 496
    const/4 v2, 0x1

    .line 499
    .end local v0    # "albumId":Ljava/lang/Long;
    :cond_0
    return v2

    .line 494
    .restart local v0    # "albumId":Ljava/lang/Long;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private sortCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v12, 0xb

    .line 503
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 504
    :cond_0
    const/4 v7, 0x0

    .line 555
    :goto_0
    return-object v7

    .line 506
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 507
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v11, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v7, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 508
    .local v7, "result":Landroid/database/MatrixCursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v4, "forceTopAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v9, "systemAlbumAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v0, "babyAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v10, "unclassifiedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v8, "sortedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v11, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->PROJECTION:[Ljava/lang/String;

    array-length v3, v11

    .line 514
    .local v3, "columnsLen":I
    new-array v2, v3, [Ljava/lang/Object;

    .line 515
    .local v2, "columns":[Ljava/lang/Object;
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 517
    .local v5, "lastClassification":I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_6

    .line 518
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 519
    .local v1, "classification":I
    if-eq v1, v5, :cond_2

    .line 520
    invoke-interface {v8, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 521
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 522
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 523
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 524
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 525
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 526
    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 527
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 528
    move v5, v1

    .line 531
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->isForceTypeTime(Landroid/database/Cursor;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 532
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 533
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->isSystemAlbum(Landroid/database/Cursor;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 534
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 535
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->isBabyAlbum(Landroid/database/Cursor;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 536
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 538
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 542
    .end local v1    # "classification":I
    :cond_6
    invoke-interface {v8, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 544
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 545
    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 547
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 548
    .local v6, "position":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 549
    invoke-static {p1, v7, v2}, Lcom/miui/gallery/util/CursorUtils;->addRowToMatrixCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;[Ljava/lang/Object;)V

    goto :goto_3

    .line 552
    .end local v6    # "position":Ljava/lang/Integer;
    :cond_7
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v0    # "babyAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "columns":[Ljava/lang/Object;
    .end local v3    # "columnsLen":I
    .end local v4    # "forceTopAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "lastClassification":I
    .end local v7    # "result":Landroid/database/MatrixCursor;
    .end local v8    # "sortedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "systemAlbumAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "unclassifiedAlbumPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8
    move-object v7, p1

    .line 555
    goto/16 :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 360
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 362
    .local v7, "position":I
    const v12, 0x7f1200bb

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 363
    .local v5, "coverView":Landroid/widget/ImageView;
    const v12, 0x7f12002d

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 364
    .local v9, "titleView":Landroid/widget/TextView;
    const v12, 0x7f1200bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 365
    .local v4, "countView":Landroid/widget/TextView;
    const v12, 0x7f1200bd

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 367
    .local v11, "typeView":Landroid/widget/TextView;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 368
    const/4 v12, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-nez v12, :cond_1

    .line 369
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0200c7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    const/4 v10, 0x0

    .line 387
    .local v10, "typeString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->isOtherShareAlbum(Landroid/database/Cursor;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 389
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getShareAlbumInfo(I)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;

    move-result-object v2

    .line 390
    .local v2, "album":Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->getOwnerName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->isBabyAlbum(Landroid/database/Cursor;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 392
    const v12, 0x7f0c0042

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->getOwnerName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 409
    .end local v2    # "album":Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;
    :cond_0
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 410
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    :goto_2
    return-void

    .line 372
    .end local v10    # "typeString":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 373
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020261

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 377
    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    const/4 v12, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 380
    .local v3, "count":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0008

    invoke-virtual {v12, v13, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, "format":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 382
    .local v8, "sizeText":Ljava/lang/String;
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->bindImage(ILandroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 394
    .end local v3    # "count":I
    .end local v6    # "format":Ljava/lang/String;
    .end local v8    # "sizeText":Ljava/lang/String;
    .restart local v2    # "album":Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;
    .restart local v10    # "typeString":Ljava/lang/String;
    :cond_3
    const v12, 0x7f0c0043

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->getOwnerName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 400
    .end local v2    # "album":Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->isBabyAlbum(Landroid/database/Cursor;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 401
    const v12, 0x7f0c0059

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 402
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->isOwnerShareAlbum(Landroid/database/Cursor;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 403
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getShareAlbumInfo(I)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;

    move-result-object v2

    .line 404
    .restart local v2    # "album":Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;
    if-eqz v2, :cond_0

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0007

    iget v14, v2, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->mUserCount:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget v0, v2, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->mUserCount:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 412
    .end local v2    # "album":Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public getDownloadUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 434
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getDownloadUri(Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getFileLength(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 440
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getLocalPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    .line 428
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getMicroPath(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 324
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040021

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 325
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x7

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 287
    .local v2, "which":I
    iget-object v3, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$500(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 288
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 289
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 290
    new-instance v0, Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;-><init>()V

    .line 291
    .local v0, "creator":Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;
    iget-object v3, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$900(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;->setOnAlbumOperationDoneListener(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;)V

    .line 292
    iget-object v3, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "AlbumCreatorDialogFragment"

    invoke-virtual {v0, v3, v4}, Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 300
    .end local v0    # "creator":Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 294
    iget-object v3, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    iget-object v4, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$500(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getItemId(I)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$1000(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;JZ)V

    .line 295
    const-string v3, "add_to_dialog"

    const-string v4, "add_to_secret"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    iget-object v4, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$500(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getItemId(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->this$0:Lcom/miui/gallery/ui/AddToAlbumDialogFragment;

    invoke-static {v6}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$1100(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;)Z

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment;->access$1000(Lcom/miui/gallery/ui/AddToAlbumDialogFragment;JZ)V

    goto :goto_0
.end method

.method public setSharedAlbums(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 336
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    new-instance v0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;-><init>(Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;)V

    .line 338
    .local v0, "shareAlbum":Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->mAlbumId:Ljava/lang/String;

    .line 339
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->mCreatorId:Ljava/lang/String;

    .line 340
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->mUserCount:I

    .line 341
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->mOwnerNickName:Ljava/lang/String;

    .line 343
    iget-object v1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->mSharedAlbums:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 344
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->mSharedAlbums:Ljava/util/Map;

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->mSharedAlbums:Ljava/util/Map;

    iget-object v2, v0, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;->mAlbumId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 354
    .end local v0    # "shareAlbum":Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter$ShareAlbum;
    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v1

    .line 350
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 351
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddToAlbumDialogFragment$AlbumSelectorAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
