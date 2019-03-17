.class public Lcom/xiaomi/scanner/app/AppUI;
.super Ljava/lang/Object;
.source "AppUI.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/xiaomi/scanner/ui/BottomModuleContainer$ModuleSelectListener;
.implements Lcom/xiaomi/scanner/ui/MessageDispatcher;
.implements Lcom/xiaomi/scanner/ui/FunctionUI;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final mAppRootView:Landroid/widget/FrameLayout;

.field private mBottomCover:Landroid/view/View;

.field private mBottomModuleView:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/xiaomi/scanner/app/AppController;

.field private mDisableAllUserInteractions:Z

.field private mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

.field private mFullScreenUI:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;

.field private mModuleUI:Landroid/widget/FrameLayout;

.field private mPickerButton:Landroid/widget/ImageView;

.field private final mPreviewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

.field private mProgressDialog:Lmiui/app/ProgressDialog;

.field private mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mTextureView:Landroid/view/TextureView;

.field private mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

.field private mTitleView:Landroid/widget/TextView;

.field private mTranslateWordLock:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "AppUI"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/AppController;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "controller"    # Lcom/xiaomi/scanner/app/AppController;
    .param p2, "appRootView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/xiaomi/scanner/app/AppUI$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/AppUI$1;-><init>(Lcom/xiaomi/scanner/app/AppUI;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    move-object v0, p1

    .line 247
    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    .line 248
    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    .line 249
    iput-object p2, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    .line 250
    invoke-direct {p0, p2}, Lcom/xiaomi/scanner/app/AppUI;->initView(Landroid/widget/FrameLayout;)V

    .line 251
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->updateBottomCover()V

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/app/AppUI;)Lcom/xiaomi/scanner/ui/PreviewStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/app/AppUI;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    return-object v0
.end method

