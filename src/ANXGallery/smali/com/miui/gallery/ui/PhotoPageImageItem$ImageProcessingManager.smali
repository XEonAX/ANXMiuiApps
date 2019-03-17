.class Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;
.super Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;
.source "PhotoPageImageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessingManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;
    }
.end annotation


# instance fields
.field private mAdjustX:F

.field private mAdjustY:F

.field private mAnimator:Landroid/animation/Animator;

.field private mDeterminateProgress:Lcom/miui/gallery/widget/CircleStrokeProgressBar;

.field private mHasShowProgress:Z

.field private mIndeterminateProgress:Landroid/widget/ProgressBar;

.field private mLoadingView:Landroid/view/View;

.field private mNextQueryRunnable:Ljava/lang/Runnable;

.field private mProcessingMedia:Lcom/miui/gallery/provider/ProcessingMedia;

.field private mQueryTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    .line 1183
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageImageItem$1;

    .prologue
    .line 946
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    .prologue
    .line 946
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->fetchNext()V

    return-void
.end method

.method static synthetic access$3200(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;Landroid/net/Uri;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # I

    .prologue
    .line 946
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->onProgressPercentageUpdated(Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->isMediaInProcessing()Z

    move-result v0

    return v0
.end method

.method private cancelQueryTask()V
    .locals 2

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mQueryTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mQueryTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->cancel(Z)Z

    .line 1173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mQueryTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;

    .line 1175
    :cond_0
    return-void
.end method

.method private doAdjustLocation(ZLandroid/graphics/RectF;Z)V
    .locals 13
    .param p1, "isActionBarVisible"    # Z
    .param p2, "imageRect"    # Landroid/graphics/RectF;
    .param p3, "anim"    # Z

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->endAnim()V

    .line 1064
    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getActionBarHeight()I

    move-result v8

    int-to-float v0, v8

    .line 1065
    .local v0, "actionBarEdge":F
    :goto_0
    if-eqz p2, :cond_3

    iget v4, p2, Landroid/graphics/RectF;->top:F

    .line 1066
    .local v4, "imageEdgeY":F
    :goto_1
    if-eqz p2, :cond_4

    iget v3, p2, Landroid/graphics/RectF;->right:F

    .line 1067
    .local v3, "imageEdgeX":F
    :goto_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->getMaxTranslationY()F

    move-result v8

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->getVerticalMargin()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1068
    .local v7, "tarY":F
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->getMaxTranslationX()F

    move-result v9

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v3

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->getHorizontalMargin()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float v6, v8, v9

    .line 1069
    .local v6, "tarX":F
    iget v8, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mAdjustY:F

    cmpl-float v8, v8, v7

    if-nez v8, :cond_0

    iget v8, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mAdjustX:F

    cmpl-float v8, v8, v6

    if-eqz v8, :cond_1

    .line 1070
    :cond_0
    iput v6, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mAdjustX:F

    .line 1071
    iput v7, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mAdjustY:F

    .line 1072
    if-eqz p3, :cond_5

    .line 1073
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1074
    .local v5, "set":Landroid/animation/AnimatorSet;
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    const-string v9, "TranslationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTranslationY()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1075
    .local v2, "animatorY":Landroid/animation/Animator;
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    const-string v9, "TranslationX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v6, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1076
    .local v1, "animatorX":Landroid/animation/Animator;
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1077
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->getAdjustAnimDuration(Z)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1078
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->getAdjustAnimInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1079
    iput-object v5, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mAnimator:Landroid/animation/Animator;

    .line 1080
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    .line 1086
    .end local v1    # "animatorX":Landroid/animation/Animator;
    .end local v2    # "animatorY":Landroid/animation/Animator;
    .end local v5    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    :goto_3
    return-void

    .line 1064
    .end local v0    # "actionBarEdge":F
    .end local v3    # "imageEdgeX":F
    .end local v4    # "imageEdgeY":F
    .end local v6    # "tarX":F
    .end local v7    # "tarY":F
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1065
    .restart local v0    # "actionBarEdge":F
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1066
    .restart local v4    # "imageEdgeY":F
    :cond_4
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getWidth()I

    move-result v8

    int-to-float v3, v8

    goto/16 :goto_2

    .line 1082
    .restart local v3    # "imageEdgeX":F
    .restart local v6    # "tarX":F
    .restart local v7    # "tarY":F
    :cond_5
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 1083
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3
.end method

.method private endAnim()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 1058
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mAnimator:Landroid/animation/Animator;

    .line 1060
    :cond_0
    return-void
.end method

.method private fetchNext()V
    .locals 3

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->cancelQueryTask()V

    .line 1179
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mProcessingMedia:Lcom/miui/gallery/provider/ProcessingMedia;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/ProcessingMedia;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mQueryTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;

    .line 1180
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mQueryTask:Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$QueryProgressAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1181
    return-void
.end method

.method private getNextQueryRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mNextQueryRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1160
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mNextQueryRunnable:Ljava/lang/Runnable;

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mNextQueryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private hideLoading(Z)V
    .locals 3
    .param p1, "anim"    # Z

    .prologue
    const/16 v2, 0x8

    .line 1117
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1118
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1120
    if-eqz p1, :cond_1

    .line 1121
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->generateHideAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 1122
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1130
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1135
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private isMediaInProcessing()Z
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mProcessingMedia:Lcom/miui/gallery/provider/ProcessingMedia;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onProgressPercentageUpdated(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "progressPercentage"    # I

    .prologue
    .line 1147
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPageImageItem;->access$3000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    const-string v0, "PhotoPageImageItem"

    const-string v1, "Updating progress for: %s to: %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mDeterminateProgress:Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mDeterminateProgress:Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    invoke-virtual {v0, p2}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setProgress(I)V

    .line 1153
    :cond_1
    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 1154
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->getNextQueryRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1156
    :cond_2
    return-void
.end method

.method private showLoading(Z)V
    .locals 5
    .param p1, "anim"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1089
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->needShowProcessingView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->ensureInflated()V

    .line 1091
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mHasShowProgress:Z

    .line 1092
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mProcessingMedia:Lcom/miui/gallery/provider/ProcessingMedia;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/ProcessingMedia;->getProcessingMetadata()Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;

    move-result-object v0

    .line 1093
    .local v0, "process":Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;
    if-eqz v0, :cond_2

    .line 1094
    invoke-virtual {v0}, Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;->getProgressStatus()Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;->DETERMINATE:Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;

    if-ne v1, v2, :cond_1

    .line 1095
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mIndeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1096
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mDeterminateProgress:Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setVisibility(I)V

    .line 1097
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mDeterminateProgress:Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setMax(I)V

    .line 1098
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mDeterminateProgress:Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    invoke-virtual {v0}, Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;->getProgressPercentage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setProgress(I)V

    .line 1099
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->fetchNext()V

    .line 1104
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1105
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isActionBarVisible()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->doAdjustLocation(ZLandroid/graphics/RectF;Z)V

    .line 1107
    if-eqz p1, :cond_0

    .line 1108
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->generateShowAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1114
    .end local v0    # "process":Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;
    :cond_0
    :goto_1
    return-void

    .line 1101
    .restart local v0    # "process":Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mDeterminateProgress:Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setVisibility(I)V

    .line 1102
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mIndeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1111
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateProgress()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mProcessingMedia:Lcom/miui/gallery/provider/ProcessingMedia;

    if-eqz v0, :cond_0

    .line 995
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->showLoading(Z)V

    .line 999
    :goto_0
    return-void

    .line 997
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->hideLoading(Z)V

    goto :goto_0
.end method


# virtual methods
.method public adjustLocation(ZLandroid/graphics/RectF;Z)V
    .locals 1
    .param p1, "isActionBarVisible"    # Z
    .param p2, "imageRect"    # Landroid/graphics/RectF;
    .param p3, "anim"    # Z

    .prologue
    .line 1049
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mHasShowProgress:Z

    if-nez v0, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->doAdjustLocation(ZLandroid/graphics/RectF;Z)V

    goto :goto_0
.end method

.method protected changeVisibilityForSpecialScene()V
    .locals 1

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->needShowProcessingView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isPagerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->updateProgress()V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->hideLoading(Z)V

    goto :goto_0
.end method

.method protected ensureInflated()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v4, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 965
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 966
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400fb

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    .line 969
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 970
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 971
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 973
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    const v2, 0x7f120243

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mDeterminateProgress:Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    .line 974
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mDeterminateProgress:Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    new-array v2, v6, [I

    const v3, 0x7f020212

    aput v3, v2, v5

    new-array v3, v6, [I

    const v4, 0x7f020214

    aput v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setDrawablesForLevels([I[I[I)V

    .line 975
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mDeterminateProgress:Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    new-array v2, v6, [I

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v5

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0183

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setMiddleStrokeColors([IF)V

    .line 976
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mDeterminateProgress:Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    invoke-virtual {v1, v7}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setVisibility(I)V

    .line 978
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    const v2, 0x7f120242

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mIndeterminateProgress:Landroid/widget/ProgressBar;

    .line 979
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mIndeterminateProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 981
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected generateHideAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 1139
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1140
    .local v0, "alpha":Landroid/view/animation/Animation;
    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1141
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1142
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1143
    return-object v0
.end method

.method public getProcessingMedia()Lcom/miui/gallery/provider/ProcessingMedia;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mProcessingMedia:Lcom/miui/gallery/provider/ProcessingMedia;

    return-object v0
.end method

.method protected getVerticalMargin()I
    .locals 2

    .prologue
    .line 987
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mMargin:I

    if-nez v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0296

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mMargin:I

    .line 990
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mMargin:I

    return v0
.end method

.method protected needShowProcessingView()Z
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isAnimEntering()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isAnimExiting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->isMediaInProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->isRotating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->isDrawableDisplayInside()Z

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
    .line 1014
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->onSelected()V

    .line 1015
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->updateProgress()V

    .line 1016
    return-void
.end method

.method public onUnSelected()V
    .locals 2

    .prologue
    .line 1020
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->cancelQueryTask()V

    .line 1021
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mNextQueryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1022
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mNextQueryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1024
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->hideLoading(Z)V

    .line 1025
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$AbsPhotoRectAwareManager;->onUnSelected()V

    .line 1026
    return-void
.end method

.method public setProcessingMedia(Lcom/miui/gallery/provider/ProcessingMedia;)V
    .locals 1
    .param p1, "processingMedia"    # Lcom/miui/gallery/provider/ProcessingMedia;

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->mProcessingMedia:Lcom/miui/gallery/provider/ProcessingMedia;

    .line 1003
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isPagerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$ImageProcessingManager;->updateProgress()V

    .line 1006
    :cond_0
    return-void
.end method
