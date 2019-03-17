.class Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartVideoGuideManager"
.end annotation


# instance fields
.field private mGuideView:Lmiui/widget/GuidePopupWindow;

.field private mLastHFRVideoPath:Ljava/lang/String;

.field private mShowGuidanceRunnable:Ljava/lang/Runnable;

.field private mSmartVideoGuideHelper:Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;

.field private mVideoPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 1

    .prologue
    .line 2868
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2869
    new-instance v0, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mSmartVideoGuideHelper:Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;

    .line 2870
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mSmartVideoGuideHelper:Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;->setSmartVideoGuideListener(Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideListener;)V

    .line 2871
    return-void
.end method

.method static synthetic access$4500(Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;)Lmiui/widget/GuidePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mGuideView:Lmiui/widget/GuidePopupWindow;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mLastHFRVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    .prologue
    .line 2859
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->doShowGuidance()V

    return-void
.end method

.method private dismissGuidance()V
    .locals 2

    .prologue
    .line 2948
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mShowGuidanceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2949
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mShowGuidanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2951
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mGuideView:Lmiui/widget/GuidePopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mGuideView:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2952
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mGuideView:Lmiui/widget/GuidePopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->dismiss(Z)V

    .line 2954
    :cond_1
    return-void
.end method

.method private doShowGuidance()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2934
    new-instance v2, Lmiui/widget/GuidePopupWindow;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v2, v3}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mGuideView:Lmiui/widget/GuidePopupWindow;

    .line 2935
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mGuideView:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v2, v4}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 2936
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mGuideView:Lmiui/widget/GuidePopupWindow;

    const v3, 0x7f0c01f4

    invoke-virtual {v2, v3}, Lmiui/widget/GuidePopupWindow;->setGuideText(I)V

    .line 2937
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 2938
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2939
    const v2, 0x7f12030a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 2940
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2941
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mGuideView:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v2, v0, v4}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;Z)V

    .line 2942
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;->setHasGuided(Z)V

    .line 2945
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private getShowGuidanceRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 2916
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mShowGuidanceRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2917
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mShowGuidanceRunnable:Ljava/lang/Runnable;

    .line 2930
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mShowGuidanceRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private preventGuide(Lcom/miui/gallery/model/BaseDataItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1500(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1100(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2890
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2891
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActionBarVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 2895
    if-eqz p1, :cond_0

    .line 2896
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v2, v2, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 2897
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 2901
    .end local v0    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :goto_0
    return-void

    .line 2899
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->dismissGuidance()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mSmartVideoGuideHelper:Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;

    if-eqz v0, :cond_0

    .line 2958
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mSmartVideoGuideHelper:Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;->release()V

    .line 2960
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->dismissGuidance()V

    .line 2961
    return-void
.end method

.method public showGuideView(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2905
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mGuideView:Lmiui/widget/GuidePopupWindow;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1100(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mVideoPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2913
    :cond_0
    :goto_0
    return-void

    .line 2908
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mLastHFRVideoPath:Ljava/lang/String;

    .line 2909
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mShowGuidanceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 2910
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mShowGuidanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2912
    :cond_2
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->getShowGuidanceRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x17c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 2874
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;->hasGuided()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2875
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->preventGuide(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mLastHFRVideoPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2876
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->dismissGuidance()V

    .line 2886
    :cond_1
    :goto_0
    return-void

    .line 2879
    :cond_2
    if-eqz p1, :cond_3

    .line 2880
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mVideoPath:Ljava/lang/String;

    .line 2882
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mSmartVideoGuideHelper:Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->preventGuide(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2883
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mSmartVideoGuideHelper:Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;->handleHighFrameRate(Ljava/lang/String;)V

    goto :goto_0
.end method
