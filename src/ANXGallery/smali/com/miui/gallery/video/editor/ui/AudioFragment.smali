.class public Lcom/miui/gallery/video/editor/ui/AudioFragment;
.super Lcom/miui/gallery/video/editor/ui/MenuFragment;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

.field private mAudios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/video/editor/LocalAudio;",
            ">;"
        }
    .end annotation
.end field

.field private mBgSoundEnable:Z

.field private mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

.field private mDowmloadingLocalAudio:Lcom/miui/gallery/video/editor/LocalAudio;

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mSavedSelectedAudioIndex:I

.field private mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

.field private mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

.field private mVoiceClicked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAudios:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mBgSoundEnable:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVoiceClicked:Z

    .line 284
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/ui/AudioFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/AudioFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/ui/AudioFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/AudioFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAudios:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/ui/AudioFragment;)Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/AudioFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/video/editor/ui/AudioFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/AudioFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->updateSelectedItemPosition(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/gallery/video/editor/ui/AudioFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/AudioFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->hasOtherItemDownloading()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/video/editor/ui/AudioFragment;)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/AudioFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/video/editor/ui/AudioFragment;Lcom/miui/gallery/video/editor/LocalAudio;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/AudioFragment;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/LocalAudio;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->successProcess(Lcom/miui/gallery/video/editor/LocalAudio;)V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/gallery/video/editor/ui/AudioFragment;Lcom/miui/gallery/video/editor/LocalAudio;)Lcom/miui/gallery/video/editor/LocalAudio;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/AudioFragment;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/LocalAudio;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mDowmloadingLocalAudio:Lcom/miui/gallery/video/editor/LocalAudio;

    return-object p1
.end method

