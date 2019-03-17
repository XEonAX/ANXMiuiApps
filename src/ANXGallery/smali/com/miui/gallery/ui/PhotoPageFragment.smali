.class public Lcom/miui/gallery/ui/PhotoPageFragment;
.super Lcom/miui/gallery/ui/PhotoPageFragmentBase;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;,
        Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;,
        Lcom/miui/gallery/ui/PhotoPageFragment$BaseEditorManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;,
        Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;,
        Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;,
        Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$AccelerometerRotationChangedListener;,
        Lcom/miui/gallery/ui/PhotoPageFragment$OrientationChangedListener;,
        Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;,
        Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;,
        Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;
    }
.end annotation


# instance fields
.field private isFromCamera:Z

.field private mAlphaChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

.field private mAlwaysShowMenubar:Z

.field private mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

.field private mDataLoaded:Z

.field private mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

.field private mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

.field private mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

.field private mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

.field private mFromRecommendFacePage:Z

.field private mHasSendDismissCast:Z

.field private mIsNightMode:Z

.field private mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

.field private mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

.field private mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;

.field private mNFCManager:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

.field private mNeedConfirmPassWord:Z

.field private mOnExitListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

.field private mOnPhotoMatrixChangeListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

.field private mOnPhotoScaleChangeListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

.field private mOnSingleTapListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

.field private mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

.field private mPhotoRefreshReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;

.field private mPreviewMode:Z

.field private mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

.field private mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

.field private mScreenReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;

.field private mShowSecretInAddDialog:Z

.field private mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

.field private mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

.field private mStartWhenLocked:Z

.field private mStartWhenLockedAndSecret:Z

.field private mTheme:I

.field private mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

.field private mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

.field private mUserShowBarIndex:I

.field private mVideoPlayerManager:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

.field private mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;-><init>()V

    .line 176
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mUserShowBarIndex:I

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTheme:I

    .line 1252
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$6;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnExitListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

    .line 1259
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$7;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAlphaChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

    .line 1271
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$8;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$8;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnSingleTapListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

    .line 1291
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$9;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$9;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnPhotoScaleChangeListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

    .line 1313
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$10;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$10;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnPhotoMatrixChangeListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

    .line 1330
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$11;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$11;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    .line 4241
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/PhotoPageFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isActionBarVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isTransparentTheme()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isPreviewMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/PhotoPageFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mUserShowBarIndex:I

    return v0
.end method