.method private initView(Landroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "root"    # Landroid/widget/FrameLayout;

    .prologue
    .line 217
    const v2, 0x7f0d0089

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/ui/ShutterButton;

    iput-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

    .line 218
    const v2, 0x7f0d0091

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomCover:Landroid/view/View;

    .line 219
    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomCover:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 220
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getNavigationBarHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 222
    const v2, 0x7f0d008a

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    .line 223
    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v2, 0x7f0d008e

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 225
    .local v1, "topMoreView":Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v2, 0x7f0d0088

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    iput-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleView:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    .line 227
    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleView:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    invoke-virtual {v2, p0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->setModuleSelectListener(Lcom/xiaomi/scanner/ui/BottomModuleContainer$ModuleSelectListener;)V

    .line 228
    const v2, 0x7f0d008f

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mTitleView:Landroid/widget/TextView;

    .line 229
    const v2, 0x7f0d008d

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/ui/FlashButton;

    iput-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    .line 230
    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    invoke-virtual {v2, p0}, Lcom/xiaomi/scanner/ui/FlashButton;->setOnTurnFlashListener(Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;)V

    .line 231
    const v2, 0x7f0d008b

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mPickerButton:Landroid/widget/ImageView;

    .line 232
    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mPickerButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    const v3, 0x7f0d008c

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mModuleUI:Landroid/widget/FrameLayout;

    .line 235
    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    const v3, 0x7f0d0090

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;

    iput-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mFullScreenUI:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;

    .line 236
    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mFullScreenUI:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;

    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-virtual {v2, v3}, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->setVisibleChangeListener(Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;)V

    .line 237
    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    const v3, 0x7f0d0087

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureView:Landroid/view/TextureView;

    .line 238
    return-void
.end method

.method private onPreviewListenerChanged()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    .line 313
    invoke-interface {v1}, Lcom/xiaomi/scanner/ui/PreviewStatusListener;->shouldAutoAdjustTransformMatrixOnLayout()Z

    move-result v1

    .line 312
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setAutoAdjustTransform(Z)V

    .line 314
    return-void
.end method

.method private turnFlash(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/app/AppController;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->turnTorchOn()Z

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/FlashButton;->setEnabled(Z)V

    .line 200
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/app/AppController;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->turnTorchOff()Z

    goto :goto_0
.end method


# virtual methods
.method public addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;
    .param p2, "remove"    # Z

    .prologue
    .line 483
    if-eqz p2, :cond_0

    .line 484
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/ShutterButton;->removeOnShutterButtonListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;)V

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/ShutterButton;->addOnShutterButtonListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;)V

    goto :goto_0
.end method

.method public addOrUpdateModuleList(Ljava/util/List;I)V
    .locals 1
    .param p2, "moduleId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "baseInfoss":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;>;"
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleView:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleView:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->addModuleItemList(Ljava/util/List;I)V

    .line 258
    :cond_0
    return-void
.end method

.method public addPreviewAreaChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->addPreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 322
    return-void
.end method

.method public clearModuleUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mModuleUI:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mModuleUI:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFullScreenUI:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFullScreenUI:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->removeAllViews()V

    .line 372
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFullScreenUI:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->setVisibility(I)V

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/scanner/app/AppUI;->addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V

    .line 376
    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/app/AppUI;->setInPictureTakenState(Z)V

    .line 377
    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/app/AppUI;->setTitle(I)V

    .line 378
    return-void
.end method

.method public createOrUpdateBottomUi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/app/AppController;->isOnlyBusinessCardScan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleView:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->setVisibility(I)V

    .line 349
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->updateOverlayUI()V

    .line 350
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/scanner/app/AppUI;->addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V

    .line 351
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleView:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    invoke-virtual {v0, v2}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method public declared-synchronized dismissProgress()V
    .locals 1

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiui/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :cond_0
    monitor-exit p0

    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 99
    packed-switch p3, :pswitch_data_0

    .line 114
    sget-object v2, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 101
    :pswitch_0
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v1, p1, p2, p4, p5}, Lcom/xiaomi/scanner/app/AppController;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v2}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v0

    .line 105
    .local v0, "controller":Lcom/xiaomi/scanner/module/ModuleController;
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1, p2, p4, p5}, Lcom/xiaomi/scanner/module/ModuleController;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 111
    .end local v0    # "controller":Lcom/xiaomi/scanner/module/ModuleController;
    :pswitch_2
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/xiaomi/scanner/app/AppUI;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getModuleRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->getPreviewHeight()I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->getPreviewWidth()I

    move-result v0

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isProgressShowing()Z
    .locals 1

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShutterButtonEnabled()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ShutterButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 185
    :goto_0
    :pswitch_0
    return-void

    .line 143
    :pswitch_1
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    if-nez v3, :cond_0

    .line 144
    sget-object v3, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "top_panel_picker click control null"

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v3}, Lcom/xiaomi/scanner/app/AppController;->isPrerequisiteSatisfied()Z

    move-result v3

    if-nez v3, :cond_1

    .line 148
    const v3, 0x7f070080

    invoke-static {v3}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v3}, Lcom/xiaomi/scanner/app/AppController;->isSdkReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    const v3, 0x7f070098

    invoke-static {v3}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v3}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v1

    .line 157
    .local v1, "currentModule":Lcom/xiaomi/scanner/module/ModuleController;
    if-nez v1, :cond_3

    .line 158
    sget-object v3, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "top_panel_picker click module null"

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_3
    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleController;->doPrething()V

    .line 162
    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleController;->selectPhotoClick()V

    .line 163
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {v3}, Lcom/xiaomi/scanner/util/AppJumpUtils;->requestDecodeImage(Lcom/xiaomi/scanner/app/ScanActivity;)V

    goto :goto_0

    .line 166
    .end local v1    # "currentModule":Lcom/xiaomi/scanner/module/ModuleController;
    :pswitch_2
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/scanner/setting/SettingActivity;->showSetting(Landroid/content/Context;)V

    goto :goto_0

    .line 169
    :pswitch_3
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0700b2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    .local v0, "currentLock":Z
    if-eqz v0, :cond_4

    .line 172
    const-string v3, "translate_auto_unlock"

    invoke-static {v3}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    const v4, 0x7f0700b1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 175
    const v2, 0x7f0700b1

    .line 180
    .local v2, "nextId":I
    :goto_1
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v4, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    if-nez v0, :cond_5

    const/4 v3, 0x1

    :goto_2
    invoke-interface {v4, v3}, Lcom/xiaomi/scanner/app/AppController;->updateWordTranslateUI(Z)V

    goto/16 :goto_0

    .line 177
    .end local v2    # "nextId":I
    :cond_4
    const-string v3, "translate_auto_lock"

    invoke-static {v3}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 178
    const v2, 0x7f0700b2

    .restart local v2    # "nextId":I
    goto :goto_1

    .line 182
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d008a
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->isProgressShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->dismissProgress()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 285
    :cond_1
    iput-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureView:Landroid/view/TextureView;

    .line 286
    return-void