.method private hasOtherItemDownloading()Z
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAudios:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAudios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAudios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/LocalAudio;

    .line 343
    .local v0, "data":Lcom/miui/gallery/video/editor/LocalAudio;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    const/4 v1, 0x1

    .line 348
    .end local v0    # "data":Lcom/miui/gallery/video/editor/LocalAudio;
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
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/AudioFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment$1;-><init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;)V

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

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    .line 80
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0065

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 83
    new-instance v0, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAudios:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/video/editor/ui/AudioFragment$MyAudioItemSelectChangeListener;-><init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;Lcom/miui/gallery/video/editor/ui/AudioFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->setItemSelectChangeListener(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mSavedSelectedAudioIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->setSelectedItemPosition(I)V

    .line 88
    return-void
.end method

.method private refreshData(Ljava/util/List;)V
    .locals 9
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
    .line 158
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v5, "mNoneList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v3, "mExtraList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v2, "mCustomList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;

    .line 162
    .local v1, "data":Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;
    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v7, "ve_type_none"

    iget-object v8, v1, Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 164
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_1
    const-string/jumbo v7, "ve_type_extra"

    iget-object v8, v1, Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 166
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_2
    const-string/jumbo v7, "ve_type_custom"

    iget-object v8, v1, Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    .end local v1    # "data":Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;
    :cond_3
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    iget-object v7, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;->getLocalTemplateEntities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 173
    .local v4, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/LocalResource;>;"
    if-eqz p1, :cond_4

    .line 174
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "audioArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/video/editor/LocalAudio;>;"
    iget-object v6, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    invoke-static {v6, v4}, Lcom/miui/gallery/video/editor/model/VedioEditorModuleAdapter;->loadAudioData(Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    new-instance v6, Lcom/miui/gallery/video/editor/ui/AudioFragment$4;

    invoke-direct {v6, p0, v0}, Lcom/miui/gallery/video/editor/ui/AudioFragment$4;-><init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;Ljava/util/ArrayList;)V

    invoke-static {v6}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method private successProcess(Lcom/miui/gallery/video/editor/LocalAudio;)V
    .locals 2
    .param p1, "localAudio"    # Lcom/miui/gallery/video/editor/LocalAudio;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {p1}, Lcom/miui/gallery/video/editor/LocalAudio;->getSrcPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->setBackgroundMusic(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/AudioFragment$7;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment$7;-><init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 374
    return-void
.end method

.method private updateAudioVoiceView(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 398
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    invoke-interface {v0, p1}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;->updateAudioVoiceView(Z)V

    .line 401
    :cond_0
    return-void
.end method

.method private updateSelectedItemPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->setSelectedItemPosition(I)V

    .line 336
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->clearLastSelectedPostion()V

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method public doApply()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-nez v0, :cond_0

    .line 209
    const-string v0, "AudioFragment"

    const-string v1, "doApply: videoEditor is null."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mSavedSelectedAudioIndex:I

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->saveEditState()V

    .line 214
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->recordEventWithApply()V

    .line 215
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->onExitMode()V

    .line 216
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doCancel()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 221
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-nez v1, :cond_0

    .line 222
    const-string v1, "AudioFragment"

    const-string v2, "doCancel: videoEditor is null."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_0
    return v0

    .line 225
    :cond_0
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVoiceClicked:Z

    if-eqz v1, :cond_2

    .line 226
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mBgSoundEnable:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mBgSoundEnable:Z

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->restoreEditState()V

    .line 229
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/AudioFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment$5;-><init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentEffect()Ljava/util/List;
    .locals 7
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
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 194
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    if-nez v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-object v1

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->getAuido(I)Lcom/miui/gallery/video/editor/LocalAudio;

    move-result-object v0

    .line 196
    .local v0, "audio":Lcom/miui/gallery/video/editor/LocalAudio;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->isCustom()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    new-array v2, v6, [Ljava/lang/String;

    const-string v1, "custom"

    aput-object v1, v2, v4

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->isSourceAudioEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "source"

    :goto_1
    aput-object v1, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "mute"

    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->isExtra()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->getLabel()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->isSourceAudioEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "source"

    :goto_2
    aput-object v1, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v1, "mute"

    goto :goto_2
.end method

.method public getEffectId()I
    .locals 1

    .prologue
    .line 244
    const v0, 0x7f120030

    return v0
.end method

.method public loadResourceData()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Lcom/miui/gallery/video/editor/factory/AudioFactory;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/factory/AudioFactory;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    .line 122
    new-instance v0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->getEffectId()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;-><init>(ILcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/AudioFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment$3;-><init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->execute(Lcom/miui/gallery/net/base/ResponseListener;)V

    .line 155
    return-void
.end method

.method public notifyDateSetChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 356
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 249
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 251
    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 252
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 253
    .local v0, "clipData":Landroid/content/ClipData;
    const/4 v2, 0x0

    .line 254
    .local v2, "m_soundfilepath":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/video/editor/util/ConvertFilepathUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 263
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 264
    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 265
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    sget-object v5, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v5, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/video/editor/VideoEditor;->setBackgroundMusic(Ljava/lang/String;)V

    .line 266
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v5, Lcom/miui/gallery/video/editor/ui/AudioFragment$6;

    invoke-direct {v5, p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment$6;-><init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;)V

    invoke-virtual {v4, v5}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 282
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v2    # "m_soundfilepath":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 258
    .restart local v0    # "clipData":Landroid/content/ClipData;
    .restart local v2    # "m_soundfilepath":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 259
    .local v3, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 260
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 261
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/gallery/video/editor/util/ConvertFilepathUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 278
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0573

    invoke-static {v4, v5}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->loadResourceData()V

    .line 65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    const v1, 0x7f040173

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->initRecylerView(Landroid/view/View;)V

    .line 71
    const v1, 0x7f1202c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    .line 72
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0516

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mBgSoundEnable:Z

    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->updateAudioVoiceView(Z)V

    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->initListener()V

    .line 75
    return-object v0
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 378
    invoke-super {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onDestroyView()V

    .line 379
    invoke-direct {p0, v2}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->updateAudioVoiceView(Z)V

    .line 380
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mDowmloadingLocalAudio:Lcom/miui/gallery/video/editor/LocalAudio;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mDowmloadingLocalAudio:Lcom/miui/gallery/video/editor/LocalAudio;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/LocalAudio;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mDowmloadingLocalAudio:Lcom/miui/gallery/video/editor/LocalAudio;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/LocalAudio;->setDownloadState(I)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;->setItemSelectChangeListener(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;)V

    .line 385
    iput-object v3, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/AudioRecyclerViewAdapter;

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mBottomBar:Lcom/miui/gallery/video/editor/widget/EffectActionBar;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/widget/EffectActionBar;->removeListener()V

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->cancel()V

    .line 393
    :cond_3
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVoiceClicked:Z

    .line 394
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->cancelRequest()V

    .line 395
    return-void
.end method

.method public onDownlaodCompleted(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
    .locals 1
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
    .param p2, "position"    # I

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;->setDownloadState(I)V

    .line 361
    invoke-virtual {p0, p2}, Lcom/miui/gallery/video/editor/ui/AudioFragment;->notifyDateSetChanged(I)V

    .line 362
    return-void
.end method

.method public updateVoiceState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mBgSoundEnable:Z

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->setSourceAudioEnable(Ljava/lang/Boolean;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVoiceClicked:Z

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/AudioFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/AudioFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/AudioFragment$2;-><init>(Lcom/miui/gallery/video/editor/ui/AudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 117
    return-void
.end method
