.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;
.super Ljava/lang/Object;
.source "EditableListViewWrapperDeprecated.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;
    }
.end annotation


# instance fields
.field protected mCheckMode:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

.field protected mCheckState:Landroid/util/SparseBooleanArray;

.field protected mIndex:J

.field private mReverseIndex:J

.field protected mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

.field protected mStatus:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

.field protected mUserSelectedIdIndex:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1407
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    .line 1409
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    .line 1410
    sget-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckMode:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    .line 1412
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    .line 1413
    sget-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mStatus:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    .line 1415
    iput-wide v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mIndex:J

    .line 1416
    iput-wide v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseIndex:J

    .line 1643
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;

    .prologue
    .line 1405
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;-><init>()V

    return-void
.end method

.method private getSortedKeysByIndex([J[J)[J
    .locals 2
    .param p1, "selectedKeys"    # [J
    .param p2, "selectedIndexs"    # [J

    .prologue
    .line 1605
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 1609
    :goto_0
    return-object p1

    .line 1608
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, p2, v0, v1}, Lcom/miui/gallery/util/SyncSortUtil;->sort([J[JII)V

    goto :goto_0
.end method

.method private getSortedPositionsByIndex([I[J)[I
    .locals 2
    .param p1, "selectedPositions"    # [I
    .param p2, "selectedIndexs"    # [J

    .prologue
    .line 1620
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 1624
    :goto_0
    return-object p1

    .line 1623
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, p2, v0, v1}, Lcom/miui/gallery/util/SyncSortUtil;->sort([I[JII)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;)V
    .locals 0
    .param p1, "source"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    .prologue
    .line 1419
    if-nez p1, :cond_0

    .line 1423
    :goto_0
    return-void

    .line 1422
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1471
    sget-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckMode:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    .line 1472
    sget-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mStatus:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    .line 1473
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1474
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1475
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1476
    iput-wide v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mIndex:J

    .line 1477
    iput-wide v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseIndex:J

    .line 1478
    return-void
.end method

.method public getCheckState(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mStatus:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    sget-object v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    if-ne v0, v1, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1429
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCheckState(J)Z

    move-result v0

    goto :goto_0
.end method

.method public getCheckState(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1433
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckMode:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    sget-object v3, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;->REVERSE:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCheckedItemIds()[J
    .locals 20

    .prologue
    .line 1503
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCount()I

    move-result v14

    .line 1504
    .local v14, "selectedItemCount":I
    if-nez v14, :cond_1

    .line 1505
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v3, v0, [J

    .line 1545
    :cond_0
    :goto_0
    return-object v3

    .line 1507
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckMode:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v15, v0, [J

    .line 1509
    .local v15, "selectedKeys":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [J

    .line 1510
    .local v13, "selectedIndexs":[J
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_2

    if-ge v7, v14, :cond_2

    .line 1511
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .local v8, "j":I
    move v6, v7

    .line 1512
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v18

    aput-wide v18, v15, v6

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    aput-wide v18, v13, v6

    .line 1510
    add-int/lit8 v2, v2, 0x1

    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_1

    .line 1515
    .end local v6    # "index":I
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getSortedKeysByIndex([J[J)[J

    move-result-object v3

    goto :goto_0

    .line 1524
    .end local v2    # "i":I
    .end local v7    # "j":I
    .end local v13    # "selectedIndexs":[J
    .end local v15    # "selectedKeys":[J
    :cond_3
    new-array v3, v14, [J

    .line 1525
    .local v3, "ids":[J
    const/4 v9, 0x0

    .line 1526
    .local v9, "resultIndex":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_5

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getItemId(I)J

    move-result-wide v4

    .line 1529
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v17

    if-gez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v17

    if-gez v17, :cond_4

    .line 1530
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "resultIndex":I
    .local v10, "resultIndex":I
    aput-wide v4, v3, v9

    move v9, v10

    .line 1526
    .end local v10    # "resultIndex":I
    .restart local v9    # "resultIndex":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1533
    .end local v4    # "id":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v12, v0, [J

    .line 1535
    .local v12, "reverseSelectedKeys":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v11, v0, [J

    .line 1536
    .local v11, "reverseSelectedIndexes":[J
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_6

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v18

    aput-wide v18, v12, v2

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    aput-wide v18, v11, v2

    .line 1536
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1540
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getSortedKeysByIndex([J[J)[J

    move-result-object v16

    .line 1541
    .local v16, "sortedReverseSelectedIds":[J
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v2, v0, :cond_0

    if-ge v9, v14, :cond_0

    .line 1542
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "resultIndex":I
    .restart local v10    # "resultIndex":I
    aget-wide v18, v16, v2

    aput-wide v18, v3, v9

    .line 1541
    add-int/lit8 v2, v2, 0x1

    move v9, v10

    .end local v10    # "resultIndex":I
    .restart local v9    # "resultIndex":I
    goto :goto_4
.end method

.method public getCheckedItemOrderedPositions()[I
    .locals 20

    .prologue
    .line 1555
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCount()I

    move-result v14

    .line 1556
    .local v14, "selectedItemCount":I
    if-nez v14, :cond_1

    .line 1557
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v8, v0, [I

    .line 1594
    :cond_0
    :goto_0
    return-object v8

    .line 1559
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckMode:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v15, v0, [I

    .line 1561
    .local v15, "selectedPositions":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [J

    .line 1562
    .local v13, "selectedIndexs":[J
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_3

    if-ge v6, v14, :cond_3

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getItemId(I)J

    move-result-wide v4

    .line 1564
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v17

    if-ltz v17, :cond_2

    .line 1565
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .local v7, "j":I
    move v3, v6

    .line 1566
    .local v3, "index":I
    aput v2, v15, v3

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    aput-wide v18, v13, v3

    move v6, v7

    .line 1562
    .end local v3    # "index":I
    .end local v7    # "j":I
    .restart local v6    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1570
    .end local v4    # "id":J
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getSortedPositionsByIndex([I[J)[I

    move-result-object v8

    goto :goto_0

    .line 1572
    .end local v2    # "i":I
    .end local v6    # "j":I
    .end local v13    # "selectedIndexs":[J
    .end local v15    # "selectedPositions":[I
    :cond_4
    new-array v8, v14, [I

    .line 1573
    .local v8, "positions":[I
    const/4 v9, 0x0

    .line 1574
    .local v9, "resultIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 1575
    .local v12, "reverseSelectedPositions":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v11, v0, [J

    .line 1576
    .local v11, "reverseSelectedIndexs":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_7

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getItemId(I)J

    move-result-wide v4

    .line 1578
    .restart local v4    # "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v17

    if-gez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v17

    if-gez v17, :cond_5

    .line 1579
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "resultIndex":I
    .local v10, "resultIndex":I
    aput v2, v8, v9

    move v9, v10

    .line 1582
    .end local v10    # "resultIndex":I
    .restart local v9    # "resultIndex":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    if-ltz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v17

    if-ltz v17, :cond_6

    .line 1583
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    move v3, v6

    .line 1584
    .restart local v3    # "index":I
    aput v2, v12, v3

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    aput-wide v18, v11, v3

    move v6, v7

    .line 1576
    .end local v3    # "index":I
    .end local v7    # "j":I
    .restart local v6    # "j":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1588
    .end local v4    # "id":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 1589
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getSortedPositionsByIndex([I[J)[I

    move-result-object v16

    .line 1590
    .local v16, "sortedReverseSelectedPositions":[I
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v2, v0, :cond_0

    if-ge v9, v14, :cond_0

    .line 1591
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "resultIndex":I
    .restart local v10    # "resultIndex":I
    aget v17, v16, v2

    aput v17, v8, v9

    .line 1590
    add-int/lit8 v2, v2, 0x1

    move v9, v10

    .end local v10    # "resultIndex":I
    .restart local v9    # "resultIndex":I
    goto :goto_3
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 6

    .prologue
    .line 1486
    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mStatus:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    sget-object v5, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;->DIRTY:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    if-ne v4, v5, :cond_4

    .line 1487
    new-instance v4, Landroid/util/SparseBooleanArray;

    iget-object v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    invoke-interface {v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    .line 1488
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    invoke-interface {v4}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1489
    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    invoke-interface {v4, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getItemId(I)J

    move-result-wide v2

    .line 1490
    .local v2, "id":J
    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckMode:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    sget-object v5, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-gez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckMode:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    sget-object v5, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;->REVERSE:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    .line 1491
    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-gez v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1492
    .local v0, "checked":Z
    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 1488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1491
    .end local v0    # "checked":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1494
    .end local v2    # "id":J
    :cond_3
    sget-object v4, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    iput-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mStatus:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    .line 1496
    .end local v1    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v4

    return-object v4
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckMode:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    sget-object v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    if-ne v0, v1, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1631
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    invoke-interface {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public handleDataChanged()V
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1482
    sget-object v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;->DIRTY:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mStatus:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    .line 1483
    return-void
.end method

.method public setAllChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 1459
    sget-object v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    iput-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mStatus:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    .line 1460
    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;->REVERSE:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    :goto_0
    iput-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckMode:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    .line 1461
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1462
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1463
    iput-wide v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mIndex:J

    .line 1464
    iput-wide v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseIndex:J

    .line 1465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    invoke-interface {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1466
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 1465
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1460
    .end local v0    # "i":I
    :cond_0
    sget-object v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    goto :goto_0

    .line 1468
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setCheckState(IZ)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    const-wide/16 v6, 0x1

    .line 1437
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mStatus:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    sget-object v3, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Status;

    if-ne v2, v3, :cond_0

    .line 1438
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1440
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mSource:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;

    invoke-interface {v2, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;->getItemId(I)J

    move-result-wide v0

    .line 1441
    .local v0, "itemId":J
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mCheckMode:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    sget-object v3, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;->NORMAL:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Mode;

    if-ne v2, v3, :cond_2

    .line 1442
    if-eqz p2, :cond_1

    .line 1443
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mIndex:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mIndex:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1456
    :goto_0
    return-void

    .line 1445
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_0

    .line 1448
    :cond_2
    if-eqz p2, :cond_3

    .line 1449
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1450
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseIndex:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseIndex:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 1452
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mUserSelectedIdIndex:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mIndex:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mIndex:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1453
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->mReverseModeSelectedIdIndex:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_0
.end method
