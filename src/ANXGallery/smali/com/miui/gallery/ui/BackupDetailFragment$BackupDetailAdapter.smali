.class Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;
.super Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;
.source "BackupDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BackupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackupDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;
    }
.end annotation


# static fields
.field private static final COLUMN_INDEX_ALBUM_ID:I

.field public static PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    sget-object v0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->COLUMN_INDEX_ALBUM_ID:I

    .line 296
    sget-object v0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->PROJECTION:[Ljava/lang/String;

    .line 297
    sget-object v0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->PROJECTION:[Ljava/lang/String;

    sget-object v2, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    sget-object v0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->PROJECTION_INTERNAL:[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "localGroupId"

    aput-object v2, v0, v1

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;
    .param p3, "syncStateDisplayOptions"    # I

    .prologue
    .line 302
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;-><init>(Landroid/content/Context;Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;I)V

    .line 303
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;Landroid/database/Cursor;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getSyncState(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method private isSecretItem(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 435
    sget v0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->COLUMN_INDEX_ALBUM_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, -0x3e8

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mergeSyncState(II)I
    .locals 1
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v0, 0x2

    .line 439
    packed-switch p2, :pswitch_data_0

    move p2, p1

    .line 450
    .end local p1    # "oldState":I
    .end local p2    # "newState":I
    :cond_0
    :goto_0
    :pswitch_0
    return p2

    .line 444
    .restart local p1    # "oldState":I
    .restart local p2    # "newState":I
    :pswitch_1
    if-lt p1, p2, :cond_1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_2

    :cond_1
    move p1, p2

    .end local p1    # "oldState":I
    :cond_2
    move p2, p1

    goto :goto_0

    .line 446
    .restart local p1    # "oldState":I
    :pswitch_2
    if-ne p1, v0, :cond_0

    move p2, p1

    goto :goto_0

    .line 448
    :pswitch_3
    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    :cond_3
    move p2, p1

    goto :goto_0

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public classifyCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 454
    const/4 v3, 0x0

    .line 455
    .local v3, "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v5, 0x0

    .line 456
    .local v5, "secretCount":I
    const/4 v6, 0x0

    .line 457
    .local v6, "secretSynced":I
    const v8, 0x7fffffff

    .line 458
    .local v8, "syncState":I
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 459
    sget-object v4, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->PROJECTION:[Ljava/lang/String;

    .line 460
    .local v4, "projection":[Ljava/lang/String;
    array-length v1, v4

    .line 461
    .local v1, "columnsLen":I
    new-array v0, v1, [Ljava/lang/Object;

    .line 462
    .local v0, "columns":[Ljava/lang/Object;
    new-instance v3, Landroid/database/MatrixCursor;

    .end local v3    # "matrixCursor":Landroid/database/MatrixCursor;
    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 464
    .restart local v3    # "matrixCursor":Landroid/database/MatrixCursor;
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->isSecretItem(Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 465
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getSyncState(Landroid/database/Cursor;)I

    move-result v7

    .line 466
    .local v7, "state":I
    invoke-direct {p0, v8, v7}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->mergeSyncState(II)I

    move-result v8

    .line 467
    if-nez v7, :cond_1

    .line 468
    add-int/lit8 v6, v6, 0x1

    .line 470
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 490
    .end local v7    # "state":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 491
    if-lez v5, :cond_2

    .line 492
    const/4 v9, 0x0

    const-wide/16 v10, -0x3e8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v0, v9

    .line 493
    const/16 v9, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v9

    .line 494
    const/16 v9, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v9

    .line 495
    const/16 v9, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v9

    .line 496
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 499
    .end local v0    # "columns":[Ljava/lang/Object;
    .end local v1    # "columnsLen":I
    .end local v4    # "projection":[Ljava/lang/String;
    :cond_2
    return-object v3

    .line 472
    .restart local v0    # "columns":[Ljava/lang/Object;
    .restart local v1    # "columnsLen":I
    .restart local v4    # "projection":[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 473
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 472
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 475
    :pswitch_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v0, v2

    goto :goto_2

    .line 478
    :pswitch_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v2

    goto :goto_2

    .line 481
    :pswitch_2
    const/4 v9, 0x0

    aput-object v9, v0, v2

    goto :goto_2

    .line 484
    :pswitch_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v0, v2

    goto :goto_2

    .line 488
    :cond_4
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public doBindData(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 344
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getItemId(I)J

    move-result-wide v2

    const-wide/16 v4, -0x3e8

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;

    .line 346
    .local v0, "item":Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;
    invoke-virtual {v0, p2, p3}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;->bindView(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 350
    .end local v0    # "item":Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->doBindData(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 322
    const-wide/16 v0, -0x3e8

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecretCount()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 308
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, -0x3e8

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    sget v1, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->COLUMN_INDEX_ALBUM_ID:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 312
    :cond_0
    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x2

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 333
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 334
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/adapter/AlbumDetailSimpleAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 336
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040033

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;

    invoke-direct {v1, p0, v0}, Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter$SecretItem;-><init>(Lcom/miui/gallery/ui/BackupDetailFragment$BackupDetailAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
