.class public Lcom/miui/gallery/ui/PhotoPageVideoItem;
.super Lcom/miui/gallery/ui/PhotoPageItem;
.source "PhotoPageVideoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;,
        Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoItemRunnable;,
        Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;
    }
.end annotation


# instance fields
.field private mAntiDoubleClickListener:Lcom/miui/gallery/widget/AntiDoubleClickListener;

.field private mVideoIcon:Landroid/view/View;

.field private mVideoItemRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 328
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageVideoItem$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem$2;-><init>(Lcom/miui/gallery/ui/PhotoPageVideoItem;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mAntiDoubleClickListener:Lcom/miui/gallery/widget/AntiDoubleClickListener;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/PhotoPageVideoItem;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageVideoItem;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mVideoIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PhotoPageVideoItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageVideoItem;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->doSetVideoItemVisible(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PhotoPageVideoItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageVideoItem;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->setVideoItemVisible(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PhotoPageVideoItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageVideoItem;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->canPlay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/PhotoPageVideoItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageVideoItem;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->playVideo()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/PhotoPageVideoItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageVideoItem;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->setVideoItemVisibleDelay(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/PhotoPageVideoItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageVideoItem;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->handNoFileExist()V

    return-void
.end method

.method private canPlay()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->isPagerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelVideoItemRunnable()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mVideoItemRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mVideoItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    :cond_0
    return-void
.end method

.method private doSetVideoItemVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 178
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->needShowPlayIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mVideoIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mVideoIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private handNoFileExist()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->downloadOrigin()V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0579

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private needShowPlayIcon()Z
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->isAnimExiting()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDownloadManager:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    check-cast v0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->isProgressVisible()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    .line 157
    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playVideo()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-static {}, Lcom/miui/gallery/projection/ConnectController;->getInstance()Lcom/miui/gallery/projection/ConnectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/projection/ConnectController;->getCurConnectedDevice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/activity/BaseActivity;

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-static {v4, v5}, Lcom/miui/gallery/ui/ProjectVideoFragment;->showProjectVideoFragment(Lcom/miui/gallery/activity/BaseActivity;Lcom/miui/gallery/model/BaseDataItem;)V

    .line 153
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v3, 0x0

    .line 136
    .local v3, "showGalleryWhenLocked":Z
    const/4 v2, 0x0

    .line 137
    .local v2, "requestOrientation":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v4}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_3

    const-string v4, "StartActivityWhenLocked"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 140
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v4}, Lcom/miui/gallery/activity/BaseActivity;->getRequestedOrientation()I

    move-result v2

    .line 142
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    if-eqz v4, :cond_2

    .line 143
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mPhotoPageInteractionListener:Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;

    invoke-interface {v4, v5}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;->setActionBarVisible(Z)V

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v6}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v6}, Lcom/miui/gallery/model/BaseDataItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v3, v2}, Lcom/miui/gallery/util/IntentUtil;->playVideo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZI)V

    .line 146
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 147
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "path"

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v6}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v4, "duration"

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v5}, Lcom/miui/gallery/model/BaseDataItem;->getDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v4, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v4, "external_intent"

    const-string v5, "play_video"

    invoke-static {v4, v5, v1}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "i":Landroid/content/Intent;
    :cond_3
    move v3, v5

    .line 139
    goto :goto_1
.end method

.method private setVideoItemVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->cancelVideoItemRunnable()V

    .line 168
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->doSetVideoItemVisible(Z)V

    .line 169
    return-void
.end method

.method private setVideoItemVisibleDelay(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->cancelVideoItemRunnable()V

    .line 173
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoItemRunnable;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoItemRunnable;-><init>(Lcom/miui/gallery/ui/PhotoPageVideoItem;Z)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mVideoItemRunnable:Ljava/lang/Runnable;

    .line 174
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mVideoItemRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    return-void
.end method


# virtual methods
.method public animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 2
    .param p1, "enterInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    .prologue
    .line 207
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageVideoItem$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/gallery/ui/PhotoPageVideoItem$1;-><init>(Lcom/miui/gallery/ui/PhotoPageVideoItem;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 214
    .local v0, "tempListener":Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->setVideoItemVisible(Z)V

    .line 215
    invoke-super {p0, p1, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 216
    return-void
.end method

.method public animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 1
    .param p1, "exitInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->setVideoItemVisible(Z)V

    .line 221
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 222
    return-void
.end method

.method protected createCheckManager()Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoCheckManager;-><init>(Lcom/miui/gallery/ui/PhotoPageVideoItem;)V

    return-object v0
.end method

.method protected createDownloadManager()Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;-><init>(Lcom/miui/gallery/ui/PhotoPageVideoItem;Lcom/miui/gallery/ui/PhotoPageVideoItem$1;)V

    return-object v0
.end method

.method protected doOnMatrixChanged(Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 226
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnMatrixChanged(Landroid/graphics/RectF;)V

    .line 227
    const/4 v1, 0x2

    new-array v0, v1, [F

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v0, v4

    .line 228
    .local v0, "centerPoint":[F
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoView;->getSuppMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 229
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mVideoIcon:Landroid/view/View;

    aget v2, v0, v2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 230
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mVideoIcon:Landroid/view/View;

    aget v2, v0, v4

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 231
    return-void
.end method

.method protected doOnSelected(ZZZ)V
    .locals 0
    .param p1, "resumed"    # Z
    .param p2, "enter"    # Z
    .param p3, "init"    # Z

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnSelected(ZZZ)V

    .line 124
    return-void
.end method

.method protected doOnUnSelected(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnUnSelected(Z)V

    .line 129
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->cancelVideoItemRunnable()V

    .line 202
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onDetachedFromWindow()V

    .line 203
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onFinishInflate()V

    .line 57
    const v0, 0x7f12024a

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mVideoIcon:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mVideoIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mAntiDoubleClickListener:Lcom/miui/gallery/widget/AntiDoubleClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method protected onImageLoadFinish(Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 1
    .param p1, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->onImageLoadFinish(Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->setVideoItemVisible(Z)V

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSlipping(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->onSlipping(F)V

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mVideoIcon:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 52
    return-void
.end method
