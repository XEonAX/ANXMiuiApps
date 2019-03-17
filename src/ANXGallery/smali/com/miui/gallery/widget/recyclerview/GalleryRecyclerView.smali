.class public Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "GalleryRecyclerView.java"

# interfaces
.implements Lcom/miui/gallery/util/photoview/ScrollableView;
.implements Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;,
        Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;
    }
.end annotation


# instance fields
.field private isHideViewCalled:Z

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field protected mCustomFastScroller:Lcom/miui/gallery/widget/recyclerview/FastScroller;

.field private mEmptyView:Landroid/view/View;

.field private mEnableCustomFastScroller:Z

.field private mFastScrollStyle:I

.field protected mItemClickSupport:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

.field private final mObserver:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;

.field private mOnItemLongClickListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

.field private mOnItemTouchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-object v3, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 27
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mOnItemTouchListeners:Ljava/util/List;

    .line 37
    iput-boolean v2, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->isHideViewCalled:Z

    .line 38
    new-instance v1, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;

    invoke-direct {v1, p0, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;-><init>(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$1;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mObserver:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;

    .line 50
    if-eqz p2, :cond_0

    .line 51
    sget-object v1, Lcom/miui/gallery/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mEnableCustomFastScroller:Z

    .line 53
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mFastScrollStyle:I

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->initItemClick()V

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->updateEmptyStatus()V

    return-void
.end method

.method private bringFastScrollerToFront()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mCustomFastScroller:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mCustomFastScroller:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    const/4 v1, -0x1

    invoke-super {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    .line 100
    return-void
.end method

.method private openContextMenu(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 140
    if-ltz p1, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->createContextMenuInfo(I)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 208
    .local v0, "oldAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mObserver:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mObserver:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 213
    if-eqz p2, :cond_1

    .line 214
    invoke-super {p0, p1, p3}, Landroid/support/v7/widget/RecyclerView;->swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 218
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->updateEmptyStatus()V

    .line 219
    return-void

    .line 216
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method private updateEmptyStatus()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 287
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 288
    .local v1, "empty":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 289
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 290
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-super {p0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 305
    :cond_1
    :goto_1
    return-void

    .end local v1    # "empty":Z
    :cond_2
    move v1, v2

    .line 287
    goto :goto_0

    .line 292
    .restart local v1    # "empty":Z
    :cond_3
    iget-boolean v3, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->isHideViewCalled:Z

    if-nez v3, :cond_1

    .line 294
    invoke-super {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1

    .line 297
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 298
    iget-object v3, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :cond_5
    iget-boolean v3, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->isHideViewCalled:Z

    if-nez v3, :cond_1

    .line 302
    invoke-super {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V
    .locals 1
    .param p1, "decor"    # Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mCustomFastScroller:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->bringFastScrollerToFront()V

    .line 95
    :cond_0
    return-void
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mOnItemTouchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method protected createContextMenuInfo(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;

    invoke-direct {v0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    check-cast v0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerContextMenuInfo;->setValues(I)V

    goto :goto_0
.end method

.method public findChildViewUnderForExternal(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForAdapterPositionForExternal(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildAdapterPositionForExternal(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getItemTouchListenerAt(I)Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mOnItemTouchListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 124
    .local v0, "size":I
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mOnItemTouchListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    return-object v1

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is an invalid index for size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getItemTouchListenerCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mOnItemTouchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected initItemClick()V
    .locals 1

    .prologue
    .line 60
    invoke-static {p0}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->addTo(Landroid/support/v7/widget/RecyclerView;)Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mItemClickSupport:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mItemClickSupport:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->setOnItemLongClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;)V

    .line 62
    return-void
.end method

.method public onItemLongClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .locals 8
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 156
    const/4 v6, 0x0

    .line 157
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mOnItemLongClickListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mOnItemLongClickListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;->onItemLongClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    move-result v6

    .line 160
    :cond_0
    if-nez v6, :cond_1

    invoke-direct {p0, p3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->openContextMenu(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mOnItemTouchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 310
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 314
    .local v0, "layout":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 315
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "layout":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 319
    :goto_0
    return-void

    .line 317
    .restart local v0    # "layout":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 197
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 198
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mEmptyView:Landroid/view/View;

    .line 266
    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 271
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->updateEmptyStatus()V

    .line 272
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mEnableCustomFastScroller:Z

    if-eq v0, p1, :cond_1

    .line 74
    iput-boolean p1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mEnableCustomFastScroller:Z

    .line 75
    if-eqz p1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mCustomFastScroller:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;-><init>(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mCustomFastScroller:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mCustomFastScroller:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    iget v1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mFastScrollStyle:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->setStyle(I)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mCustomFastScroller:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->attach()V

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mCustomFastScroller:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mCustomFastScroller:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->detach()V

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mCustomFastScroller:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    if-nez v0, :cond_0

    .line 66
    iput p1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mFastScrollStyle:I

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mCustomFastScroller:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mItemClickSupport:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/recyclerview/ItemClickSupport;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 104
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->mOnItemLongClickListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    .line 108
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 276
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->isHideViewCalled:Z

    .line 277
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 278
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 203
    return-void
.end method

.method public viewToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->scrollToPositionWithOffset(II)V

    .line 324
    return-void
.end method
