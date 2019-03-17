.class public abstract Lcom/miui/gallery/video/editor/ui/MenuFragment;
.super Landroid/app/Fragment;
.source "MenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IMenuFragment;


# static fields
.field private static sAnimAppearDelay:I

.field private static sAnimAppearDuration:I

.field private static sAnimDisappearDuration:I

.field private static sAnimOffset:I


# instance fields
.field protected mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

.field protected mContext:Landroid/content/Context;

.field protected mIDownloadListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;

.field protected mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

.field protected mResourceDownloadManager:Lcom/miui/gallery/video/editor/manager/DownloadManager;

.field private mSamplerManager:Lcom/miui/gallery/video/editor/manager/SamplerManager;

.field private mUnzipTaskManager:Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;

.field protected mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 133
    new-instance v0, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment$2;-><init>(Lcom/miui/gallery/video/editor/ui/MenuFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mIDownloadListener:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/ui/MenuFragment;)Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/MenuFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mUnzipTaskManager:Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/video/editor/ui/MenuFragment;Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;)Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/MenuFragment;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mUnzipTaskManager:Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/ui/MenuFragment;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/MenuFragment;
    .param p1, "x1"    # Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->showNetworkConfirmDialog(Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    return-void
.end method

.method private initAnimatorData()V
    .locals 2

    .prologue
    .line 67
    sget v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->sAnimOffset:I

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0387

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->sAnimOffset:I

    .line 70
    :cond_0
    sget v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->sAnimAppearDuration:I

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->sAnimAppearDuration:I

    .line 73
    :cond_1
    sget v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->sAnimDisappearDuration:I

    if-nez v0, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->sAnimDisappearDuration:I

    .line 76
    :cond_2
    sget v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->sAnimAppearDelay:I

    if-nez v0, :cond_3

    .line 77
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->sAnimAppearDelay:I

    .line 79
    :cond_3
    return-void
.end method

