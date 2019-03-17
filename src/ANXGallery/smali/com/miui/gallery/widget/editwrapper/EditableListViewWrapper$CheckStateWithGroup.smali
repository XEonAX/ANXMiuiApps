.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;
.super Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState;
.source "EditableListViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckStateWithGroup"
.end annotation


# instance fields
.field private mGroupCheckState:Landroid/util/SparseBooleanArray;

.field private mListAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

.field private mListView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

.field private mStickyHeaderAdapter:Lcom/miui/gallery/widget/stickyheader/core/StickyHeaderAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;)V
    .locals 2
    .param p1, "listView"    # Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
    .param p2, "animationManager"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    .prologue
    .line 1347
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$1;)V

    .line 1342
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mGroupCheckState:Landroid/util/SparseBooleanArray;

    .line 1348
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mListView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 1349
    iput-object p2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mListAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    .line 1350
    return-void
.end method

.method private setCheckStateInternal(IZZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "checked"    # Z
    .param p3, "refreshHeader"    # Z

    .prologue
    .line 1395
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState;->setCheckState(IZ)V

    .line 1396
    iget-object v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mStickyHeaderAdapter:Lcom/miui/gallery/widget/stickyheader/core/StickyHeaderAdapter;

    if-nez v5, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1399
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mStatus:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    sget-object v6, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;->CLEAN:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Status;

    if-ne v5, v6, :cond_0

    .line 1400
    if-eqz p3, :cond_0

    .line 1401
    iget-object v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mStickyHeaderAdapter:Lcom/miui/gallery/widget/stickyheader/core/StickyHeaderAdapter;

    invoke-interface {v5, p1}, Lcom/miui/gallery/widget/stickyheader/core/StickyHeaderAdapter;->getHeaderIndex(I)I

    move-result v0

    .line 1402
    .local v0, "groupIndex":I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getGroupCheckState(I)Z

    move-result v3

    .line 1403
    .local v3, "oldGroupCheckState":Z
    const/4 v2, 0x1

    .line 1404
    .local v2, "newGroupCheckState":Z
    iget-object v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mStickyHeaderAdapter:Lcom/miui/gallery/widget/stickyheader/core/StickyHeaderAdapter;

    invoke-interface {v5, v0}, Lcom/miui/gallery/widget/stickyheader/core/StickyHeaderAdapter;->getItemPositionInterval(I)[I

    move-result-object v1

    .line 1405
    .local v1, "interval":[I
    const/4 v5, 0x0

    aget v4, v1, v5

    .local v4, "pos":I
    :goto_1
    const/4 v5, 0x1

    aget v5, v1, v5

    if-gt v4, v5, :cond_2

    .line 1406
    invoke-virtual {p0, v4}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCheckState(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1407
    const/4 v2, 0x0

    .line 1412
    :cond_2
    if-eq v3, v2, :cond_0

    .line 1413
    iget-object v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mGroupCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1414
    iget-object v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mListView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1405
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1385
    invoke-super {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState;->clear()V

    .line 1386
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mGroupCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1387
    return-void
.end method

.method public getGroupCheckState(I)Z
    .locals 1
    .param p1, "groupIndex"    # I

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mGroupCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public setAllChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 1421
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState;->setAllChecked(Z)V

    .line 1422
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mStickyHeaderAdapter:Lcom/miui/gallery/widget/stickyheader/core/StickyHeaderAdapter;

    if-nez v1, :cond_0

    .line 1429
    :goto_0
    return-void

    .line 1425
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mStickyHeaderAdapter:Lcom/miui/gallery/widget/stickyheader/core/StickyHeaderAdapter;

    invoke-interface {v1}, Lcom/miui/gallery/widget/stickyheader/core/StickyHeaderAdapter;->getHeaderCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1426
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mGroupCheckState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1428
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->mListView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setCheckState(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 1390
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->setCheckStateInternal(IZZ)V

    .line 1391
    return-void
.end method
