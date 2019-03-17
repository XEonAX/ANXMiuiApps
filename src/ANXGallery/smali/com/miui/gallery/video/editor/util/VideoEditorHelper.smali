.class public Lcom/miui/gallery/video/editor/util/VideoEditorHelper;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCurrentEditType:I

.field private mCurrentMenuFragment:Lcom/miui/gallery/video/editor/ui/MenuFragment;

.field private mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

.field private mEffectContainerId:I

.field private mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mLastTag:Ljava/lang/String;

.field private mNavgatorDataMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/gallery/video/editor/model/MenuFragmentData;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigatorDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/MenuFragmentData;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

.field private mVideoSaveManager:Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;

.field private mVideoSaving:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavigatorDataList:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .line 76
    invoke-virtual {p2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mActivity:Landroid/app/Activity;

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragmentManager:Landroid/app/FragmentManager;

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getVideoEditor()Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->getDisplayWrapper()Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getEffectMenuContainerId()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mEffectContainerId:I

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavgatorDataMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavgatorDataMap:Ljava/util/LinkedHashMap;

    .line 83
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->initNavgatorData()V

    .line 85
    :cond_0
    new-instance v0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;-><init>(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoSaveManager:Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;

    .line 86
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->initListener()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Lcom/miui/gallery/video/editor/ui/MenuFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentMenuFragment:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoSaveManager:Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->isNavEditMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->onMenuFragCancel()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/util/VideoEditorHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->onVideoSaved(Ljava/lang/String;)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    new-instance v1, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$1;-><init>(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setAudioVoiceListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method private initNavgatorData()V
    .locals 9

    .prologue
    const/16 v8, 0x13

    const/16 v7, 0x12

    const/16 v6, 0x11

    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavgatorDataMap:Ljava/util/LinkedHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    const-class v3, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    invoke-direct {v2, v3, v4, v4, v5}, Lcom/miui/gallery/video/editor/model/MenuFragmentData;-><init>(Ljava/lang/Class;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavgatorDataMap:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    const-class v3, Lcom/miui/gallery/video/editor/ui/SmartEffectFragment;

    const v4, 0x7f020339

    const v5, 0x7f0c0544

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/gallery/video/editor/model/MenuFragmentData;-><init>(Ljava/lang/Class;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavgatorDataMap:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    const-class v3, Lcom/miui/gallery/video/editor/ui/TrimFragment;

    const v4, 0x7f02033e

    const v5, 0x7f0c0572

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/miui/gallery/video/editor/model/MenuFragmentData;-><init>(Ljava/lang/Class;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavgatorDataMap:Ljava/util/LinkedHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    const-class v3, Lcom/miui/gallery/video/editor/fragment/FilterAdjustFragment;

    const v4, 0x7f020331

    const v5, 0x7f0c052f

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/miui/gallery/video/editor/model/MenuFragmentData;-><init>(Ljava/lang/Class;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavgatorDataMap:Ljava/util/LinkedHashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    const-class v3, Lcom/miui/gallery/video/editor/ui/AudioFragment;

    const v4, 0x7f020333

    const v5, 0x7f0c0516

    const/16 v6, 0x14

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/gallery/video/editor/model/MenuFragmentData;-><init>(Ljava/lang/Class;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavgatorDataMap:Ljava/util/LinkedHashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    const-class v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    const v4, 0x7f02033d

    const v5, 0x7f0c0577

    const/16 v6, 0x15

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/gallery/video/editor/model/MenuFragmentData;-><init>(Ljava/lang/Class;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavgatorDataMap:Ljava/util/LinkedHashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    const/4 v3, 0x0

    const v4, 0x7f020332

    const v5, 0x7f0c0549

    const/16 v6, 0x16

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/gallery/video/editor/model/MenuFragmentData;-><init>(Ljava/lang/Class;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private isAudioEditMenu()Z
    .locals 2

    .prologue
    .line 195
    const v0, 0x7f120030

    iget v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentEditType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNavEditMenu()Z
    .locals 2

    .prologue
    .line 199
    const v0, 0x7f120034

    iget v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentEditType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTrimEditMenu()Z
    .locals 2

    .prologue
    .line 191
    const v0, 0x7f120036

    iget v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentEditType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMenuFragmentTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onMenuFragCancel()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentMenuFragment:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentMenuFragment:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->doCancel()Z

    .line 176
    :cond_0
    return-void
.end method

.method private onVideoSaved(Ljava/lang/String;)V
    .locals 3
    .param p1, "outputPath"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v0, "result":Landroid/content/Intent;
    invoke-static {p1}, Lcom/miui/gallery/provider/GalleryOpenProvider;->translateToContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 332
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->setVideoSaving(Z)V

    .line 333
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->exit()V

    .line 334
    return-void
.end method


# virtual methods
.method public changeEditMenu(Lcom/miui/gallery/video/editor/model/MenuFragmentData;)V
    .locals 9
    .param p1, "fragmentData"    # Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->isModuleMore()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 131
    iget-object v7, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v8, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/miui/gallery/video/editor/VideoEditor;->toThirdEditor(Landroid/content/Context;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v8, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mLastTag:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->makeMenuFragmentTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/video/editor/ui/MenuFragment;

    .line 135
    .local v2, "last":Lcom/miui/gallery/video/editor/ui/MenuFragment;
    if-nez v2, :cond_2

    .line 136
    iget-object v7, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragmentManager:Landroid/app/FragmentManager;

    iget v8, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mEffectContainerId:I

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    .end local v2    # "last":Lcom/miui/gallery/video/editor/ui/MenuFragment;
    check-cast v2, Lcom/miui/gallery/video/editor/ui/MenuFragment;

    .line 138
    .restart local v2    # "last":Lcom/miui/gallery/video/editor/ui/MenuFragment;
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-direct {p0, v5}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->makeMenuFragmentTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/video/editor/ui/MenuFragment;

    .line 139
    .local v3, "menu":Lcom/miui/gallery/video/editor/ui/MenuFragment;
    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 140
    const/4 v2, 0x0

    .line 142
    :cond_3
    iget-object v7, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 143
    .local v6, "transaction":Landroid/app/FragmentTransaction;
    if-eqz v3, :cond_6

    .line 144
    invoke-virtual {v6, v3}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 145
    iput-object v3, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentMenuFragment:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    .line 159
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentMenuFragment:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    invoke-virtual {v7, v2}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->updateLastFragment(Lcom/miui/gallery/video/editor/ui/MenuFragment;)V

    .line 160
    if-eqz v2, :cond_5

    .line 161
    invoke-virtual {v6, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 163
    :cond_5
    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 164
    iput-object v5, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mLastTag:Ljava/lang/String;

    .line 165
    iget-object v7, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentMenuFragment:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    invoke-virtual {v7}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getEffectId()I

    move-result v7

    iput v7, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentEditType:I

    goto :goto_0

    .line 147
    :cond_6
    invoke-virtual {p1}, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->getMenu()Ljava/lang/Class;

    move-result-object v4

    .line 148
    .local v4, "menuClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/video/editor/ui/MenuFragment;>;"
    if-eqz v4, :cond_4

    .line 150
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;

    move-object v3, v0

    .line 151
    iget v7, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mEffectContainerId:I

    invoke-direct {p0, v5}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->makeMenuFragmentTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v3, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 152
    iput-object v3, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentMenuFragment:Lcom/miui/gallery/video/editor/ui/MenuFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    const-string v7, "VideoEditorHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getNavigatorData(I)Ljava/util/List;
    .locals 5
    .param p1, "videoFrames"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/MenuFragmentData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavigatorDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavgatorDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    .line 113
    .local v0, "data":Lcom/miui/gallery/video/editor/model/MenuFragmentData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->isNavModule()Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x78

    if-gt p1, v3, :cond_2

    const/4 v1, 0x1

    .line 117
    .local v1, "smartVideoAvailable":Z
    :goto_1
    iget v3, v0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->module:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_0

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavigatorDataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v1    # "smartVideoAvailable":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 122
    .end local v0    # "data":Lcom/miui/gallery/video/editor/model/MenuFragmentData;
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavigatorDataList:Ljava/util/List;

    return-object v2
.end method

.method public isWaterMarkEditMenu()Z
    .locals 2

    .prologue
    .line 203
    const v0, 0x7f120038

    iget v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentEditType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 245
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 285
    :goto_0
    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->isInit()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 249
    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->hasEdit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->isNavEditMenu()Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->onMenuFragCancel()V

    move v0, v6

    .line 254
    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    const v2, 0x7f0c0513

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    const v3, 0x7f0c0512

    .line 257
    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    const v4, 0x7f0c0521

    .line 258
    invoke-virtual {v3, v4}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    const v5, 0x7f0c054b

    .line 259
    invoke-virtual {v4, v5}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$3;

    invoke-direct {v5, p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$3;-><init>(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)V

    .line 256
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    :goto_1
    move v0, v6

    .line 285
    goto :goto_0

    .line 276
    :cond_3
    const-string/jumbo v0, "video_editor"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->isNavEditMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->exit()V

    goto :goto_1

    .line 279
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->isTrimEditMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->onMenuFragCancel()V

    goto :goto_1

    .line 282
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->showNavEditMenu()V

    goto :goto_1
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->onBackPressed()Z

    .line 212
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoSaveManager:Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoSaveManager:Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;->onDestroy()V

    .line 340
    :cond_0
    return-void
.end method

.method public onPlayButtonClicked()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentMenuFragment:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentMenuFragment:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onPlayButtonClicked()V

    .line 188
    :cond_0
    return-void
.end method

.method public onSave()V
    .locals 5

    .prologue
    .line 215
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoSaving:Z

    if-eqz v1, :cond_1

    .line 216
    :cond_0
    const-string v1, "VideoEditorHelper"

    const-string/jumbo v2, "the video is saving:  %s "

    iget-boolean v3, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoSaving:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string v1, "VideoEditorHelper"

    const-string/jumbo v2, "start save video\uff01"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 221
    .local v0, "data":Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->setVideoSaving(Z)V

    .line 222
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/gallery/video/editor/util/FileHelper;->generateOutputFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$2;-><init>(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)V

    iget-object v4, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .line 241
    invoke-virtual {v4}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 222
    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog;->startEncode(Lcom/miui/gallery/video/editor/VideoEditor;Ljava/lang/String;Lcom/miui/gallery/video/editor/ui/EncodeProgressDialog$OnCompletedListener;Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public onVideoLoadCompleted()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentMenuFragment:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mCurrentMenuFragment:Lcom/miui/gallery/video/editor/ui/MenuFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onVideoLoadCompleted()V

    .line 182
    :cond_0
    return-void
.end method

.method public setVideoSaving(Z)V
    .locals 0
    .param p1, "videoSaving"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoSaving:Z

    .line 290
    return-void
.end method

.method public showNavEditMenu()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mNavgatorDataMap:Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->changeEditMenu(Lcom/miui/gallery/video/editor/model/MenuFragmentData;)V

    .line 208
    return-void
.end method

.method public updateAudioVoiceView(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 320
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->isAudioEditMenu()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->showAudioVoice(Z)V

    .line 322
    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setAudioVoiceSelected(Z)V

    .line 326
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 322
    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->showAudioVoice(Z)V

    goto :goto_1
.end method

.method public updateAutoTrimView()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 312
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->isTrimEditMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/VideoEditor;->isSupportAutoTrim()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->showAutoTrimBtn(Z)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->showAutoTrimBtn(Z)V

    goto :goto_0
.end method

.method public updatePlayView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    iget-boolean v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoSaving:Z

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->showPlayBtn(Z)V

    .line 309
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->isWaterMarkEditMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->showPlayBtn(Z)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/VideoEditor;->getState()I

    move-result v0

    .line 302
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_3

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->showPlayBtn(Z)V

    goto :goto_0

    .line 304
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->isTrimEditMenu()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    .line 305
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->showPlayBtn(Z)V

    goto :goto_0

    .line 307
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->showPlayBtn(Z)V

    goto :goto_0
.end method
