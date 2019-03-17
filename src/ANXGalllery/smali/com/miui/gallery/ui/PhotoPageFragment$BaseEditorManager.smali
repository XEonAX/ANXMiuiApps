.class abstract Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseEditorManager"
.end annotation


# instance fields
.field private mEverStartedEditor:Z

.field private mOnLoadTimeOut:Ljava/lang/Runnable;

.field private mResultHandled:Z

.field private mStartTransition:J

.field private mTargetFilePath:Ljava/lang/String;

.field private mTargetId:J

.field private mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 1

    .prologue
    .line 3453
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mTargetFilePath:Ljava/lang/String;

    .line 3461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mEverStartedEditor:Z

    .line 3528
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mOnLoadTimeOut:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFragment$1;

    .prologue
    .line 3453
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;

    .prologue
    .line 3453
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->finishTransition()V

    return-void
.end method

.method private finishTransition()V
    .locals 6

    .prologue
    .line 3519
    const-string v0, "PhotoPageFragment"

    const-string v1, "editor transition delay %s"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mStartTransition:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3520
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mOnLoadTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3521
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 3522
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/compat/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 3524
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mTargetFilePath:Ljava/lang/String;

    .line 3525
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mTargetId:J

    .line 3526
    return-void
.end method

.method private hasExportedMeasure(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 3611
    if-eqz p1, :cond_0

    const-string v0, "photo_edit_exported_width"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "photo_edit_exported_height"

    .line 3612
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurrentImageOverDisplayArea()Z
    .locals 3

    .prologue
    .line 3616
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    if-eqz v1, :cond_0

    .line 3617
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurItemDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 3618
    .local v0, "rectF":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 3619
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->isImageOverDisplayArea(FF)Z

    move-result v1

    .line 3622
    .end local v0    # "rectF":Landroid/graphics/RectF;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isExportedImageOverDisplayArea(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 3626
    if-nez p1, :cond_0

    .line 3631
    :goto_0
    return v2

    .line 3629
    :cond_0
    const-string v3, "photo_edit_exported_width"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3630
    .local v1, "imageWidth":I
    const-string v3, "photo_edit_exported_height"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3631
    .local v0, "imageHeight":I
    int-to-float v2, v1

    int-to-float v3, v0

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->isImageOverDisplayArea(FF)Z

    move-result v2

    goto :goto_0
.end method

.method private isImageOverDisplayArea(FF)Z
    .locals 8
    .param p1, "imageWidth"    # F
    .param p2, "imageHeight"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 3635
    cmpg-float v4, p1, v7

    if-lez v4, :cond_0

    cmpg-float v4, p2, v7

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    if-nez v4, :cond_1

    .line 3649
    :cond_0
    :goto_0
    return v3

    .line 3639
    :cond_1
    div-float v2, p2, p1

    .line 3640
    .local v2, "imageRatio":F
    const v4, 0x3fab851f    # 1.34f

    cmpg-float v4, v2, v4

    if-lez v4, :cond_0

    .line 3644
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getWidth()I

    move-result v4

    int-to-float v1, v4

    .line 3645
    .local v1, "displayWidth":F
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->getSplitBarHeight()I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v6}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->getTopBarHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v0, v4

    .line 3646
    .local v0, "displayHeight":F
    cmpl-float v4, v1, v7

    if-lez v4, :cond_0

    cmpl-float v4, v0, v7

    if-lez v4, :cond_0

    .line 3647
    div-float v4, v0, v1

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract handleEditorResult(Landroid/content/Intent;)Z
.end method

.method protected insertAndNotifyDataSet(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3599
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;

    if-nez v0, :cond_0

    .line 3600
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;

    .line 3602
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;->execute(Ljava/lang/String;Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$Callback;)V

    .line 3608
    return-void
.end method

.method protected notifyDataSetChange(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 3582
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "photo_focused_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3583
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->onContentChanged()V

    .line 3584
    return-void
.end method

.method protected notifyDataSetChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3596
    :goto_0
    return-void

    .line 3590
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataSet()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    .line 3591
    .local v0, "dataSet":Lcom/miui/gallery/model/BaseDataSet;
    if-eqz v0, :cond_1

    .line 3592
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/model/BaseDataSet;->addNewFile(Ljava/lang/String;I)Z

    .line 3594
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "photo_focused_path"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->onContentChanged()V

    goto :goto_0
.end method

.method public onActivityReenter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 3479
    const-string v0, "PhotoPageFragment"

    const-string v1, "Transition onActivityReenter %s"

    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mEverStartedEditor:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3480
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->hasExportedMeasure(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3481
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->isExportedImageOverDisplayArea(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3482
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$5400(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 3488
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mTargetFilePath:Ljava/lang/String;

    .line 3489
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mTargetId:J

    .line 3490
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 3491
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->handleEditorResult(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mResultHandled:Z

    .line 3493
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mEverStartedEditor:Z

    if-nez v0, :cond_3

    .line 3494
    const-string v0, "PhotoPageFragment"

    const-string v1, "Transition stop, because activity restart."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3502
    :cond_1
    :goto_1
    return-void

    .line 3484
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$5500(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    goto :goto_0

    .line 3497
    :cond_3
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mResultHandled:Z

    if-eqz v0, :cond_1

    .line 3498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mStartTransition:J

    .line 3499
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Lcom/miui/gallery/compat/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 3500
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mOnLoadTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 3544
    const-string v0, "PhotoPageFragment"

    const-string v1, "EditorManager.onActivityResult"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$5500(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 3546
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3547
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->onActivityResult()V

    .line 3549
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 3550
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mResultHandled:Z

    if-nez v0, :cond_1

    .line 3551
    invoke-virtual {p0, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->handleEditorResult(Landroid/content/Intent;)Z

    .line 3552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mTargetFilePath:Ljava/lang/String;

    .line 3553
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mTargetId:J

    .line 3555
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mResultHandled:Z

    .line 3559
    :cond_2
    :goto_0
    return-void

    .line 3556
    :cond_3
    if-nez p1, :cond_2

    .line 3557
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->onCanceled()V

    goto :goto_0
.end method

.method protected onCanceled()V
    .locals 0

    .prologue
    .line 3562
    return-void
.end method

.method public onImageLoadFinish(Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 3505
    iget-wide v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mTargetId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 3506
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->finishTransition()V

    .line 3516
    :cond_0
    :goto_0
    return-void

    .line 3509
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mTargetFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3512
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3513
    .local v0, "filePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mTargetFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3514
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->finishTransition()V

    goto :goto_0
.end method

.method public onStartEditor()V
    .locals 2

    .prologue
    .line 3465
    const-string v0, "PhotoPageFragment"

    const-string v1, "EditorManager.onStartEditor"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mEverStartedEditor:Z

    .line 3467
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->isCurrentImageOverDisplayArea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3468
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$5400(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 3470
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    if-eqz v0, :cond_1

    .line 3471
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPagerHelper;->onActivityTransition()V

    .line 3473
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3474
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->onActivityTransition()V

    .line 3476
    :cond_2
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;

    if-eqz v0, :cond_0

    .line 3538
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mUpdateTask:Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;->cancel()V

    .line 3540
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mOnLoadTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3541
    return-void
.end method

.method protected setTargetId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 3578
    iput-wide p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mTargetId:J

    .line 3579
    return-void
.end method

.method protected setTargetPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3574
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;->mTargetFilePath:Ljava/lang/String;

    .line 3575
    return-void
.end method
