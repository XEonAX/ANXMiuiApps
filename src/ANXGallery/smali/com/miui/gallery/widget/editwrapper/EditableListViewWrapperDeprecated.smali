.class public Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
.super Ljava/lang/Object;
.source "EditableListViewWrapperDeprecated.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckStateWithGroup;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$TimeLineWrapper;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleTimeLineWrapper;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;,
        Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;
    }
.end annotation


# instance fields
.field private mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

.field private mAdapterWrappers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/ListAdapter;",
            "Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

.field private mCheckItemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

.field private mChoiceActionMode:Landroid/view/ActionMode;

.field private mEditActionMode:Lmiui/view/EditActionMode;

.field private mEnterActionModeListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mIsInActionMode:Z

.field private mIsInChoiceMode:Z

.field private mItemClickDelegate:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListHeaderCount:I

.field private mListScrollState:I

.field private mListView:Landroid/widget/AbsListView;

.field private mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

.field private mRestoreCheckStateObserver:Landroid/database/DataSetObserver;

.field private mScrollDelegate:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListScrollState:I

    .line 77
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mScrollDelegate:Landroid/widget/AbsListView$OnScrollListener;

    .line 272
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$2;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mEnterActionModeListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 365
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$3;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1308
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$5;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mRestoreCheckStateObserver:Landroid/database/DataSetObserver;

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listview can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrappers:Landroid/util/ArrayMap;

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mScrollDelegate:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    iget v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListScrollState:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListScrollState:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->enterChoiceMode()V

    return-void
.end method