.end method

.method public onModuleSelect(I)V
    .locals 5
    .param p1, "moduleId"    # I

    .prologue
    const/4 v4, 0x0

    .line 551
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    if-nez v1, :cond_1

    .line 552
    sget-object v1, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "switch to onModuleSelect control null "

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v1}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleIndex()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 556
    sget-object v1, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch to module "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0, v4}, Lcom/xiaomi/scanner/app/AppUI;->updateLockText(Z)V

    .line 558
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v1, p1}, Lcom/xiaomi/scanner/app/AppController;->onModuleSelected(I)V

    .line 559
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->updateOverlayUI()V

    .line 561
    const-string v1, "defaultFunctionSelect"

    invoke-static {v1, v4}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 562
    .local v0, "saveFunction":I
    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 563
    const-string v1, "lastUseModuleId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPreviewStarted()V
    .locals 2

    .prologue
    .line 384
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public onSettingChanged(Lcom/xiaomi/scanner/settings/SettingsManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "settingsManager"    # Lcom/xiaomi/scanner/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 492
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 405
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "onSurfaceTextureAvailable: %d x %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 407
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/scanner/ui/PreviewStatusListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onSurfaceTextureAvailable: no listener!"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 425
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/ui/PreviewStatusListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    .line 433
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 416
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onSurfaceTextureSizeChanged: %d x %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 417
    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 418
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/scanner/ui/PreviewStatusListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 421
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 439
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/ui/PreviewStatusListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 442
    :cond_0
    return-void
.end method

.method public onTurnFlash(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/AppUI;->turnFlash(Z)V

    .line 571
    const-string v1, "light_click"

    if-eqz p1, :cond_0

    const-string v0, "open"

    :goto_0
    invoke-static {v1, v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->recordWithParamEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void

    .line 571
    :cond_0
    const-string v0, "close"

    goto :goto_0
.end method

.method public prepareModuleUI()V
    .locals 3

    .prologue
    .line 333
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleListBySortId()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v1}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/scanner/app/AppUI;->addOrUpdateModuleList(Ljava/util/List;I)V

    .line 335
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/app/AppController;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/settings/SettingsManager;->addListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)V

    .line 336
    new-instance v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v2}, Lcom/xiaomi/scanner/app/AppController;->getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/camera/TextureViewHelper;-><init>(Landroid/view/TextureView;Lcom/xiaomi/scanner/camera/CameraProvider;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    .line 337
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 338
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 340
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->createOrUpdateBottomUi()V

    .line 341
    return-void
.end method

.method public removePreviewAreaChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->removePreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 330
    return-void
.end method

.method public resetFlashState()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/FlashButton;->resetFlashView()V

    .line 191
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->updateOverlayUI()V

    .line 272
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->resetFlashState()V

    .line 273
    return-void
.end method

.method public setDisableAllUserInteractions(Z)V
    .locals 3
    .param p1, "disable"    # Z

    .prologue
    .line 389
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisableAllUserInteractions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mDisableAllUserInteractions:Z

    .line 391
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/AppUI;->setShutterButtonEnabled(Z)V

    .line 392
    return-void

    .line 391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInPictureTakenState(Z)V
    .locals 4
    .param p1, "inPictureState"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleView:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    if-eqz v0, :cond_0

    .line 456
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleView:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->setCanScrollByTakePic(Z)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    if-eqz v0, :cond_1

    .line 459
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/xiaomi/scanner/ui/FlashButton;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPickerButton:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 462
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 456
    goto :goto_0

    :cond_3
    move v0, v2

    .line 459
    goto :goto_1

    :cond_4
    move v1, v2

    .line 460
    goto :goto_2
.end method

.method public setMessageDispatcher(Lcom/xiaomi/scanner/ui/MessageDispatcher;)V
    .locals 4
    .param p1, "p"    # Lcom/xiaomi/scanner/ui/MessageDispatcher;

    .prologue
    .line 126
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 127
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 128
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/xiaomi/scanner/ui/FunctionUI;

    if-eqz v3, :cond_0

    .line 130
    check-cast v0, Lcom/xiaomi/scanner/ui/FunctionUI;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/ui/FunctionUI;->setMessageDispatcher(Lcom/xiaomi/scanner/ui/MessageDispatcher;)V

    .line 127
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    return-void
.end method

.method public setPreviewStatusListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener;)V
    .locals 1
    .param p1, "previewStatusListener"    # Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    .line 306
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/AppUI;->onPreviewListenerChanged()V

    .line 309
    :cond_0
    return-void