.method static synthetic access$1602(Lcom/miui/gallery/ui/PhotoPageFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mUserShowBarIndex:I

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->setActionBarVisible(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "x2"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "x3"    # Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragment;->doDownloadOrigin(Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->needDismissKeyGuard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->dismissKeyGuard()V

    return-void
.end method

.method static synthetic access$2800(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->getItemClickEventCategory(Lcom/miui/gallery/model/BaseDataItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnTransitEnd()V

    return-void
.end method

.method static synthetic access$3100(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->prohibitOperateProcessingItem(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLocked:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mShowSecretInAddDialog:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/miui/gallery/ui/PhotoPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mShowSecretInAddDialog:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->downloadOrigin()V

    return-void
.end method

.method static synthetic access$4000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLockedAndSecret:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->refreshTheme(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/miui/gallery/ui/PhotoPageFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->finishActivity(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->hideActionBarView()V

    return-void
.end method

.method static synthetic access$5500(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->showActionBarView()V

    return-void
.end method

.method static synthetic access$6000(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->activityAlive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$601(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->doExit()V

    return-void
.end method

.method static synthetic access$6500(Lcom/miui/gallery/ui/PhotoPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/PhotoPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->onBarsCreated()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/PhotoPageFragment;)Lcom/miui/gallery/ui/PhotoPageTopBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragment;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    return-object v0
.end method

.method private activityAlive()Z
    .locals 1

    .prologue
    .line 3947
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private alwaysShowMenubar()Z
    .locals 1

    .prologue
    .line 1067
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAlwaysShowMenubar:Z

    return v0
.end method

.method private configViewLayout(Landroid/view/View;)V
    .locals 28
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 337
    .local v11, "res":Landroid/content/res/Resources;
    const v24, 0x7f0a0003

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v16

    .line 338
    .local v16, "shareTitleRatio":F
    const v24, 0x7f0a0001

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v13

    .line 339
    .local v13, "sharePagerRatio":F
    const/high16 v24, 0x7f0a0000

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    .line 340
    .local v12, "shareChannelRatio":F
    const v24, 0x7f0a0002

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v15

    .line 341
    .local v15, "shareTitlePaddingRatio":F
    const v24, 0x7f090004

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->resolveGravity(I)I

    move-result v14

    .line 343
    .local v14, "shareTitleGravity":I
    const v24, 0x7f120237

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .line 344
    .local v17, "slipLayout":Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
    const v24, 0x7f120238

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 345
    .local v18, "title":Landroid/widget/TextView;
    const v24, 0x7f120001

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 347
    .local v5, "choice":Landroid/view/View;
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getRealScreenHeight()I

    move-result v24

    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getRealScreenWidth()I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 348
    .local v20, "viewHeight":I
    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getRealScreenHeight()I

    move-result v24

    invoke-static {}, Lcom/miui/gallery/Config$ScreenConfig;->getRealScreenWidth()I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 350
    .local v21, "viewWidth":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v16

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 351
    .local v19, "titleHeight":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v12

    move/from16 v0, v24

    float-to-int v6, v0

    .line 352
    .local v6, "choiceHeight":I
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v0, v19

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 353
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 354
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v15

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 355
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 356
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setFixedSideSlipDistance(I)V

    .line 358
    const v24, 0x7f0b028a

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 359
    .local v23, "widthSlipMargin":I
    const v24, 0x7f0b03b8

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 360
    .local v9, "pagerMargin":I
    const v24, 0x7f0b03b9

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 361
    .local v10, "pagerSlipMargin":I
    move v7, v13

    .line 362
    .local v7, "heightRatio":F
    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    sub-float v22, v24, v25

    .line 363
    .local v22, "widthRatio":F
    const/high16 v24, 0x3f800000    # 1.0f

    int-to-float v0, v10

    move/from16 v25, v0

    mul-float v24, v24, v25

    int-to-float v0, v9

    move/from16 v25, v0

    div-float v8, v24, v25

    .line 364
    .local v8, "marginRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/miui/gallery/widget/ViewPager;->setHeightSlipRatio(F)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/ViewPager;->setWidthSlipRatio(F)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/miui/gallery/widget/ViewPager;->setMarginSlipRatio(F)V

    .line 367
    return-void
.end method

.method private createBars()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    .line 556
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$4;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    .line 562
    .local v1, "listener":Landroid/view/View$OnClickListener;
    new-instance v4, Lcom/miui/gallery/ui/PhotoPageTopBar;

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v4, v5, v1}, Lcom/miui/gallery/ui/PhotoPageTopBar;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    .line 563
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isShowBarsWhenEntering()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v3

    .line 564
    .local v0, "delayInitMenus":Z
    :goto_0
    if-nez v0, :cond_0

    .line 565
    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->setHasOptionsMenu(Z)V

    .line 567
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageTopBar;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/ui/PhotoPageFragment$5;

    invoke-direct {v4, p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$5;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Z)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 579
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x13

    invoke-direct {v2, v6, v6, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 580
    .local v2, "lp":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageTopBar;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 581
    return-void

    .line 563
    .end local v0    # "delayInitMenus":Z
    .end local v2    # "lp":Landroid/app/ActionBar$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissKeyGuard()V
    .locals 3

    .prologue
    .line 1390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mHasSendDismissCast:Z

    .line 1391
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "xiaomi.intent.action.SHOW_SECURE_KEYGUARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/activity/BaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1392
    return-void
.end method

.method private doDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V
    .locals 1
    .param p1, "dataSet"    # Lcom/miui/gallery/model/BaseDataSet;
    .param p2, "firstLoad"    # Z

    .prologue
    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDataLoaded:Z

    .line 478
    if-eqz p2, :cond_0

    .line 479
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->initSelected(Lcom/miui/gallery/model/BaseDataSet;)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->updateSet(Lcom/miui/gallery/model/BaseDataSet;)V

    .line 486
    :cond_1
    return-void
.end method

.method private doDownloadOrigin(Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V
    .locals 8
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "downloadCallback"    # Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;

    .prologue
    .line 1427
    new-instance v3, Lcom/miui/gallery/ui/PhotoPageFragment$14;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$14;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 1461
    .local v3, "onDownloadListener":Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;
    new-instance v1, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getSize()J

    move-result-wide v6

    invoke-direct {v1, v4, p2, v6, v7}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;J)V

    .line 1462
    .local v1, "downloadItem":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1463
    .local v2, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    invoke-static {v2}, Lcom/miui/gallery/ui/DownloadFragment;->newInstance(Ljava/util/ArrayList;)Lcom/miui/gallery/ui/DownloadFragment;

    move-result-object v0

    .line 1465
    .local v0, "downloadFragment":Lcom/miui/gallery/ui/DownloadFragment;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/DownloadFragment;->setOnDownloadListener(Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;)V

    .line 1466
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "DownloadFragment"

    invoke-virtual {v0, v4, v5}, Lcom/miui/gallery/ui/DownloadFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1467
    return-void
.end method

.method private doOnItemChanged(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1160
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 1161
    .local v0, "curDataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_2

    .line 1162
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->refreshTopBar(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1163
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    if-eqz v1, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1166
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    if-eqz v1, :cond_1

    .line 1167
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1169
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    if-eqz v1, :cond_2

    .line 1170
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1173
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    if-eqz v1, :cond_3

    .line 1174
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->refreshMask(Z)V

    .line 1176
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v1, :cond_4

    .line 1177
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->updateItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1179
    :cond_4
    return-void
.end method

.method private doOnItemSettled(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/16 v5, 0x2000

    .line 1188
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 1189
    .local v0, "curDataItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz v0, :cond_7

    .line 1190
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    if-eqz v2, :cond_0

    .line 1191
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1193
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    if-eqz v2, :cond_1

    .line 1194
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-virtual {v2, v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;I)V

    .line 1196
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    if-eqz v2, :cond_2

    .line 1197
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1199
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNFCManager:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

    if-eqz v2, :cond_3

    .line 1200
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNFCManager:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1202
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v2, :cond_4

    .line 1203
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1205
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v2, :cond_5

    .line 1206
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 1208
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isActionBarVisible()Z

    move-result v3

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBarHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/ui/PhotoPagerHelper;->onActionBarVisibleChanged(ZI)V

    .line 1210
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1211
    .local v1, "flags":I
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1212
    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_6

    .line 1213
    const-string v2, "PhotoPageFragment"

    const-string v3, "add FLAG_SECURE"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1223
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/model/BaseDataItem;->getContentDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/TalkBackUtil;->requestAnnouncementEvent(Landroid/view/View;Ljava/lang/String;)V

    .line 1225
    .end local v1    # "flags":I
    :cond_7
    return-void

    .line 1217
    .restart local v1    # "flags":I
    :cond_8
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_6

    .line 1218
    const-string v2, "PhotoPageFragment"

    const-string v3, "clear FLAG_SECURE"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private doOnPause()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->pause()V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->pause()V

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    if-eqz v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->disableRemoteControl()V

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    if-eqz v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    .line 628
    :cond_3
    return-void
.end method

.method private doOnResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 631
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isActionBarVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/gallery/util/SystemUiUtil;->setSystemBarsVisibility(ZLandroid/view/View;)V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->resume()V

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->resume()V

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->enableRemoteControl()V

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isNeedConfirmPassWord(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 645
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNeedConfirmPassWord:Z

    .line 646
    const/16 v0, 0x1b

    invoke-static {p0, v0}, Lcom/miui/privacy/LockSettingsHelper;->startAuthenticatePasswordActivity(Landroid/app/Fragment;I)V

    .line 650
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    if-nez v0, :cond_5

    .line 651
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    .line 652
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVoiceAssistantReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$VoiceAssistantReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.miui.gallery.action.VOICE_ASSISTANT_SHARE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 654
    :cond_5
    return-void
.end method

.method private doOnTransitEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->delayDoAfterTransit()V

    .line 425
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isTransparentTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miu.gallery.action.ENTER_PHOTO_PAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->setActionBarVisible(Z)V

    .line 469
    :cond_1
    :goto_0
    return-void

    .line 435
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->createBars()V

    .line 438
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->supportProjection()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    .line 441
    :cond_3
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    .line 442
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNFCManager:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

    .line 443
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    .line 444
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    .line 446
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    .line 447
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    .line 448
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .line 449
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/SmartVideoJudgeManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 450
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    .line 452
    :cond_4
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVideoPlayerManager:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    .line 453
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;Lcom/miui/gallery/ui/PhotoPageTopBar;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;

    .line 457
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 458
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnResume()V

    .line 460
    :cond_5
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDataLoaded:Z

    if-eqz v0, :cond_6

    .line 461
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataSet()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->doDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V

    .line 462
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnItemChanged(I)V

    .line 463
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnItemSettled(I)V

    .line 466
    :cond_6
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->setBackgroundAlpha(F)V

    goto/16 :goto_0
.end method

.method private downloadOrigin()V
    .locals 2

    .prologue
    .line 1395
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    .line 1396
    .local v0, "pageItem":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v0, :cond_0

    .line 1397
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->downloadOrigin()V

    .line 1399
    :cond_0
    return-void
.end method

.method private finishActivity(I)V
    .locals 2
    .param p1, "resultCode"    # I

    .prologue
    .line 545
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isTransparentTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.EXIT_PHOTO_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "photo_result_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 551
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->finish()V

    .line 553
    :cond_1
    return-void
.end method

.method private fromRecommendFacePage()Z
    .locals 1

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFromRecommendFacePage:Z

    return v0
.end method

.method private getActionBarHeight()I
    .locals 5

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/ActionBar;->getHeight()I

    move-result v0

    .line 1059
    .local v0, "actionBarHeight":I
    if-lez v0, :cond_0

    move v1, v0

    .line 1063
    .end local v0    # "actionBarHeight":I
    .local v1, "actionBarHeight":I
    :goto_0
    return v1

    .line 1062
    .end local v1    # "actionBarHeight":I
    .restart local v0    # "actionBarHeight":I
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v0, v2, v3

    move v1, v0

    .line 1063
    .end local v0    # "actionBarHeight":I
    .restart local v1    # "actionBarHeight":I
    goto :goto_0
.end method

.method private getItemClickEventCategory(Lcom/miui/gallery/model/BaseDataItem;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 3951
    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3952
    const-string v0, "photo_secret"

    .line 3954
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "photo"

    goto :goto_0
.end method

.method private hideActionBarView()V
    .locals 2

    .prologue
    .line 861
    const-string v0, "PhotoPageFragment"

    const-string v1, "hideActionBarView"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageTopBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageTopBar;->hide()V

    .line 866
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->hideBottomMenu()V

    .line 867
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->hideMaskImmediately()V

    goto :goto_0
.end method

.method private inPreviewMode()Z
    .locals 1

    .prologue
    .line 1005
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isActionBarVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->isPendingSlipped()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActionBarVisible()Z
    .locals 1

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFromCamera()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera:Z

    return v0
.end method

.method private isNeedConfirmPassWord(Lcom/miui/gallery/model/BaseDataItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 1080
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNeedConfirmPassWord:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreviewMode()Z
    .locals 1

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->fromRecommendFacePage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPreviewMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureKeyguard()Z
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lcom/miui/gallery/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 261
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    return v1
.end method

.method private isShowBarsWhenEntering()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 495
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "photo_uri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/UriUtil;->isNetUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->alwaysShowMenubar()Z

    move-result v3

    if-nez v3, :cond_2

    .line 497
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.miui.gallery.extra.show_bars_when_enter"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.miui.gallery.extra.photo_enter_choice_mode"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 499
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isPreviewMode()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isStatUserShowMenuBar()Z
    .locals 1

    .prologue
    .line 1140
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTransparentTheme()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 232
    iget v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTheme:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needDismissKeyGuard()Z
    .locals 1

    .prologue
    .line 1386
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLocked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLockedAndSecret:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mHasSendDismissCast:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;I)Lcom/miui/gallery/ui/PhotoPageFragment;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "theme"    # I

    .prologue
    .line 188
    if-nez p2, :cond_0

    .line 189
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "data":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 191
    .restart local p2    # "data":Landroid/os/Bundle;
    :cond_0
    const-string v1, "key_theme"

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    if-eqz p0, :cond_1

    .line 193
    const-string v1, "photo_uri"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    if-eqz p1, :cond_2

    .line 196
    const-string v1, "mime_type"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_2
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PhotoPageFragment;-><init>()V

    .line 199
    .local v0, "fragment":Lcom/miui/gallery/ui/PhotoPageFragment;
    invoke-virtual {v0, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 200
    return-object v0
.end method

.method private onActionBarVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1019
    if-eqz p1, :cond_7

    .line 1020
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v1, :cond_0

    .line 1021
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->showMoreFuncExceptRefocus(Z)V

    .line 1023
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    if-eqz v1, :cond_1

    .line 1024
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->show()V

    .line 1026
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    if-eqz v1, :cond_2

    .line 1027
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->onActionBarVisibilityChanged(Z)V

    .line 1040
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    if-eqz v1, :cond_3

    .line 1041
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->onActionBarVisibilityChanged()V

    .line 1043
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    if-eqz v1, :cond_4

    .line 1044
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->refreshMask(Z)V

    .line 1046
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isExiting()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1047
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->refreshTheme(Z)V

    .line 1048
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBarHeight()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->onActionBarVisibleChanged(ZI)V

    .line 1049
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gallery/util/SystemUiUtil;->setSystemBarsVisibility(ZLandroid/view/View;)V

    .line 1050
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/compat/view/ViewCompat;->getSystemWindowInsetBottom(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_6

    .line 1051
    if-eqz p1, :cond_5

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mIsNightMode:Z

    if-eqz v1, :cond_a

    const/high16 v0, -0x1000000

    .line 1052
    .local v0, "navigationColor":I
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gallery/compat/view/WindowCompat;->setNavigationBarColor(Landroid/view/Window;I)V

    .line 1055
    .end local v0    # "navigationColor":I
    :cond_6
    return-void

    .line 1030
    :cond_7
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v1, :cond_8

    .line 1031
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->hideMoreFuncExceptRefocus(Z)V

    .line 1033
    :cond_8
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isExiting()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    if-eqz v1, :cond_9

    .line 1034
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->hide()V

    .line 1036
    :cond_9
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    if-eqz v1, :cond_2

    .line 1037
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->onActionBarVisibilityChanged(Z)V

    goto :goto_0

    .line 1051
    :cond_a
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private onBarsCreated()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 592
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    .line 594
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 595
    .local v0, "item":Lcom/miui/gallery/model/BaseDataItem;
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->refreshTopBar(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 600
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isShowBarsWhenEntering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/gallery/compat/app/ActionBarCompat;->setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V

    .line 604
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/ActionBar;->hide()V

    .line 605
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/miui/gallery/compat/app/ActionBarCompat;->setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V

    .line 606
    invoke-direct {p0, v4}, Lcom/miui/gallery/ui/PhotoPageFragment;->setActionBarVisible(Z)V

    .line 612
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/gallery/compat/app/ActionBarCompat;->setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V

    .line 609
    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->setActionBarVisible(Z)V

    .line 610
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/miui/gallery/compat/app/ActionBarCompat;->setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V

    goto :goto_0
.end method

.method private parseArguments()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 237
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 238
    const-string v2, "photo_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "uri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    .end local v1    # "uri":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 242
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_1
    const-string v2, "from_MiuiCamera"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera:Z

    .line 243
    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera:Z

    if-eqz v2, :cond_2

    .line 244
    const-string v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLocked:Z

    .line 245
    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLocked:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isSecureKeyguard()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLockedAndSecret:Z

    .line 249
    :cond_2
    const-string v2, "key_theme"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTheme:I

    .line 251
    const-string v2, "photo_always_show_menubar"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAlwaysShowMenubar:Z

    .line 252
    const-string v2, "from_recommend_face_page"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFromRecommendFacePage:Z

    .line 253
    const-string v2, "photo_preview_mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPreviewMode:Z

    move v4, v3

    .line 254
    goto :goto_0

    :cond_3
    move v2, v4

    .line 245
    goto :goto_1
.end method

.method private prohibitOperateProcessingItem(Lcom/miui/gallery/model/BaseDataItem;)Z
    .locals 2
    .param p1, "current"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 1889
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->isProcessingMedia(Lcom/miui/gallery/model/BaseDataItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v1, 0x7f0c0302

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 1891
    const/4 v0, 0x1

    .line 1893
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshTheme(Z)V
    .locals 2
    .param p1, "quickly"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1009
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    if-eqz v0, :cond_0

    .line 1010
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->inPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->setDarkTheme(ZZ)V

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->setLightTheme(ZZ)V

    goto :goto_0
.end method

.method private refreshTopBar(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 3
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 584
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {p1, v1}, Lcom/miui/gallery/model/BaseDataItem;->getViewTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageTopBar;->setTitle(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {p1, v1}, Lcom/miui/gallery/model/BaseDataItem;->getViewSubTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageTopBar;->setSubTitle(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/miui/gallery/model/BaseDataItem;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoPageTopBar;->setLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 589
    :cond_0
    return-void
.end method

.method private resolveGravity(I)I
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 318
    sparse-switch p1, :sswitch_data_0

    .line 324
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 320
    :sswitch_0
    const/16 v0, 0x11

    goto :goto_0

    .line 322
    :sswitch_1
    const/16 v0, 0x51

    goto :goto_0

    .line 318
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x51 -> :sswitch_1
    .end sparse-switch
.end method

.method private setActionBarVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isActionBarVisible()Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    if-eqz p1, :cond_3

    .line 829
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->isSlipped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isPreviewMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->show()V

    .line 842
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->onActionBarVisibilityChanged(Z)V

    goto :goto_0

    .line 837
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->alwaysShowMenubar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->hide()V

    goto :goto_1
.end method

.method private showActionBarView()V
    .locals 2

    .prologue
    .line 846
    const-string v0, "PhotoPageFragment"

    const-string/jumbo v1, "showActionBarView"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageTopBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mTopBar:Lcom/miui/gallery/ui/PhotoPageTopBar;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageTopBar;->show()V

    .line 851
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->showBottomMenu()V

    .line 852
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->showMaskImmediately()V

    goto :goto_0
.end method

.method private statUserShowMenuBar()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1145
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mUserShowBarIndex:I

    if-ltz v2, :cond_1

    .line 1146
    .local v0, "isUserShowBar":Z
    :goto_0
    const-string v2, "isUserShowMenuBar"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    if-eqz v0, :cond_0

    .line 1148
    const-string/jumbo v2, "showBarIndex"

    iget v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mUserShowBarIndex:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    :cond_0
    const-string v2, "photo"

    const-string v3, "photo_user_show_menu_bar"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1151
    return-void

    .line 1145
    .end local v0    # "isUserShowBar":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportProjection()Z
    .locals 1

    .prologue
    .line 1897
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->needImpunityDeclaration()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected delayDoAfterTransit()V
    .locals 2

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const-string v0, "PhotoPageFragment"

    const-string v1, "delayDoAfterTransit but not added"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$2;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 419
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnTransitEnd()V

    goto :goto_0
.end method

.method protected doExit()V
    .locals 2

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isTransparentTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->isItemVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    invoke-static {}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->viewToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$3;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->doExit()V

    goto :goto_0
.end method

.method protected downloadOrigin(Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V
    .locals 7
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "downloadCallback"    # Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;

    .prologue
    .line 1406
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/ui/PhotoPageFragment$12;

    invoke-direct {v5, p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$12;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V

    new-instance v6, Lcom/miui/gallery/ui/PhotoPageFragment$13;

    invoke-direct {v6, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$13;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 1424
    :goto_0
    return-void

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->access$2300(Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;Ljava/lang/String;ZZ)V

    .line 1422
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->doDownloadOrigin(Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/ui/PhotoPageFragment$DownloadCallback;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 541
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->finishActivity(I)V

    .line 542
    return-void
.end method

.method protected getItemViewInfo(I)Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isTransparentTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getItemViewInfo(I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 279
    invoke-static {}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getInstance()Lcom/miui/gallery/util/photoview/PhotoPageDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/util/photoview/PhotoPageDataCache;->getPageLayout()Landroid/view/View;

    move-result-object v0

    .line 281
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400f5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1101
    const-string v0, "photo"

    return-object v0
.end method

.method protected getPhotoPageInteractionListener()Lcom/miui/gallery/ui/PhotoPageFragmentBase$PhotoPageInteractionListener;
    .locals 1

    .prologue
    .line 371
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageFragment$1;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;)V

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 510
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoPagerHelper;->getCurrentItem()Lcom/miui/gallery/ui/PhotoPageItem;

    move-result-object v0

    .line 511
    .local v0, "item":Lcom/miui/gallery/ui/PhotoPageItem;
    if-eqz v0, :cond_0

    const v1, 0x7f12023e

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const-string v0, "PhotoPageFragment"

    return-object v0
.end method

.method protected getThemeRes()I
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isTransparentTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const v0, 0x7f1100ae

    .line 268
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f1100ad

    goto :goto_0
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 669
    if-eqz p2, :cond_0

    .line 670
    const-string v1, "extra_photo_edit_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "editType":Ljava/lang/String;
    const-string v1, "extra_photo_editor_type_common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->onActivityReenter(Landroid/content/Intent;)V

    .line 685
    .end local v0    # "editType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 675
    .restart local v0    # "editType":Ljava/lang/String;
    :cond_1
    const-string v1, "extra_photo_editor_type_refocus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 676
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    if-eqz v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->onActivityReenter(Landroid/content/Intent;)V

    goto :goto_0

    .line 679
    :cond_2
    const-string v1, "extra_photo_editor_type_re_pick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;

    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->onActivityReenter(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 689
    sparse-switch p1, :sswitch_data_0

    .line 741
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 742
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPagerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 743
    return-void

    .line 691
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->exitSlideShow()V

    goto :goto_0

    .line 696
    :sswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    invoke-virtual {v0, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->onActivityResult(ILandroid/content/Intent;)V

    .line 699
    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "photo_secret_finish"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->finishActivity(I)V

    goto :goto_0

    .line 702
    :cond_2
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNeedConfirmPassWord:Z

    goto :goto_0

    .line 706
    :sswitch_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->onDualPhotoEdited(Landroid/content/Intent;)V

    goto :goto_0

    .line 711
    :sswitch_3
    if-eq p2, v0, :cond_3

    .line 712
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->finishActivity(I)V

    goto :goto_0

    .line 714
    :cond_3
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNeedConfirmPassWord:Z

    goto :goto_0

    .line 718
    :sswitch_4
    if-ne p2, v0, :cond_4

    .line 719
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNeedConfirmPassWord:Z

    goto :goto_0

    .line 721
    :cond_4
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->finishActivity(I)V

    goto :goto_0

    .line 725
    :sswitch_5
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->onActivityResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 730
    :sswitch_6
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;

    invoke-virtual {v0, p2, p3}, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->onActivityResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 735
    :sswitch_7
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVideoPlayerManager:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVideoPlayerManager:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->onActivityResult(Landroid/content/Intent;)V

    .line 737
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageFragment;->setActionBarVisible(Z)V

    goto :goto_0

    .line 689
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x1b -> :sswitch_3
        0x1e -> :sswitch_1
        0x25 -> :sswitch_2
        0x26 -> :sswitch_4
        0x2c -> :sswitch_5
        0x2d -> :sswitch_7
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doExit()V

    .line 506
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2216
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2217
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    if-eqz v0, :cond_0

    .line 2218
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->onUiOrientationChanged(Landroid/content/res/Configuration;)V

    .line 2220
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_1

    .line 2221
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onUiOrientationChanged(Landroid/content/res/Configuration;)V

    .line 2223
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    if-eqz v0, :cond_2

    .line 2224
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->onUiOrientationChanged()V

    .line 2226
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 205
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->parseArguments()Z

    move-result v0

    .line 207
    .local v0, "argValid":Z
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 208
    if-nez v0, :cond_0

    .line 209
    const-string v2, "PhotoPageFragment"

    const-string v3, "params error %s"

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->finish()V

    .line 225
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mStartWhenLocked:Z

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 216
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;

    invoke-direct {v2, p0, v7}, Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mScreenReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;

    .line 217
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mScreenReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.intent.action.SCREEN_OFF"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/ReceiverUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 219
    :cond_1
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;

    invoke-direct {v2, p0, v7}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Lcom/miui/gallery/ui/PhotoPageFragment$1;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPhotoRefreshReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;

    .line 220
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.miui.gallery.SAVE_TO_CLOUD"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPhotoRefreshReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 224
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mIsNightMode:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isPreviewMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    const/4 v2, 0x0

    .line 796
    :goto_0
    return v2

    .line 787
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 788
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f130009

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 789
    const/4 v1, 0x0

    .line 790
    .local v1, "operationMask":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 791
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 792
    const-string/jumbo v2, "support_operation_mask"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 794
    :cond_1
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    invoke-direct {v2, p0, p1, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Landroid/view/Menu;I)V

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    .line 795
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;-><init>(Lcom/miui/gallery/ui/PhotoPageFragment;Landroid/view/Menu;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    .line 796
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V
    .locals 0
    .param p1, "dataSet"    # Lcom/miui/gallery/model/BaseDataSet;
    .param p2, "firstLoad"    # Z

    .prologue
    .line 490
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V

    .line 491
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageFragment;->doDataSetLoaded(Lcom/miui/gallery/model/BaseDataSet;Z)V

    .line 492
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1106
    invoke-static {}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->getInstance()Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->initFirstCacheBitmap()V

    .line 1107
    invoke-static {}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->getInstance()Lcom/miui/gallery/util/photoview/TileReusedBitCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->clear()V

    .line 1108
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mScreenReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mScreenReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$ScreenBroadcastReceiver;

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ReceiverUtils;->safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPhotoRefreshReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPhotoRefreshReceiver:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoRefreshReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    if-eqz v0, :cond_2

    .line 1115
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDualCameraManager:Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$DualCameraManager;->onDestory()V

    .line 1117
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    if-eqz v0, :cond_3

    .line 1118
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->onDestroy()V

    .line 1120
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    if-eqz v0, :cond_4

    .line 1121
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mFavoritesManager:Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$FavoritesManager;->onDestroy()V

    .line 1123
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVideoPlayerManager:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    if-eqz v0, :cond_5

    .line 1124
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mVideoPlayerManager:Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$VideoPlayerManager;->onDestroy()V

    .line 1126
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;

    if-eqz v0, :cond_6

    .line 1127
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->onDestroy()V

    .line 1129
    :cond_6
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    if-eqz v0, :cond_7

    .line 1130
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSpecialTypeManager:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->onDestroy()V

    .line 1132
    :cond_7
    invoke-static {}, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;->getInstance()Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;->clearCache()V

    .line 1133
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isStatUserShowMenuBar()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1134
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->statUserShowMenuBar()V

    .line 1136
    :cond_8
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onDestroy()V

    .line 1137
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 754
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onDestroyView()V

    .line 755
    invoke-static {}, Lcom/miui/gallery/ui/PhotoPagerSamplingStatHelper;->onDestroy()V

    .line 756
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mProjectManager:Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ProjectionManager;->release()V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOrientationManager:Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$OrientationManager;->release()V

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    if-eqz v0, :cond_2

    .line 763
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMaskManager:Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$PhotoMaskManager;->release()V

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_3

    .line 766
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->release()V

    .line 768
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    if-eqz v0, :cond_4

    .line 769
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->release()V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    .line 772
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    if-eqz v0, :cond_5

    .line 773
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mSmartVideoGuideManager:Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$SmartVideoGuideManager;->release()V

    .line 775
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNFCManager:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

    if-eqz v0, :cond_6

    .line 776
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNFCManager:Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;->release()V

    .line 778
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDataLoaded:Z

    .line 779
    return-void
.end method

.method protected onExiting()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 516
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 520
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment;->setActionBarVisible(Z)V

    .line 521
    return-void
.end method

.method public onImageLoadFinish(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mEditorManager:Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$EditorManager;->onImageLoadFinish(Ljava/lang/String;)V

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mRefocusManager:Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$RefocusManager;->onImageLoadFinish(Ljava/lang/String;)V

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;

    if-eqz v0, :cond_2

    .line 1248
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMotionPhotoManager:Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$MotionPhotoManager;->onImageLoadFinish(Ljava/lang/String;)V

    .line 1250
    :cond_2
    return-void
.end method

.method protected onItemChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1235
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onItemChanged(I)V

    .line 1236
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnItemChanged(I)V

    .line 1237
    return-void
.end method

.method protected onItemSettled(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1229
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onItemSettled(I)V

    .line 1230
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnItemSettled(I)V

    .line 1231
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 814
    const-string v0, "PhotoPageFragment"

    const-string v1, "isInMultiWindowMode: %b"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 815
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onMultiWindowModeChanged(Z)V

    .line 818
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 808
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->onMenuItemClick(Landroid/view/MenuItem;)V

    .line 809
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 658
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onPause()V

    .line 659
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnPause()V

    .line 660
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mMenuManager:Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAdapter:Lcom/miui/gallery/adapter/PhotoPageAdapter;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPager:Lcom/miui/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/miui/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/adapter/PhotoPageAdapter;->getDataItem(I)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$MenuManager;->settleItem(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 804
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 664
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onResume()V

    .line 665
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->doOnResume()V

    .line 666
    return-void
.end method

.method protected onShared()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mChoiceManager:Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$ChoiceManager;->onShared()V

    .line 750
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1085
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mNeedConfirmPassWord:Z

    .line 1086
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onStop()V

    .line 1087
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 1091
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onTrimMemory(I)V

    .line 1092
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 1093
    const-string v0, "PhotoPageFragment"

    const-string v1, "onTrimMemory level:%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1094
    invoke-static {}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->getInstance()Lcom/miui/gallery/util/uil/PhotoReusedBitCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/uil/PhotoReusedBitCache;->clear()V

    .line 1095
    invoke-static {}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->getInstance()Lcom/miui/gallery/util/photoview/TileReusedBitCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/TileReusedBitCache;->clear()V

    .line 1097
    :cond_0
    return-void
.end method

.method protected onViewInflated(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 286
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->onViewInflated(Landroid/view/View;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment;->configViewLayout(Landroid/view/View;)V

    .line 292
    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/PhotoPageFragment;->setHasOptionsMenu(Z)V

    .line 294
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->fromRecommendFacePage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnSingleTapListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnTapListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnSingleTapListener;)V

    .line 299
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnPhotoScaleChangeListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnScaleChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnScaleChangedListener;)V

    .line 300
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnPhotoMatrixChangeListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnDisplayRectChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnDisplayRectChangedListener;)V

    .line 301
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mDownloadListener:Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnDownloadListener(Lcom/miui/gallery/util/uil/CloudImageLoadingListener;)V

    .line 302
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mOnExitListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnExitListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnExitListener;)V

    .line 303
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mPagerHelper:Lcom/miui/gallery/ui/PhotoPagerHelper;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mAlphaChangedListener:Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPagerHelper;->setOnAlphaChangedListener(Lcom/miui/gallery/ui/PhotoPagerHelper$OnAlphaChangedListener;)V

    .line 306
    const v1, 0x7f120237

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;

    .line 307
    .local v0, "slip":Lcom/miui/gallery/widget/slip/VerticalSlipLayout;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/widget/slip/VerticalSlipLayout;->setDraggable(Z)V

    .line 309
    new-instance v2, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    const v1, 0x7f120236

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/widget/IMultiThemeView;

    invoke-direct {v2, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;-><init>(Lcom/miui/gallery/widget/IMultiThemeView;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    .line 310
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isFromCamera()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isPreviewMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mThemeManager:Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;

    invoke-virtual {v1, v3, v4}, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->setDarkTheme(ZZ)V

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment;->isShowBarsWhenEntering()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SystemUiUtil;->setLayoutFullScreen(Landroid/view/View;Z)V

    .line 314
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/WindowCompat;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 315
    return-void
.end method