.method static synthetic access$1602(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mIsInActionMode:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Lmiui/view/EditActionMode;)Lmiui/view/EditActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
    .param p1, "x1"    # Lmiui/view/EditActionMode;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mEditActionMode:Lmiui/view/EditActionMode;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mIsInChoiceMode:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->exitChoiceMode()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setGroupCheck(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->notifyDataChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Lcom/miui/gallery/ui/CheckableView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;
    .param p1, "x1"    # Lcom/miui/gallery/ui/CheckableView;
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->setCheckableHeaderView(Lcom/miui/gallery/ui/CheckableView;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->handleDataChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    iget v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListHeaderCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->updateActionMode()V

    return-void
.end method

.method private checkMultiChoiceModeCallback()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->hasWrappedCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no MultiChoiceModeListener is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    return-void
.end method

.method private enterChoiceMode()V
    .locals 4

    .prologue
    .line 1084
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1085
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1086
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1087
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1088
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_0

    .line 1089
    check-cast v1, Lcom/miui/gallery/ui/Checkable;

    .end local v1    # "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 1086
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1092
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->startEnterActionModeAni()V

    .line 1093
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->clear()V

    .line 1094
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->notifyDataChanged()V

    .line 1095
    return-void
.end method

.method private exitChoiceMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1098
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1099
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mItemClickDelegate:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1101
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1102
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/miui/gallery/ui/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1103
    check-cast v2, Lcom/miui/gallery/ui/Checkable;

    invoke-interface {v2, v4}, Lcom/miui/gallery/ui/Checkable;->setCheckable(Z)V

    .line 1104
    check-cast v1, Lcom/miui/gallery/ui/Checkable;

    .end local v1    # "view":Landroid/view/View;
    invoke-interface {v1, v4}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 1100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1107
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->startExistActionModeAni()V

    .line 1108
    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->clear()V

    .line 1109
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->notifyDataChanged()V

    .line 1110
    return-void
.end method

.method private handleDataChanged()V
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->handleDataChanged()V

    .line 1009
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->updateActionMode()V

    .line 1010
    return-void
.end method

.method private notifyDataChanged()V
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->notifyChanged()V

    .line 1116
    :cond_0
    return-void
.end method

.method private setCheckableHeaderView(Lcom/miui/gallery/ui/CheckableView;I)V
    .locals 1
    .param p1, "checkableView"    # Lcom/miui/gallery/ui/CheckableView;
    .param p2, "position"    # I

    .prologue
    .line 1212
    invoke-virtual {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isInChoiceMode()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/CheckableView;->setCheckable(Z)V

    .line 1213
    invoke-virtual {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isInChoiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$4;

    invoke-direct {v0, p0, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$4;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;I)V

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/CheckableView;->setCheckableListener(Landroid/view/View$OnClickListener;)V

    .line 1227
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    check-cast v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckStateWithGroup;

    .line 1228
    invoke-virtual {v0, p2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckStateWithGroup;->getGroupCheckState(I)Z

    move-result v0

    .line 1227
    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/CheckableView;->setChecked(Z)V

    .line 1230
    :cond_0
    return-void
.end method

.method private setGroupCheck(I)Z
    .locals 2
    .param p1, "headerPosition"    # I

    .prologue
    .line 1200
    const/4 v0, 0x0

    .line 1201
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    instance-of v1, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    if-eqz v1, :cond_0

    .line 1202
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    check-cast v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckStateWithGroup;

    .line 1203
    invoke-virtual {v1, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckStateWithGroup;->setGroupCheckState(I)Z

    move-result v0

    .line 1204
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->updateOnScreenViewsState()V

    .line 1205
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->updateActionMode()V

    .line 1207
    :cond_0
    return v0
.end method

.method private updateActionMode()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 984
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_1

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 989
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mChoiceActionMode:Landroid/view/ActionMode;

    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiui/R$string;->select_item:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 997
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mEditActionMode:Lmiui/view/EditActionMode;

    if-eqz v3, :cond_0

    .line 1001
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    .line 1002
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mEditActionMode:Lmiui/view/EditActionMode;

    const v5, 0x102001a

    .line 1003
    invoke-virtual {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->isAllItemsChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1001
    :goto_2
    invoke-static {v3, v4, v5, v1}, Lmiui/gallery/support/MiuiSdkCompat;->setEditActionModeButton(Landroid/content/Context;Lmiui/view/EditActionMode;II)V

    goto :goto_0

    .line 991
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiui/R$plurals;->items_selected:I

    iget-object v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    .line 993
    invoke-virtual {v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCount()I

    move-result v5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-virtual {v7}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 991
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v0    # "title":Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 1003
    goto :goto_2
.end method

.method private updateOnScreenViewsState()V
    .locals 6

    .prologue
    .line 973
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 974
    .local v0, "first":I
    iget v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListHeaderCount:I

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 975
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 976
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/miui/gallery/ui/Checkable;

    if-eqz v3, :cond_0

    .line 978
    check-cast v2, Lcom/miui/gallery/ui/Checkable;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    iget-object v4, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    add-int v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCheckState(J)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/miui/gallery/ui/Checkable;->setChecked(Z)V

    .line 974
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 981
    :cond_1
    return-void
.end method


# virtual methods
.method public disableScaleImageViewAniWhenInActionMode()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->disableScaleImageViewAni()V

    .line 130
    return-void
.end method

.method public enableScaleImageViewAniWhenInActionMode()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->enableScaleImageViewAni()V

    .line 126
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->access$200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;)Landroid/widget/ListAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCount()I

    move-result v0

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemOrderedPositions()[I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCheckedItemOrderedPositions()[I

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v1, "checkedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;>;"
    iget-object v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->getWrapped()Landroid/widget/ListAdapter;

    move-result-object v5

    instance-of v5, v5, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;

    if-eqz v5, :cond_1

    .line 254
    iget-object v5, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    invoke-virtual {v5}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->getWrapped()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;

    .line 255
    .local v3, "originalAdapter":Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;
    invoke-virtual {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->getCheckedItemOrderedPositions()[I

    move-result-object v4

    .line 256
    .local v4, "positions":[I
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 257
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 258
    aget v5, v4, v2

    invoke-virtual {v3, v5}, Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;->getCheckedItem(I)Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;

    move-result-object v0

    .line 259
    .local v0, "checkedItem":Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "checkedItem":Lcom/miui/gallery/adapter/CheckableAdapter$CheckedItem;
    .end local v2    # "i":I
    .end local v3    # "originalAdapter":Lcom/miui/gallery/adapter/BaseMediaAdapterDeprecated;
    .end local v4    # "positions":[I
    :cond_1
    return-object v1
.end method

.method public handleDataInvalid()V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->clear()V

    .line 1014
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->updateActionMode()V

    .line 1015
    return-void
.end method

.method public isAllItemsChecked()Z
    .locals 2

    .prologue
    .line 957
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->getCount()I

    move-result v0

    .line 958
    .local v0, "checkedCount":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInActionMode()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mIsInActionMode:Z

    return v0
.end method

.method public isInChoiceMode()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mIsInChoiceMode:Z

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    .line 138
    .local v0, "old":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrappers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    iput-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    .line 139
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    if-ne v0, v1, :cond_0

    .line 140
    const-string v1, "EditableListViewWrapperDeprecated"

    const-string v2, "setAdapter the same adapter"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mRestoreCheckStateObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 147
    :cond_1
    new-instance v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-direct {v1, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    .line 148
    if-nez p1, :cond_2

    .line 149
    iput-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    .line 150
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    invoke-virtual {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->handleDataInvalid()V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    if-nez v1, :cond_3

    .line 157
    instance-of v1, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    if-eqz v1, :cond_6

    .line 158
    new-instance v2, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$TimeLineWrapper;

    move-object v1, p1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-direct {v2, p0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$TimeLineWrapper;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;)V

    iput-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    .line 164
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrappers:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_3
    instance-of v1, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    if-nez v1, :cond_4

    instance-of v1, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    if-eqz v1, :cond_5

    .line 169
    :cond_4
    new-instance v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckStateWithGroup;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckStateWithGroup;-><init>(Landroid/widget/AbsListView;Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    .line 172
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mRestoreCheckStateObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 173
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    iget-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->bind(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState$Source;)V

    .line 175
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->handleDataChanged()V

    goto :goto_0

    .line 159
    :cond_6
    instance-of v1, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    if-eqz v1, :cond_7

    .line 160
    new-instance v2, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleTimeLineWrapper;

    move-object v1, p1

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    invoke-direct {v2, p0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleTimeLineWrapper;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;)V

    iput-object v2, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    goto :goto_1

    .line 162
    :cond_7
    new-instance v1, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAdapterWrapper:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$SimpleWrapper;

    goto :goto_1
.end method

.method public setAllItemsCheckState(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 962
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mCheckState:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$CheckState;->setAllChecked(Z)V

    .line 963
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->updateOnScreenViewsState()V

    .line 964
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->updateActionMode()V

    .line 965
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1, p1}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 966
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    if-eqz v0, :cond_0

    .line 967
    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mAnimationManager:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;

    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1, v0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$AnimationManager;->startScaleAllItemImageViewAnimation(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Z)V

    .line 970
    :cond_0
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    .line 111
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mEnterActionModeListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;-><init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$1;)V

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->setWrapped(Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;)V

    .line 196
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mItemClickDelegate:Landroid/widget/AdapterView$OnItemClickListener;

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 185
    return-void
.end method

.method public startActionMode()V
    .locals 3

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->checkMultiChoiceModeCallback()V

    .line 303
    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mIsInChoiceMode:Z

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 307
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mChoiceActionMode:Landroid/view/ActionMode;

    instance-of v0, v0, Lmiui/view/EditActionMode;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mChoiceActionMode:Landroid/view/ActionMode;

    check-cast v0, Lmiui/view/EditActionMode;

    iput-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mEditActionMode:Lmiui/view/EditActionMode;

    .line 310
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mIsInChoiceMode:Z

    .line 312
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mMultiChoiceModeCallback:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;->access$700(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated$MultiChoiceModeCallback;)Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/widget/editwrapper/MultiChoiceModeListener;->onAllItemsCheckedStateChanged(Landroid/view/ActionMode;Z)V

    goto :goto_0
.end method

.method public startChoiceMode()V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->checkMultiChoiceModeCallback()V

    .line 326
    iget-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mIsInChoiceMode:Z

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mIsInChoiceMode:Z

    .line 330
    invoke-direct {p0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->enterChoiceMode()V

    goto :goto_0
.end method

.method public stopActionMode()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapperDeprecated;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 319
    :cond_0
    return-void
.end method
