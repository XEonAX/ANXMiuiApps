.class public Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;
.super Lcom/miui/gallery/activity/BaseActivity;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/activity/VideoEditorActivity$OnBackPressedListener;
    }
.end annotation


# instance fields
.field private mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

.field private mOnBackPressedListener:Lcom/miui/gallery/video/editor/activity/VideoEditorActivity$OnBackPressedListener;

.field private mVideoEditorFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/activity/BaseActivity;-><init>()V

    .line 105
    return-void
.end method

.method private initScreenBrightness()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 35
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 36
    const-string v3, "photo-brightness-manual"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    .line 37
    .local v2, "manualBrightness":F
    const-string v3, "photo-brightness-auto"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    .line 38
    .local v0, "autoBrightness":F
    cmpl-float v3, v2, v5

    if-gez v3, :cond_0

    cmpl-float v3, v0, v5

    if-ltz v3, :cond_1

    .line 39
    :cond_0
    new-instance v3, Lcom/miui/gallery/view/BrightnessManager;

    invoke-direct {v3, p0, v2, v0}, Lcom/miui/gallery/view/BrightnessManager;-><init>(Landroid/app/Activity;FF)V

    iput-object v3, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    .line 42
    .end local v0    # "autoBrightness":F
    .end local v2    # "manualBrightness":F
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 80
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 81
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->loadVideoEditorFragment()V

    .line 83
    return-void
.end method


# virtual methods
.method protected hasCustomContentView()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public loadVideoEditorFragment()V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mVideoEditorFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f120085

    iget-object v2, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mVideoEditorFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 95
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 100
    instance-of v0, p1, Lcom/miui/gallery/video/editor/ui/MenuFragment;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mVideoEditorFragment:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->onAttachMenuFragment(Landroid/app/Fragment;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mOnBackPressedListener:Lcom/miui/gallery/video/editor/activity/VideoEditorActivity$OnBackPressedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mOnBackPressedListener:Lcom/miui/gallery/video/editor/activity/VideoEditorActivity$OnBackPressedListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity$OnBackPressedListener;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onBackPressed()V

    .line 77
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/miui/gallery/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/WindowCompat;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 28
    invoke-static {p0}, Lcom/miui/gallery/video/editor/config/VideoEditorConfig;->init(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->initView()V

    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->initScreenBrightness()V

    .line 31
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onPause()V

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v0}, Lcom/miui/gallery/view/BrightnessManager;->onPause()V

    .line 58
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/miui/gallery/activity/BaseActivity;->onResume()V

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v0}, Lcom/miui/gallery/view/BrightnessManager;->onResume()V

    .line 50
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mBrightnessManager:Lcom/miui/gallery/view/BrightnessManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/view/BrightnessManager;->onWindowFocusChanged(Z)V

    .line 66
    :cond_0
    return-void
.end method

.method public setOnBackPressedListener(Lcom/miui/gallery/video/editor/activity/VideoEditorActivity$OnBackPressedListener;)V
    .locals 0
    .param p1, "onBackPressedListener"    # Lcom/miui/gallery/video/editor/activity/VideoEditorActivity$OnBackPressedListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->mOnBackPressedListener:Lcom/miui/gallery/video/editor/activity/VideoEditorActivity$OnBackPressedListener;

    .line 70
    return-void
.end method
