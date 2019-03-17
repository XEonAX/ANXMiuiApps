.class public Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
.super Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;
.source "PhotoPageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DownloadManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;
    }
.end annotation


# instance fields
.field private isUserDownload:Z

.field private mAdjustX:F

.field private mAdjustY:F

.field private mAnimator:Landroid/animation/Animator;

.field private mDownloadError:Landroid/view/View;

.field private mDownloadProgress:Landroid/widget/ProgressBar;

.field private mDownloadRoot:Landroid/view/View;

.field private mDownloadingType:Lcom/miui/gallery/sdk/download/DownloadType;

.field private mErrorDisplayer:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;

.field private mExternalListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

.field private mHasShowError:Z

.field private mHasShowProgress:Z

.field private mLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

.field private mProgressListener:Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageItem;


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    .line 915
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .line 958
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$3;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mProgressListener:Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    .line 1382
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 843
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onLoaded(Lcom/miui/gallery/sdk/download/DownloadType;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 843
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onDownloaded(Lcom/miui/gallery/sdk/download/DownloadType;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 843
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onCancel(Lcom/miui/gallery/sdk/download/DownloadType;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 843
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onDownloading(Lcom/miui/gallery/sdk/download/DownloadType;II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadingType:Lcom/miui/gallery/sdk/download/DownloadType;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadingType:Lcom/miui/gallery/sdk/download/DownloadType;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 843
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->needRefreshUI(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .prologue
    .line 843
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->processThumbnail()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .param p1, "x1"    # Z

    .prologue
    .line 843
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->hideErrorView(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .param p1, "x1"    # Z

    .prologue
    .line 843
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->showProgress(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mProgressListener:Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorTip;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "x2"    # Lcom/miui/gallery/error/core/ErrorTip;

    .prologue
    .line 843
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->statClickError(Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorTip;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorTip;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "x2"    # Lcom/miui/gallery/error/core/ErrorTip;

    .prologue
    .line 843
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->statActionError(Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorTip;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mErrorDisplayer:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 843
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onLoadStart(Lcom/miui/gallery/sdk/download/DownloadType;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mExternalListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .param p1, "x1"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "x2"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 843
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onLoadFail(Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorCode;)V

    return-void
.end method

.method private cancelAnim()V
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mAnimator:Landroid/animation/Animator;

    .line 1183
    :cond_0
    return-void
.end method

.method private doAdjustLocation(ZLandroid/graphics/RectF;Z)V
    .locals 13
    .param p1, "isActionBarVisible"    # Z
    .param p2, "imageRect"    # Landroid/graphics/RectF;
    .param p3, "anim"    # Z

    .prologue
    .line 1186
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->cancelAnim()V

    .line 1187
    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/PhotoPageItem;->getMenuBarHeight()I

    move-result v8

    int-to-float v4, v8

    .line 1188
    .local v4, "menuBarEdge":F
    :goto_0
    if-eqz p2, :cond_3

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    .line 1189
    .local v3, "imageEdgeY":F
    :goto_1
    if-eqz p2, :cond_4

    iget v2, p2, Landroid/graphics/RectF;->right:F

    .line 1190
    .local v2, "imageEdgeX":F
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getMaxTranslationY()F

    move-result v9

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageItem;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v3

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getVerticalMargin()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float v7, v8, v9

    .line 1191
    .local v7, "tarY":F
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getMaxTranslationX()F

    move-result v9

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageItem;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v2

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getHorizontalMargin()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float v6, v8, v9

    .line 1192
    .local v6, "tarX":F
    iget v8, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mAdjustY:F

    cmpl-float v8, v8, v7

    if-nez v8, :cond_0

    iget v8, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mAdjustX:F

    cmpl-float v8, v8, v6

    if-eqz v8, :cond_1

    .line 1193
    :cond_0
    iput v6, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mAdjustX:F

    .line 1194
    iput v7, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mAdjustY:F

    .line 1195
    if-eqz p3, :cond_5

    .line 1196
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1197
    .local v5, "set":Landroid/animation/AnimatorSet;
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadRoot:Landroid/view/View;

    const-string v9, "TranslationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadRoot:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTranslationY()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1198
    .local v1, "animatorY":Landroid/animation/Animator;
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadRoot:Landroid/view/View;

    const-string v9, "TranslationX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadRoot:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v6, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1199
    .local v0, "animatorX":Landroid/animation/Animator;
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1200
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getAdjustAnimDuration(Z)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1201
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getAdjustAnimInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1202
    iput-object v5, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mAnimator:Landroid/animation/Animator;

    .line 1203
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    .line 1209
    .end local v0    # "animatorX":Landroid/animation/Animator;
    .end local v1    # "animatorY":Landroid/animation/Animator;
    .end local v5    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    :goto_3
    return-void

    .line 1187
    .end local v2    # "imageEdgeX":F
    .end local v3    # "imageEdgeY":F
    .end local v4    # "menuBarEdge":F
    .end local v6    # "tarX":F
    .end local v7    # "tarY":F
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1188
    .restart local v4    # "menuBarEdge":F
    :cond_3
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/PhotoPageItem;->getHeight()I

    move-result v8

    int-to-float v3, v8

    goto/16 :goto_1

    .line 1189
    .restart local v3    # "imageEdgeY":F
    :cond_4
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/PhotoPageItem;->getWidth()I

    move-result v8

    int-to-float v2, v8

    goto/16 :goto_2

    .line 1205
    .restart local v2    # "imageEdgeX":F
    .restart local v6    # "tarX":F
    .restart local v7    # "tarY":F
    :cond_5
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadRoot:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 1206
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadRoot:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3
.end method

.method private hideErrorView(Z)Z
    .locals 4
    .param p1, "anim"    # Z

    .prologue
    const/16 v3, 0x8

    .line 1153
    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mHasShowError:Z

    if-eqz v2, :cond_1

    .line 1154
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getErrorView()Landroid/view/View;

    move-result-object v1

    .line 1155
    .local v1, "error":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 1156
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1157
    if-eqz p1, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->generateHideAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 1159
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$5;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$5;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1168
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1172
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :goto_0
    const/4 v2, 0x1

    .line 1175
    .end local v1    # "error":Landroid/view/View;
    :goto_1
    return v2

    .line 1170
    .restart local v1    # "error":Landroid/view/View;
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1175
    .end local v1    # "error":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hideProgress(Z)Z
    .locals 5
    .param p1, "anim"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 1097
    iget-boolean v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mHasShowProgress:Z

    if-eqz v3, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    .line 1099
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1100
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 1101
    if-eqz p1, :cond_1

    .line 1102
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->generateHideAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 1103
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$4;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$4;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1113
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1118
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :goto_0
    const/4 v2, 0x1

    .line 1121
    .end local v1    # "progressBar":Landroid/widget/ProgressBar;
    :cond_0
    return v2

    .line 1115
    .restart local v1    # "progressBar":Landroid/widget/ProgressBar;
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1116
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnProgressVisibilityChanged(Z)V

    goto :goto_0
.end method

.method private initDownloadLayout()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 858
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400f6

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadRoot:Landroid/view/View;

    .line 859
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 860
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 861
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 862
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadRoot:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    return-void
.end method

.method private initErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 895
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadRoot:Landroid/view/View;

    if-nez v1, :cond_0

    .line 896
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->initDownloadLayout()V

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadRoot:Landroid/view/View;

    const v2, 0x7f12023d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 899
    .local v0, "error":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 900
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    return-object v0
.end method

.method private initProgressBar()Landroid/widget/ProgressBar;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 877
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadRoot:Landroid/view/View;

    if-nez v1, :cond_0

    .line 878
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->initDownloadLayout()V

    .line 880
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadRoot:Landroid/view/View;

    const v2, 0x7f12023c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    .line 881
    .local v0, "progressBar":Lcom/miui/gallery/widget/CircleStrokeProgressBar;
    new-array v1, v5, [I

    const v2, 0x7f020212

    aput v2, v1, v4

    new-array v2, v5, [I

    const v3, 0x7f020214

    aput v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setDrawablesForLevels([I[I[I)V

    .line 882
    new-array v1, v5, [I

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0183

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setMiddleStrokeColors([IF)V

    .line 883
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setVisibility(I)V

    .line 884
    return-object v0
.end method

.method private needRefreshUI(Lcom/miui/gallery/sdk/download/DownloadType;)Z
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->isPagerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadingType:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCancel(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->needRefreshUI(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->hideProgress(Z)Z

    .line 1009
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->isUserDownload:Z

    .line 1010
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnCancel(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 1011
    return-void
.end method

.method private onDownloaded(Lcom/miui/gallery/sdk/download/DownloadType;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 985
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    .line 986
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 987
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/model/BaseDataItem;->setFilePath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    .line 993
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->needRefreshUI(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 994
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->hideProgress(Z)Z

    .line 996
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnDownloaded(Lcom/miui/gallery/sdk/download/DownloadType;Ljava/lang/String;)V

    .line 997
    return-void

    .line 989
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/model/BaseDataItem;->setThumbPath(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    goto :goto_0
.end method

.method private onDownloading(Lcom/miui/gallery/sdk/download/DownloadType;II)V
    .locals 4
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "current"    # I
    .param p3, "total"    # I

    .prologue
    .line 1014
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->needRefreshUI(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    int-to-long v0, p2

    int-to-long v2, p3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->setProgress(JJ)V

    .line 1017
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnDownloading(Lcom/miui/gallery/sdk/download/DownloadType;II)V

    .line 1018
    return-void
.end method

.method private onLoadFail(Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 971
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->needRefreshUI(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->filterError(Lcom/miui/gallery/error/core/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mErrorDisplayer:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;

    if-nez v0, :cond_0

    .line 973
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->createErrorDisplayer()Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mErrorDisplayer:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mErrorDisplayer:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;->handleError(Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 976
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->showErrorView(Z)Z

    .line 977
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->statShowError(Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 979
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->isUserDownload:Z

    .line 980
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnLoadFail(Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 981
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->onImageLoadFinish(Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 982
    return-void
.end method

.method private onLoadStart(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 967
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnLoadStart(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 968
    return-void
.end method

.method private onLoaded(Lcom/miui/gallery/sdk/download/DownloadType;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->isUserDownload:Z

    .line 1001
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnLoaded(Lcom/miui/gallery/sdk/download/DownloadType;Landroid/graphics/Bitmap;)V

    .line 1002
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->NO_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->onImageLoadFinish(Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 1003
    return-void
.end method

.method private processThumbnail()V
    .locals 4

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getThumnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1313
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$7;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V

    .line 1332
    .local v0, "callBack":Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getStatusAsync(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;)V

    .line 1334
    .end local v0    # "callBack":Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;
    :cond_0
    return-void
.end method

.method private setProgress(JJ)V
    .locals 7
    .param p1, "current"    # J
    .param p3, "total"    # J

    .prologue
    .line 1062
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    .line 1063
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v1, :cond_0

    .line 1064
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-lez v3, :cond_0

    cmp-long v3, p1, p3

    if-gtz v3, :cond_0

    .line 1065
    const/high16 v3, 0x3f800000    # 1.0f

    long-to-float v4, p1

    mul-float/2addr v3, v4

    long-to-float v4, p3

    div-float v2, v3, v4

    .line 1066
    .local v2, "ratio":F
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 1067
    .local v0, "progress":I
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1070
    .end local v0    # "progress":I
    .end local v2    # "ratio":F
    :cond_0
    return-void
.end method

.method private showErrorView(Z)Z
    .locals 6
    .param p1, "anim"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1129
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->needShowDownloadView()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1130
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mHasShowError:Z

    .line 1131
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 1132
    .local v0, "error":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1133
    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->hideProgress(Z)Z

    .line 1134
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1135
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageItem;->isActionBarVisible()Z

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v5}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->adjustErrorViewLocation(ZLandroid/graphics/RectF;Z)V

    .line 1137
    if-eqz p1, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->generateShowAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1140
    :cond_0
    iget-boolean v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->isUserDownload:Z

    if-eqz v3, :cond_1

    .line 1141
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getErrorTip()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1142
    .local v1, "tip":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1143
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1149
    .end local v0    # "error":Landroid/view/View;
    .end local v1    # "tip":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private showProgress(Z)Z
    .locals 8
    .param p1, "anim"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1077
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->needShowDownloadView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1078
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mHasShowProgress:Z

    .line 1079
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1080
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1081
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->setProgress(JJ)V

    .line 1082
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->hideErrorView(Z)Z

    .line 1083
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 1084
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1085
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageItem;->isActionBarVisible()Z

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v4}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->adjustProgressBarLocation(ZLandroid/graphics/RectF;Z)V

    .line 1086
    if-eqz p1, :cond_0

    .line 1087
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->generateShowAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1089
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnProgressVisibilityChanged(Z)V

    .line 1093
    .end local v0    # "progressBar":Landroid/widget/ProgressBar;
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private statActionError(Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorTip;)V
    .locals 6
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "tip"    # Lcom/miui/gallery/error/core/ErrorTip;

    .prologue
    .line 1489
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1490
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "errorTip"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "photo_download_click_error_action_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1492
    .local v0, "event":Ljava/lang/String;
    const-string v2, "photo"

    invoke-static {v2, v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1493
    return-void
.end method

.method private statClickError(Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorTip;)V
    .locals 6
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "tip"    # Lcom/miui/gallery/error/core/ErrorTip;

    .prologue
    .line 1482
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1483
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "errorTip"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "photo_download_click_error_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "event":Ljava/lang/String;
    const-string v2, "photo"

    invoke-static {v2, v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1486
    return-void
.end method

.method private statShowError(Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 6
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 1475
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1476
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "errorcode"

    invoke-virtual {p2}, Lcom/miui/gallery/error/core/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "photo_download_show_error_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, "event":Ljava/lang/String;
    const-string v2, "photo"

    invoke-static {v2, v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1479
    return-void
.end method


# virtual methods
.method protected adjustErrorViewLocation(ZLandroid/graphics/RectF;Z)V
    .locals 2
    .param p1, "isActionBarVisible"    # Z
    .param p2, "imageRect"    # Landroid/graphics/RectF;
    .param p3, "anim"    # Z

    .prologue
    .line 1227
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mHasShowError:Z

    if-nez v1, :cond_1

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1230
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 1231
    .local v0, "errorView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1232
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doAdjustLocation(ZLandroid/graphics/RectF;Z)V

    goto :goto_0
.end method

.method public final adjustLocation(ZLandroid/graphics/RectF;Z)V
    .locals 0
    .param p1, "isActionBarVisible"    # Z
    .param p2, "imageRect"    # Landroid/graphics/RectF;
    .param p3, "anim"    # Z

    .prologue
    .line 1212
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->adjustProgressBarLocation(ZLandroid/graphics/RectF;Z)V

    .line 1213
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->adjustErrorViewLocation(ZLandroid/graphics/RectF;Z)V

    .line 1214
    return-void
.end method

.method protected adjustProgressBarLocation(ZLandroid/graphics/RectF;Z)V
    .locals 2
    .param p1, "isActionBarVisible"    # Z
    .param p2, "imageRect"    # Landroid/graphics/RectF;
    .param p3, "anim"    # Z

    .prologue
    .line 1217
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mHasShowProgress:Z

    if-nez v1, :cond_1

    .line 1224
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1221
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1222
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doAdjustLocation(ZLandroid/graphics/RectF;Z)V

    goto :goto_0
.end method

.method protected changeVisibilityForSpecialScene()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1051
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->needShowDownloadView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->isPagerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->processDownload()V

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->hideProgress(Z)Z

    .line 1057
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->hideErrorView(Z)Z

    goto :goto_0
.end method

.method protected createErrorDisplayer()Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;
    .locals 1

    .prologue
    .line 1379
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V

    return-object v0
.end method

.method protected doOnCancel(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 1033
    return-void
.end method

.method protected doOnDownloaded(Lcom/miui/gallery/sdk/download/DownloadType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1027
    return-void
.end method

.method protected doOnDownloading(Lcom/miui/gallery/sdk/download/DownloadType;II)V
    .locals 0
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "current"    # I
    .param p3, "total"    # I

    .prologue
    .line 1036
    return-void
.end method

.method protected doOnLoadFail(Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 0
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 1024
    return-void
.end method

.method protected doOnLoadStart(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 1021
    return-void
.end method

.method protected doOnLoaded(Lcom/miui/gallery/sdk/download/DownloadType;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1030
    return-void
.end method

.method protected doOnProgressVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1039
    return-void
.end method

.method public downloadOrigin()V
    .locals 8

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-nez v0, :cond_0

    .line 1351
    const-string v0, "PhotoPageItem"

    const-string v1, "data is null while downloading original file"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :goto_0
    return-void

    .line 1354
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->isUserDownload:Z

    .line 1355
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1356
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$8;

    invoke-direct {v5, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$8;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V

    new-instance v6, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$9;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$9;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;)V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 1369
    :cond_1
    sget-object v7, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 1370
    .local v7, "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    invoke-virtual {p0, v7}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->downloadOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)V

    goto :goto_0
.end method

.method public downloadOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 8
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    const/4 v5, 0x0

    .line 1337
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    .line 1338
    invoke-direct {p0, v5}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->hideProgress(Z)Z

    .line 1339
    invoke-direct {p0, v5}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->hideErrorView(Z)Z

    .line 1340
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/uil/CloudImageLoader;->cancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 1341
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadingType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 1342
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->showProgress(Z)Z

    .line 1343
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadingType:Lcom/miui/gallery/sdk/download/DownloadType;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    .line 1344
    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/PhotoPageItem;->getDisplayImageOptions(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v5, v5, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v5}, Lcom/miui/gallery/model/BaseDataItem;->getBigPhotoImageSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mLoadingListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mProgressListener:Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;

    .line 1343
    invoke-virtual/range {v0 .. v7}, Lcom/miui/gallery/util/uil/CloudImageLoader;->displayImage(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;)V

    .line 1347
    :cond_0
    return-void
.end method

.method protected filterError(Lcom/miui/gallery/error/core/ErrorCode;)Z
    .locals 1
    .param p1, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 1046
    const/4 v0, 0x0

    return v0
.end method

.method protected final getCurDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadingType:Lcom/miui/gallery/sdk/download/DownloadType;

    return-object v0
.end method

.method protected getErrorTip()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1125
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadError:Landroid/view/View;

    if-nez v0, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->initErrorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadError:Landroid/view/View;

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadError:Landroid/view/View;

    return-object v0
.end method

.method protected getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadProgress:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 871
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->initProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadProgress:Landroid/widget/ProgressBar;

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected needShowDownloadView()Z
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->isInActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->isRotating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->isDrawableDisplayInside()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelected()V
    .locals 0

    .prologue
    .line 1238
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->onSelected()V

    .line 1239
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->processDownload()V

    .line 1240
    return-void
.end method

.method public onUnSelected()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1244
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->hideProgress(Z)Z

    .line 1245
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->hideErrorView(Z)Z

    .line 1246
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->onUnSelected()V

    .line 1247
    return-void
.end method

.method protected processDownload()V
    .locals 5

    .prologue
    .line 1263
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1270
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isRequesting(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1271
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 1276
    .local v1, "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    :goto_1
    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    if-eq v1, v2, :cond_2

    .line 1277
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isRequesting(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1279
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->downloadOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 1280
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mExternalListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    if-eqz v2, :cond_0

    .line 1281
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mExternalListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-interface {v2, v3, v1, v4}, Lcom/miui/gallery/util/uil/CloudImageLoadingListener;->onLoadingStarted(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;)V

    goto :goto_0

    .line 1273
    .end local v1    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_3
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    .restart local v1    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    goto :goto_1

    .line 1285
    :cond_4
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$6;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$6;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 1306
    .local v0, "callBack":Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v3}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getStatusAsync(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/util/uil/CloudImageLoader$GetStatusCallBack;)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1251
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->onUnSelected()V

    .line 1252
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->release()V

    .line 1253
    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mDownloadingType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 1254
    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mExternalListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .line 1255
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mAdjustX:F

    .line 1256
    iput v1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mAdjustY:F

    .line 1257
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mHasShowProgress:Z

    .line 1258
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mHasShowError:Z

    .line 1259
    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mErrorDisplayer:Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager$DownloadErrorDisplayer;

    .line 1260
    return-void
.end method

.method public setCloudImageLoadingListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->mExternalListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .line 913
    return-void
.end method
