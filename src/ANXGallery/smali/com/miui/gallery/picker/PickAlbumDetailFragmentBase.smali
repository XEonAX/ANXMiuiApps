.class public abstract Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;
.super Lcom/miui/gallery/picker/PickerFragment;
.source "PickAlbumDetailFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;,
        Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;,
        Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$AlbumItemCheckListener;
    }
.end annotation


# instance fields
.field protected mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private mPageName:Ljava/lang/String;

.field protected mSelections:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;

.field private mShouldContainUnique:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickerFragment;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mShouldContainUnique:Z

    .line 39
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPageName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;Lcom/miui/gallery/picker/helper/Picker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;
    .param p1, "x1"    # Lcom/miui/gallery/picker/helper/Picker;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->removeInternal(Lcom/miui/gallery/picker/helper/Picker;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;Lcom/miui/gallery/picker/helper/Picker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;
    .param p1, "x1"    # Lcom/miui/gallery/picker/helper/Picker;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->pickInternal(Lcom/miui/gallery/picker/helper/Picker;Ljava/lang/String;)V

    return-void
.end method

.method private pickInternal(Lcom/miui/gallery/picker/helper/Picker;Ljava/lang/String;)V
    .locals 3
    .param p1, "picker"    # Lcom/miui/gallery/picker/helper/Picker;
    .param p2, "sha1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-interface {p1, p2}, Lcom/miui/gallery/picker/helper/Picker;->pick(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mShouldContainUnique:Z

    if-nez v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mSelections:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->add(Ljava/lang/String;)Z

    .line 64
    :cond_1
    const-string v0, "picker"

    const-string v1, "pick_event_page"

    iget-object v2, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private refreshPickState()V
    .locals 6

    .prologue
    .line 108
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 109
    .local v0, "firstVisibleItem":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 110
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 111
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Lcom/miui/gallery/ui/Checkable;

    if-eqz v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    add-int v5, v0, v1

    .line 113
    invoke-virtual {v4, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    .line 112
    invoke-static {v4}, Lcom/miui/gallery/picker/helper/CursorUtils;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "sha1":Ljava/lang/String;
    check-cast v3, Lcom/miui/gallery/ui/Checkable;

    .end local v3    # "v":Landroid/view/View;
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4, v2}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 109
    .end local v2    # "sha1":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method private removeInternal(Lcom/miui/gallery/picker/helper/Picker;Ljava/lang/String;)V
    .locals 1
    .param p1, "picker"    # Lcom/miui/gallery/picker/helper/Picker;
    .param p2, "sha1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-interface {p1, p2}, Lcom/miui/gallery/picker/helper/Picker;->remove(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mShouldContainUnique:Z

    if-nez v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mSelections:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->remove(Ljava/lang/Object;)Z

    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method protected bindCheckState(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    .line 173
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/picker/helper/Picker$Mode;->SINGLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v3, v4, :cond_1

    .line 174
    instance-of v3, p1, Lcom/miui/gallery/ui/MicroThumbGridItem;

    if-eqz v3, :cond_0

    .line 175
    check-cast p1, Lcom/miui/gallery/ui/MicroThumbGridItem;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setSimilarMarkEnable(Z)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    move-object v0, p1

    .line 180
    check-cast v0, Lcom/miui/gallery/ui/Checkable;

    .line 181
    .local v0, "checkable":Lcom/miui/gallery/ui/Checkable;
    invoke-interface {v0, v5}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 182
    invoke-static {p2}, Lcom/miui/gallery/picker/helper/CursorUtils;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "sha1":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v3, v2}, Lcom/miui/gallery/picker/helper/Picker;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 184
    .local v1, "checked":Z
    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 93
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 94
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_1

    .line 95
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 96
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 97
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-static {v1}, Lcom/miui/gallery/picker/helper/CursorUtils;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "sha1":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-direct {p0, v4, v3}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->removeInternal(Lcom/miui/gallery/picker/helper/Picker;Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->count()I

    move-result v4

    if-gtz v4, :cond_2

    .line 103
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "sha1":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->refreshPickState()V

    .line 105
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 95
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "i":I
    .restart local v3    # "sha1":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected copy2Pick()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mSelections:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->copyFrom(Lcom/miui/gallery/picker/helper/Picker;)V

    .line 58
    return-void
.end method

.method protected intialSelections()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;

    new-instance v1, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$1;-><init>(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;)V

    invoke-direct {v0, v1}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;-><init>(Lcom/miui/gallery/picker/helper/AdapterHolder;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mSelections:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;

    .line 50
    return-void
.end method

.method protected isAllSelected()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mSelections:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mSelections:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 127
    .local v0, "firstVisibleItemPosition":I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v2

    iget v2, v2, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsLand:I

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setSelection(I)V

    .line 133
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v2

    iget v2, v2, Lcom/miui/gallery/Config$ThumbConfig;->sMicroThumbColumnsPortrait:I

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method protected onPhotoItemClick(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->getMode()Lcom/miui/gallery/picker/helper/Picker$Mode;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/picker/helper/Picker$Mode;->SINGLE:Lcom/miui/gallery/picker/helper/Picker$Mode;

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-static {p1}, Lcom/miui/gallery/picker/helper/CursorUtils;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/picker/helper/Picker;->pick(Ljava/lang/String;)Z

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->setResultCode(I)V

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v0}, Lcom/miui/gallery/picker/helper/Picker;->done()V

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectAll()V
    .locals 10

    .prologue
    .line 74
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mAlbumDetailGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRealAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 75
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_1

    .line 76
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->isFull()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 80
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c03c3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    .line 81
    invoke-interface {v9}, Lcom/miui/gallery/picker/helper/Picker;->capacity()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 80
    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-static {v4, v5}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->refreshPickState()V

    .line 90
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 84
    .restart local v2    # "i":I
    :cond_2
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 85
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-static {v1}, Lcom/miui/gallery/picker/helper/CursorUtils;->getSha1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "sha1":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    invoke-direct {p0, v4, v3}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->pickInternal(Lcom/miui/gallery/picker/helper/Picker;Ljava/lang/String;)V

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setItemStateListener(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;)V
    .locals 1
    .param p1, "itemStateListener"    # Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mSelections:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$SelectionHolder;->setItemStateListener(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;)V

    .line 121
    return-void
.end method

.method public setSelectionCloudNotContainUnique()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->mShouldContainUnique:Z

    .line 54
    return-void
.end method