.method private mapIdToStatCate(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_0

    .line 255
    :pswitch_0
    const-string/jumbo v0, "video_editor_unknown"

    :goto_0
    return-object v0

    .line 245
    :pswitch_1
    const-string/jumbo v0, "video_editor_smart_effect"

    goto :goto_0

    .line 247
    :pswitch_2
    const-string/jumbo v0, "video_editor_audio"

    goto :goto_0

    .line 249
    :pswitch_3
    const-string/jumbo v0, "video_editor_text"

    goto :goto_0

    .line 251
    :pswitch_4
    const-string/jumbo v0, "video_editor_filter"

    goto :goto_0

    .line 253
    :pswitch_5
    const-string/jumbo v0, "video_editor_clip"

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x7f120030
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private showNetworkConfirmDialog(Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V
    .locals 6
    .param p1, "confirmDialogInterface"    # Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;

    .prologue
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c052a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0529

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0522

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0527

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 233
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    .line 240
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mUnzipTaskManager:Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mUnzipTaskManager:Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;->setListener(Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IUnzipFileListener;)V

    .line 262
    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mUnzipTaskManager:Lcom/miui/gallery/video/editor/manager/UnzipTaskManager;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mResourceDownloadManager:Lcom/miui/gallery/video/editor/manager/DownloadManager;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mResourceDownloadManager:Lcom/miui/gallery/video/editor/manager/DownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/manager/DownloadManager;->cancelAll()V

    .line 266
    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mResourceDownloadManager:Lcom/miui/gallery/video/editor/manager/DownloadManager;

    .line 268
    :cond_1
    return-void
.end method

.method public loadResourceData()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public notifyDateSetChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 337
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->initAnimatorData()V

    .line 63
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/SamplerManager;->create()Lcom/miui/gallery/video/editor/manager/SamplerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mSamplerManager:Lcom/miui/gallery/video/editor/manager/SamplerManager;

    .line 64
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 9
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 89
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 90
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_1

    .line 91
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    sget v5, Lcom/miui/gallery/video/editor/ui/MenuFragment;->sAnimOffset:I

    int-to-float v5, v5

    aput v5, v4, v7

    const/4 v5, 0x0

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 92
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 93
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 94
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_0
    sget v3, Lcom/miui/gallery/video/editor/ui/MenuFragment;->sAnimAppearDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 99
    sget v3, Lcom/miui/gallery/video/editor/ui/MenuFragment;->sAnimAppearDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 100
    new-instance v3, Lcom/miui/gallery/video/editor/ui/MenuFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment$1;-><init>(Lcom/miui/gallery/video/editor/ui/MenuFragment;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    .end local v2    # "y":Landroid/animation/PropertyValuesHolder;
    :goto_0
    return-object v1

    .line 121
    .end local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    :cond_1
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 122
    .restart local v0    # "alpha":Landroid/animation/PropertyValuesHolder;
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 123
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v7

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 124
    sget v3, Lcom/miui/gallery/video/editor/ui/MenuFragment;->sAnimDisappearDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 92
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 121
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    .line 333
    return-void
.end method

.method public onDownlaodCompleted(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
    .locals 0
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
    .param p2, "position"    # I

    .prologue
    .line 338
    return-void
.end method

.method protected onExitMode()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;->showNavEditMenu()V

    .line 274
    :cond_0
    return-void
.end method

.method public onPlayButtonClicked()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public onVideoLoadCompleted()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->updatePalyBtnView()V

    .line 85
    return-void
.end method

.method protected recordEventWithApply()V
    .locals 7

    .prologue
    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 283
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getCurrentEffect()Ljava/util/List;

    move-result-object v2

    .line 284
    .local v2, "effects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    :cond_0
    const-string v3, "effect"

    const-string v4, "none"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getEffectId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mapIdToStatCate(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "save_detail"

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 287
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mSamplerManager:Lcom/miui/gallery/video/editor/manager/SamplerManager;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getEffectId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mapIdToStatCate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "save_detail"

    invoke-virtual {v3, v4, v5, v0}, Lcom/miui/gallery/video/editor/manager/SamplerManager;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getEffectId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mapIdToStatCate(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "save"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void

    .line 291
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 292
    .local v1, "effect":Ljava/lang/String;
    const-string v4, "effect"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getEffectId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mapIdToStatCate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "save_detail"

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 294
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 295
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mSamplerManager:Lcom/miui/gallery/video/editor/manager/SamplerManager;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getEffectId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mapIdToStatCate(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "save_detail"

    invoke-virtual {v4, v5, v6, v0}, Lcom/miui/gallery/video/editor/manager/SamplerManager;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected recordEventWithCancel()V
    .locals 7

    .prologue
    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getCurrentEffect()Ljava/util/List;

    move-result-object v2

    .line 305
    .local v2, "effects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    :cond_0
    const-string v3, "effect"

    const-string v4, "none"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getEffectId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mapIdToStatCate(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "save_detail"

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 308
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mSamplerManager:Lcom/miui/gallery/video/editor/manager/SamplerManager;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getEffectId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mapIdToStatCate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "save_detail"

    invoke-virtual {v3, v4, v5, v0}, Lcom/miui/gallery/video/editor/manager/SamplerManager;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getEffectId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mapIdToStatCate(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "save"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void

    .line 312
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 313
    .local v1, "effect":Ljava/lang/String;
    const-string v4, "effect"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getEffectId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mapIdToStatCate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "save_detail"

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 315
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 316
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mSamplerManager:Lcom/miui/gallery/video/editor/manager/SamplerManager;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getEffectId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mapIdToStatCate(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "save_detail"

    invoke-virtual {v4, v5, v6, v0}, Lcom/miui/gallery/video/editor/manager/SamplerManager;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected recordEventWithEffectChanged()V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->getEffectId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mapIdToStatCate(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setCallBack(Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;)V
    .locals 1
    .param p1, "callBack"    # Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;->getVideoEditor()Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    .line 279
    return-void
.end method

.method public updateLastFragment(Lcom/miui/gallery/video/editor/ui/MenuFragment;)V
    .locals 0
    .param p1, "lastFragment"    # Lcom/miui/gallery/video/editor/ui/MenuFragment;

    .prologue
    .line 339
    return-void
.end method

.method public updatePalyBtnView()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/MenuFragment;->mCallback:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;->updatePalyBtnView()V

    .line 327
    :cond_0
    return-void
.end method

.method public updateVoiceState(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 341
    return-void
.end method