.end method

.method public setShutterButtonEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 447
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShutterButtonEnabled: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disableAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mDisableAllUserInteractions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 449
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mDisableAllUserInteractions:Z

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/ShutterButton;->setEnabled(Z)V

    .line 452
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 474
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 475
    if-lez p1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTitleView:Landroid/widget/TextView;

    if-lez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    :cond_1
    return-void

    .line 478
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showProgressView(II)V
    .locals 1
    .param p1, "msgResId"    # I
    .param p2, "vendorResId"    # I

    .prologue
    .line 496
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(IILandroid/content/DialogInterface$OnKeyListener;)V

    .line 497
    return-void
.end method

.method public showProgressView(IILandroid/content/DialogInterface$OnKeyListener;)V
    .locals 4
    .param p1, "msgResId"    # I
    .param p2, "vendorResId"    # I
    .param p3, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    const/4 v2, 0x0

    .line 504
    iget-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 505
    .local v1, "res":Landroid/content/res/Resources;
    if-nez p1, :cond_0

    move-object v0, v2

    .line 506
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    .line 507
    .local v2, "vendor":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v0, v2, p3}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnKeyListener;)V

    .line 508
    return-void

    .line 505
    .end local v0    # "msg":Ljava/lang/String;
    .end local v2    # "vendor":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 506
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public showProgressView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "vendorInfo"    # Ljava/lang/String;

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnKeyListener;)V

    .line 501
    return-void
.end method

.method public declared-synchronized showProgressView(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "vendorInfo"    # Ljava/lang/String;
    .param p3, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->cancel()V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 518
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, p2, p1, v1, v2}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiui/app/ProgressDialog;

    .line 519
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 520
    if-eqz p3, :cond_1

    .line 521
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, p3}, Lmiui/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateBottomCover()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomCover:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomCover:Landroid/view/View;

    sget-boolean v0, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isFullScreenDevice()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_0
    return-void

    .line 262
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateLockText(Z)V
    .locals 2
    .param p1, "hasWordResult"    # Z

    .prologue
    .line 526
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 528
    return-void

    .line 526
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateOverlayUI()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v1}, Lcom/xiaomi/scanner/app/AppController;->isCaptureNeeded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/ShutterButton;->setEnabled(Z)V

    .line 470
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mPickerButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/app/AppController;->isPickerNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    return-void

    .line 470
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updateAspectRatio(F)V

    .line 204
    return-void
.end method

.method public updatePreviewTransform(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updateTransform(Landroid/graphics/Matrix;)V

    .line 214
    return-void
.end method

.method public updateTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleView:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleView:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 244
    :cond_0
    return-void
.end method
