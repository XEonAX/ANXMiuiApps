.class Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;
.super Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChoiceManager"
.end annotation


# instance fields
.field private mBarsVisibleBeforeSlip:Z

.field private mChoiceModeTitle:Landroid/widget/TextView;

.field private mIsInMultiWindow:Z

.field private mLastOrientation:I

.field private mShareTargetIntent:Landroid/content/Intent;

.field private mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

.field private mSlipPending:Z

.field private mSlipRunnable:Ljava/lang/Runnable;

.field private mSlipState:I

.field private mSlipped:Z

.field private mSupportSend:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2534
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V

    .line 2524
    iput v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mLastOrientation:I

    .line 2532
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mShareTargetIntent:Landroid/content/Intent;

    .line 2535
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f120237

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .line 2536
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setOnSlipListener(Lcom/miui/gallery/widget/slip/VerticalSlipLayout$OnSlipListener;)V

    .line 2537
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f120238

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceModeTitle:Landroid/widget/TextView;

    .line 2538
    iget-object v1, p1, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Lcom/miui/gallery/compat/app/ActivityCompat;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mIsInMultiWindow:Z

    .line 2539
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onUiOrientationChanged(Landroid/content/res/Configuration;)V

    .line 2540
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.miui.gallery.extra.photo_enter_choice_mode"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2541
    .local v0, "isEnterInChoiceMode":Z
    if-eqz v0, :cond_0

    .line 2542
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setDraggable(Z)V

    .line 2543
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setSlippedWhenEnter(Z)V

    .line 2544
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.miui.gallery.extra.photo_enter_choice_mode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2546
    :cond_0
    invoke-virtual {p0, v3, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setUpChooserFragment(IZ)V

    .line 2547
    return-void
.end method

.method private setChoiceTitleVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2572
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2573
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceModeTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2574
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceModeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2576
    :cond_0
    return-void

    .line 2572
    .end local v0    # "visibility":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSlipLayoutDraggable(Z)V
    .locals 2
    .param p1, "draggable"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2747
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSupportSend:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mIsInMultiWindow:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    .line 2748
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    and-int/2addr p1, v0

    .line 2749
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setDraggable(Z)V

    .line 2750
    return-void

    .line 2748
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getChoiceTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceModeTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getContainerId()I
    .locals 1

    .prologue
    .line 2732
    const v0, 0x7f120001

    return v0
.end method

.method public initSelected(Lcom/miui/gallery/model/BaseDataSet;)V
    .locals 6
    .param p1, "set"    # Lcom/miui/gallery/model/BaseDataSet;

    .prologue
    .line 2550
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isSlipped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2551
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataSet;->getInitPosition()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/miui/gallery/model/BaseDataSet;->getItem(Lcom/miui/gallery/model/BaseDataItem;I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 2552
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_0

    .line 2553
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataSet;->getInitPosition()I

    move-result v2

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->setChecked(IJZ)V

    .line 2556
    .end local v0    # "item":Lcom/miui/gallery/model/BaseDataItem;
    :cond_0
    return-void
.end method

.method public isPendingSlipped()Z
    .locals 1

    .prologue
    .line 2719
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipState:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->isSlipped()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipPending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mBarsVisibleBeforeSlip:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isFlingToSlipped()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlipped()Z
    .locals 1

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isSlipped()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2723
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->isSlipped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2724
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setUnSlipped(Z)V

    .line 2727
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindow"    # Z

    .prologue
    .line 2753
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mIsInMultiWindow:Z

    .line 2754
    if-eqz p1, :cond_0

    .line 2755
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setSlipLayoutDraggable(Z)V

    .line 2757
    :cond_0
    return-void
.end method

.method public onPhotoScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 2568
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSupportSend:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setSlipLayoutDraggable(Z)V

    .line 2569
    return-void

    .line 2568
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShared()V
    .locals 1

    .prologue
    .line 2742
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ChoiceManagerBase;->onShared()V

    .line 2743
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setUnSlipped(Z)V

    .line 2744
    return-void
.end method

.method public onSlipEnd(Z)V
    .locals 10
    .param p1, "slipped"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2657
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipped:Z

    .line 2658
    if-nez p1, :cond_4

    .line 2659
    invoke-virtual {p0, v8}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onVisibilityChanged(Z)V

    .line 2660
    invoke-direct {p0, v8}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setChoiceTitleVisible(Z)V

    .line 2661
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->unChooseAll()V

    .line 2662
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    invoke-virtual {v3}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->finish()V

    .line 2663
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2664
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->setSensorEnable(Z)V

    .line 2665
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->tryRestoreOrientation(Z)V

    .line 2667
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.miui.gallery.extra.show_menu_after_choice_mode"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2668
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3, v9}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$200(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V

    .line 2670
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2100(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2671
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2100(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->tryChangeStereoBtnVisible(Z)V

    .line 2673
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-boolean v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mBarsVisibleBeforeSlip:Z

    invoke-static {v3, v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$200(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V

    .line 2674
    iput-boolean v8, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mBarsVisibleBeforeSlip:Z

    .line 2675
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    const v5, 0x7f0c01c7

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/PhotoPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/TalkBackUtil;->requestAnnouncementEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 2677
    const-string v3, "photo"

    const-string v4, "fast_share_mode_exit"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    :cond_3
    :goto_0
    return-void

    .line 2679
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2680
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->setSensorEnable(Z)V

    .line 2682
    :cond_5
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3, v9}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 2683
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v2

    .line 2684
    .local v2, "item":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v2, :cond_6

    .line 2685
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7, v9}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->setChecked(IJZ)V

    .line 2687
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2100(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2688
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2100(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->tryChangeStereoBtnVisible(Z)V

    .line 2690
    :cond_7
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    const v5, 0x7f0c0187

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/PhotoPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/TalkBackUtil;->requestAnnouncementEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 2692
    const-string v3, "photo"

    const-string v4, "fast_share_mode_enter"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mShareTargetIntent:Landroid/content/Intent;

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    .line 2694
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mShareTargetIntent:Landroid/content/Intent;

    const-string v4, "assistant_need_beauty"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2695
    .local v0, "beauty":Z
    if-eqz v0, :cond_8

    .line 2696
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v1

    .line 2697
    .local v1, "currentItem":Lcom/miui/gallery/ui/PhotoPageItem;
    instance-of v3, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;

    if-eqz v3, :cond_8

    .line 2698
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v4}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7, v9}, Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;->setRenderChecked(IJZ)V

    .line 2701
    .end local v1    # "currentItem":Lcom/miui/gallery/ui/PhotoPageItem;
    :cond_8
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1700(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mShareTargetIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onIntentSelected(Landroid/content/Intent;)V

    .line 2702
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mShareTargetIntent:Landroid/content/Intent;

    .line 2704
    .end local v0    # "beauty":Z
    :cond_9
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getKey()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v8}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->isBestImage(JZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2705
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/ui/ImageSelectionTipFragment;->showImageSelectionTipDialogIfNecessary(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method public onSlipStart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2636
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipped:Z

    if-nez v0, :cond_1

    .line 2637
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onVisibilityChanged(Z)V

    .line 2638
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1100(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mBarsVisibleBeforeSlip:Z

    .line 2639
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$200(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V

    .line 2640
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->startActionMode(Lcom/miui/gallery/adapter/PhotoPageAdapter$MultiChoiceModeListener;)Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mChoiceMode:Lcom/miui/gallery/adapter/PhotoPageAdapter$ChoiceMode;

    .line 2641
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setChoiceTitleVisible(Z)V

    .line 2642
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2100(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2643
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$2100(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->tryChangeStereoBtnVisible(Z)V

    .line 2645
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    const v2, 0x7f0c0187

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/TalkBackUtil;->requestAnnouncementEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 2646
    const-string v0, "best_image"

    const-string v1, "best_image_count"

    .line 2647
    invoke-static {}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getInstance()Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager;->getBestImageCount(Z)I

    move-result v2

    int-to-long v2, v2

    .line 2646
    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2649
    :cond_1
    return-void
.end method

.method public onSlipStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    .line 2712
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipState:I

    .line 2713
    if-eq p1, v1, :cond_0

    .line 2714
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4300(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V

    .line 2716
    :cond_0
    return-void
.end method

.method public onSlipping(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 2653
    return-void
.end method

.method public onUiOrientationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2606
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mLastOrientation:I

    if-eq v0, v1, :cond_2

    .line 2607
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mIsInMultiWindow:Z

    if-nez v0, :cond_1

    .line 2608
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setUnSlipped(Z)V

    .line 2609
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    .line 2610
    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setSlipLayoutDraggable(Z)V

    .line 2611
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipPending:Z

    if-eqz v0, :cond_1

    .line 2612
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipPending:Z

    .line 2613
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2614
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipRunnable:Ljava/lang/Runnable;

    .line 2623
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2624
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/CompatHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2630
    :cond_1
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mLastOrientation:I

    .line 2632
    :cond_2
    return-void

    .line 2627
    :cond_3
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setSlipLayoutDraggable(Z)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 2760
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2761
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2763
    :cond_0
    return-void
.end method

.method sendCurrentToShare(Landroid/content/Intent;)V
    .locals 2
    .param p1, "target"    # Landroid/content/Intent;

    .prologue
    .line 2766
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mShareTargetIntent:Landroid/content/Intent;

    .line 2767
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setSlipped(Z)V

    .line 2768
    return-void
.end method

.method public setSlipped(Z)V
    .locals 2
    .param p1, "smooth"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2579
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mIsInMultiWindow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 2580
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 2581
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipPending:Z

    .line 2582
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2583
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->setSensorEnable(Z)V

    .line 2591
    :cond_0
    :goto_0
    return-void

    .line 2587
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSupportSend:Z

    if-eqz v0, :cond_2

    .line 2588
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setSlipLayoutDraggable(Z)V

    .line 2590
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setSlipped(Z)V

    goto :goto_0
.end method

.method public setUnSlipped(Z)V
    .locals 1
    .param p1, "smooth"    # Z

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSlipLayout:Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setUnSlipped(Z)V

    .line 2603
    return-void
.end method

.method public settleItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 2559
    if-eqz p1, :cond_0

    .line 2560
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->access$1500(Lcom/miui/gallery/ui/PhotoPageFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2561
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getSupportOperations()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/miui/gallery/util/PhotoOperationsUtil;->isSupportedOptions(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSupportSend:Z

    .line 2562
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->mSupportSend:Z

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->setSlipLayoutDraggable(Z)V

    .line 2564
    :cond_0
    return-void

    .line 2561
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
