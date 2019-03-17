.class public Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;
.super Lcom/miui/gallery/video/editor/ui/MenuFragment;
.source "SmartEffectFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

.field private mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

.field private mDownloadingSmartEffect:Lcom/miui/gallery/video/editor/SmartEffect;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mSavedSelectedSmartEffectIndex:I

.field private mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

.field private mSmartEffectManager:Lcom/miui/gallery/video/editor/manager/SmartEffectManager;

.field private mSmartEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/video/editor/SmartEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

.field private mVideoTotalTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;-><init>()V

    .line 42
    const-string v0, "SmartEffectFragment"

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSmartEffects:Ljava/util/ArrayList;

    .line 218
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Lcom/miui/gallery/video/editor/SmartEffect;)Lcom/miui/gallery/video/editor/SmartEffect;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/SmartEffect;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mDownloadingSmartEffect:Lcom/miui/gallery/video/editor/SmartEffect;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSmartEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Lcom/miui/gallery/video/editor/manager/SmartEffectManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSmartEffectManager:Lcom/miui/gallery/video/editor/manager/SmartEffectManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->hasOtherItemDownloading()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->updateSelectedItemPosition(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    .prologue
    .line 40
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoTotalTime:I

    return v0
.end method

.method private hasOtherItemDownloading()Z
    .locals 3

    .prologue
    .line 285
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSmartEffects:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSmartEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSmartEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/SmartEffect;

    .line 287
    .local v0, "data":Lcom/miui/gallery/video/editor/SmartEffect;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    const/4 v1, 0x1

    .line 292
    .end local v0    # "data":Lcom/miui/gallery/video/editor/SmartEffect;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$1;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->setActionListener(Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;)V

    .line 102
    return-void
.end method

.method private initRecylerView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 79
    const v0, 0x7f1202c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    .line 80
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0077

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 83
    new-instance v0, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSmartEffects:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$SmartEffectItemSelectChangeListener;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->setItemSelectChangeListener(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSavedSelectedSmartEffectIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->setSelectedItemPosition(I)V

    .line 88
    return-void
.end method

.method private refreshData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;>;"
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;->getLocalTemplateEntities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 194
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/LocalResource;>;"
    if-eqz p1, :cond_0

    .line 195
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "effectArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/video/editor/SmartEffect;>;"
    invoke-static {v1}, Lcom/miui/gallery/video/editor/model/VedioEditorModuleAdapter;->loadSmartEffects(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getInstance()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$4;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->checkExpiredAsset(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ICheckExpiredAssetListener;)V

    .line 216
    return-void
.end method

.method private updateSelectedItemPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->setSelectedItemPosition(I)V

    .line 298
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->clearLastSelectedPostion()V

    .line 300
    :cond_0
    return-void
.end method


# virtual methods
.method public doApply()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-nez v0, :cond_0

    .line 119
    const-string v0, "SmartEffectFragment"

    const-string v1, "doApply: videoEditor is null."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->saveEditState()V

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSavedSelectedSmartEffectIndex:I

    .line 124
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->recordEventWithApply()V

    .line 125
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->onExitMode()V

    .line 126
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doCancel()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-nez v0, :cond_0

    .line 132
    const-string v0, "SmartEffectFragment"

    const-string v1, "doCancel: videoEditor is null."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->restoreEditState()V

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$2;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentEffect()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->getSmartEffect(I)Lcom/miui/gallery/video/editor/SmartEffect;

    move-result-object v1

    .line 108
    .local v1, "smartEffect":Lcom/miui/gallery/video/editor/SmartEffect;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/SmartEffect;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "effectName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 113
    .end local v0    # "effectName":Ljava/lang/String;
    .end local v1    # "smartEffect":Lcom/miui/gallery/video/editor/SmartEffect;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEffectId()I
    .locals 1

    .prologue
    .line 151
    const v0, 0x7f120035

    return v0
.end method

.method public isHighFrames()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 361
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getVideoFrames()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 364
    :cond_0
    return v0
.end method

.method public loadResourceData()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Lcom/miui/gallery/video/editor/factory/SmartEffectFactory;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/factory/SmartEffectFactory;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    .line 157
    new-instance v0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->getEffectId()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;-><init>(ILcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$3;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->execute(Lcom/miui/gallery/net/base/ResponseListener;)V

    .line 190
    return-void
.end method

.method public notifyDateSetChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 307
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v0, Lcom/miui/gallery/video/editor/manager/SmartEffectManager;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/manager/SmartEffectManager;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mSmartEffectManager:Lcom/miui/gallery/video/editor/manager/SmartEffectManager;

    .line 63
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->loadResourceData()V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const v1, 0x7f040176

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1202c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    .line 70
    const v1, 0x7f1202d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mLayout:Landroid/widget/LinearLayout;

    .line 71
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0544

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getProjectTotalTime()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoTotalTime:I

    .line 73
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->initRecylerView(Landroid/view/View;)V

    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->initListener()V

    .line 75
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    invoke-super {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onDestroyView()V

    .line 341
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mDownloadingSmartEffect:Lcom/miui/gallery/video/editor/SmartEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mDownloadingSmartEffect:Lcom/miui/gallery/video/editor/SmartEffect;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mDownloadingSmartEffect:Lcom/miui/gallery/video/editor/SmartEffect;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/SmartEffect;->setDownloadState(I)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;->setItemSelectChangeListener(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;)V

    .line 349
    iput-object v2, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/SmartEffectRecyclerViewAdapter;

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    if-eqz v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->setActionListener(Lcom/miui/gallery/video/editor/widget/EffectActionBar$ActionListener;)V

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    if-eqz v0, :cond_4

    .line 355
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->cancel()V

    .line 357
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;->cancelRequest()V

    .line 358
    return-void
.end method

.method public onDownlaodCompleted(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
    .locals 4
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
    .param p2, "position"    # I

    .prologue
    .line 311
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/video/editor/SmartEffect;

    .line 312
    .local v0, "smartEffect":Lcom/miui/gallery/video/editor/SmartEffect;
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getInstance()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/SmartEffect;->getAssetId()I

    move-result v2

    new-instance v3, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;

    invoke-direct {v3, p0, v0, p2}, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment$5;-><init>(Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;Lcom/miui/gallery/video/editor/SmartEffect;I)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->installSmartEffectAssetPackageToSdk(ILcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;)V

    .line 336
    return-void
.end method
