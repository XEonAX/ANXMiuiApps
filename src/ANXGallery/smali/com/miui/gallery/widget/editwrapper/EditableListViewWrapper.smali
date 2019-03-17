.class public Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
.super Ljava/lang/Object;
.source "EditableListViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;
    }
.end annotation


# instance fields
.field private mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

.field private mAdapterWrappers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/support/v7/widget/RecyclerView$Adapter;",
            "Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

.field private mCheckItemListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

.field private mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

.field private mChoiceActionMode:Landroid/view/ActionMode;

.field private mEditActionMode:Lmiui/view/EditActionMode;

.field private mEnterActionModeListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

.field private mIsInActionMode:Z

.field private mIsInChoiceMode:Z

.field private mItemClickDelegate:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

.field private mListScrollState:I

.field private mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

.field private mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

.field private mRestoreCheckStateObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private mScrollDelegate:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mListScrollState:I

    .line 74
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$1;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mScrollDelegate:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 275
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$2;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mEnterActionModeListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    .line 348
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$3;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckItemListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    .line 1303
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$5;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRestoreCheckStateObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "recyclerView can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrappers:Landroid/util/ArrayMap;

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mScrollDelegate:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 100
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;-><init>(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 52
    iget v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mListScrollState:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mListScrollState:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->enterChoiceMode()V

    return-void
.end method

.method static synthetic access$1502(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mIsInActionMode:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Lmiui/view/EditActionMode;)Lmiui/view/EditActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
    .param p1, "x1"    # Lmiui/view/EditActionMode;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mEditActionMode:Lmiui/view/EditActionMode;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mIsInChoiceMode:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->exitChoiceMode()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->handleDataChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->isListHeaderOrFooter(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->updateActionMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method private checkMultiChoiceModeCallback()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->hasWrappedCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no MultiChoiceModeListener is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1
    return-void
.end method

.method private enterChoiceMode()V
    .locals 4

    .prologue
    .line 1054
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setLongClickable(Z)V

    .line 1055
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckItemListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 1056
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1057
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1058
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_0

    .line 1059
    check-cast v1, Lcom/miui/gallery/ui/Checkable;

    .end local v1    # "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 1056
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1062
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startEnterActionModeAni()V

    .line 1063
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->clear()V

    .line 1064
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->notifyDataChanged()V

    .line 1065
    return-void
.end method

.method private exitChoiceMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1068
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setLongClickable(Z)V

    .line 1069
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mItemClickDelegate:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 1070
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1071
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1072
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1073
    check-cast v2, Lcom/miui/gallery/ui/Checkable;

    invoke-interface {v2, v4}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 1074
    check-cast v1, Lcom/miui/gallery/ui/Checkable;

    .end local v1    # "view":Landroid/view/View;
    invoke-interface {v1, v4}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 1070
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1077
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startExistActionModeAni()V

    .line 1078
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->clear()V

    .line 1079
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->notifyDataChanged()V

    .line 1080
    return-void
.end method

.method private handleDataChanged()V
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->handleDataChanged()V

    .line 979
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->updateActionMode()V

    .line 980
    return-void
.end method

.method private isListHeaderOrFooter(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->isHeaderOrFooterPosition(I)Z

    move-result v0

    return v0
.end method

.method private notifyDataChanged()V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1084
    return-void
.end method

.method private updateActionMode()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 954
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 959
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiui/R$string;->select_item:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 967
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mEditActionMode:Lmiui/view/EditActionMode;

    if-eqz v3, :cond_0

    .line 971
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    .line 972
    invoke-virtual {v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mEditActionMode:Lmiui/view/EditActionMode;

    const v5, 0x102001a

    .line 973
    invoke-virtual {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 971
    :goto_2
    invoke-static {v3, v4, v5, v1}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Lmiui/view/EditActionMode;II)V

    goto :goto_0

    .line 961
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiui/R$plurals;->items_selected:I

    iget-object v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    .line 963
    invoke-virtual {v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCount()I

    move-result v5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    invoke-virtual {v7}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 961
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v0    # "title":Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 973
    goto :goto_2
.end method

.method private updateOnScreenViewsState()V
    .locals 6

    .prologue
    .line 945
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 946
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 947
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 948
    check-cast v2, Lcom/miui/gallery/ui/Checkable;

    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v4, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCheckState(J)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 945
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public enableChoiceMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setLongClickable(Z)V

    .line 105
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mEnterActionModeListener:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemLongClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemLongClickListener;)V

    .line 106
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCount()I

    move-result v0

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public handleDataInvalid()V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->clear()V

    .line 984
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->updateActionMode()V

    .line 985
    return-void
.end method

.method public isAllItemsChecked()Z
    .locals 2

    .prologue
    .line 932
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->getCount()I

    move-result v0

    .line 933
    .local v0, "checkedCount":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->getSourceItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInChoiceMode()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mIsInChoiceMode:Z

    return v0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    .line 126
    .local v0, "old":Landroid/support/v7/widget/RecyclerView$Adapter;
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrappers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    iput-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    .line 127
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    if-ne v0, v1, :cond_0

    .line 128
    const-string v1, "EditableListViewWrapper"

    const-string v2, "setAdapter the same adapter"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->clear()V

    .line 132
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRestoreCheckStateObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 136
    :cond_1
    if-nez p1, :cond_2

    .line 137
    iput-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    .line 138
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 139
    invoke-virtual {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->handleDataInvalid()V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    if-nez v1, :cond_3

    .line 145
    new-instance v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    .line 146
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrappers:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->setHasStableIds(Z)V

    .line 150
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRestoreCheckStateObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 151
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 152
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$SimpleWrapper;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->bind(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckState$Source;)V

    .line 153
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->handleDataChanged()V

    goto :goto_0
.end method

.method public setAllItemsCheckState(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 937
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$CheckStateWithGroup;->setAllChecked(Z)V

    .line 938
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->updateOnScreenViewsState()V

    .line 939
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->updateActionMode()V

    .line 940
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->access$600(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1, p1}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 941
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$AnimationManager;->startScaleAllItemImageViewAnimation(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;Z)V

    .line 942
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->setWrapped(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V

    .line 196
    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mItemClickDelegate:Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->setOnItemClickListener(Lcom/miui/gallery/widget/recyclerview/ItemClickSupport$OnItemClickListener;)V

    .line 181
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 185
    return-void
.end method

.method public startActionMode()V
    .locals 3

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->checkMultiChoiceModeCallback()V

    .line 305
    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mIsInChoiceMode:Z

    if-eqz v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mRecyclerView:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 309
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    instance-of v0, v0, Lmiui/view/EditActionMode;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    check-cast v0, Lmiui/view/EditActionMode;

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mEditActionMode:Lmiui/view/EditActionMode;

    .line 312
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mIsInChoiceMode:Z

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;->access$600(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    goto :goto_0
.end method

.method public stopActionMode()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 321
    :cond_0
    return-void
.end method
