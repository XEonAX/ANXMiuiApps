.class public Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;
.super Landroid/app/Fragment;
.source "VideoEditorFragment.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/activity/VideoEditorActivity$OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;,
        Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$InitializeListener;,
        Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyVideoLoadCompletedListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurrentTime:I

.field private mData:Landroid/net/Uri;

.field private mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

.field private mIsLoadSuccess:Z

.field public mMenuFragmentCallBack:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

.field private mMenuView:Landroid/view/View;

.field private mMyStateChangeListener:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;

.field private mPlayProgress:I

.field private mProgressingView:Landroid/widget/ProgressBar;

.field private mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

.field private mVideoEditorHelper:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 44
    iput v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mPlayProgress:I

    .line 46
    iput v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mCurrentTime:I

    .line 403
    new-instance v0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$7;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mMenuFragmentCallBack:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    return-void
.end method

.method private AutoTrimAction(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->saveEditState()V

    .line 180
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$6;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->resetProject(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    .line 212
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->playVideoAction()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mProgressingView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->handleNotSupportVideoFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->AutoTrimAction(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mCurrentTime:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mCurrentTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mPlayProgress:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mPlayProgress:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/widget/DisplayWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditorHelper:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mIsLoadSuccess:Z

    return v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mIsLoadSuccess:Z

    return p1
.end method

.method private calculationPreviewSize()V
    .locals 12

    .prologue
    .line 215
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v6

    .line 216
    .local v6, "screenWidth":I
    int-to-float v8, v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    mul-float/2addr v9, v10

    sub-float v7, v8, v9

    .line 217
    .local v7, "width":F
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    div-float v8, v7, v8

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v2, v8

    .line 218
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    .line 219
    .local v5, "paddingBottom":I
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .line 220
    .local v1, "displayPanel":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 221
    .local v0, "displayLps":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 222
    add-int v8, v2, v5

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 223
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mMenuView:Landroid/view/View;

    .line 225
    .local v4, "menuPanel":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 226
    .local v3, "menuLps":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 227
    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenHeight()I

    move-result v8

    iget v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v8, v9

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 228
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    return-void
.end method

.method private handleNotSupportVideoFile()V
    .locals 3

    .prologue
    .line 313
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c054a

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 314
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "file"

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v1, "video_editor"

    const-string/jumbo v2, "video_editor_not_support"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 319
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->exit()V

    .line 320
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mMyStateChangeListener:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->addStateChangeListener(Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$1;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setIvPlayListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$2;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setAutoTrimListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$3;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->addStateChangeListener(Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$4;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$5;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;->setIProgress(Lcom/miui/gallery/video/editor/widget/DisplayWrapper$IProgress;)V

    .line 152
    return-void
.end method

.method private loadData()V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mData:Landroid/net/Uri;

    .line 254
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$InitializeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$InitializeListener;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/video/editor/VideoEditor;->load(Ljava/lang/String;Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->handleNotSupportVideoFile()V

    goto :goto_0
.end method

.method private playVideoAction()V
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mIsLoadSuccess:Z

    if-nez v0, :cond_0

    .line 159
    const-string v0, "VideoEditorFragment"

    const-string/jumbo v1, "the video has not loaded success."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditorHelper:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->onPlayButtonClicked()V

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->play()V

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->resume()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->release()V

    .line 302
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/TempFileCollector;->deleteAllTempFile(Landroid/content/Context;)V

    .line 303
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 304
    return-void
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public getEffectMenuContainerId()I
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoEditor()Lcom/miui/gallery/video/editor/VideoEditor;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 325
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mActivity:Landroid/app/Activity;

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->setOnBackPressedListener(Lcom/miui/gallery/video/editor/activity/VideoEditorActivity$OnBackPressedListener;)V

    .line 329
    :cond_0
    return-void
.end method

.method public onAttachMenuFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "menu"    # Landroid/app/Fragment;

    .prologue
    .line 307
    instance-of v0, p1, Lcom/miui/gallery/video/editor/ui/MenuFragment;

    if-eqz v0, :cond_0

    .line 308
    check-cast p1, Lcom/miui/gallery/video/editor/ui/MenuFragment;

    .end local p1    # "menu":Landroid/app/Fragment;
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mMenuFragmentCallBack:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->setCallBack(Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditorHelper:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "nex"

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/video/editor/VideoEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 58
    const v1, 0x7f040086

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f12017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    .line 60
    const v1, 0x7f120185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mMenuView:Landroid/view/View;

    .line 61
    const v1, 0x7f12017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mProgressingView:Landroid/widget/ProgressBar;

    .line 62
    new-instance v1, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;-><init>(Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$1;)V

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mMyStateChangeListener:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;

    .line 63
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mDisplayWrapperView:Lcom/miui/gallery/video/editor/widget/DisplayWrapper;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/video/editor/VideoEditor;->setDisplayWrapper(Lcom/miui/gallery/video/editor/widget/DisplayWrapper;)V

    .line 64
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->loadData()V

    .line 65
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->calculationPreviewSize()V

    .line 66
    new-instance v1, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;-><init>(Landroid/content/Context;Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;)V

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditorHelper:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    .line 67
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditorHelper:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->showNavEditMenu()V

    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->initListener()V

    .line 69
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 359
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mMyStateChangeListener:Lcom/miui/gallery/video/editor/ui/VideoEditorFragment$MyStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->removeStateChangeListener(Lcom/miui/gallery/video/editor/VideoEditor$StateChangeListener;)V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditorHelper:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditorHelper:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->onDestroy()V

    .line 366
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/TempFileCollector;->deleteAllTempFile(Landroid/content/Context;)V

    .line 367
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 345
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/activity/VideoEditorActivity;->setOnBackPressedListener(Lcom/miui/gallery/video/editor/activity/VideoEditorActivity$OnBackPressedListener;)V

    .line 348
    :cond_0
    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mActivity:Landroid/app/Activity;

    .line 349
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 245
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->pause()V

    .line 248
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    .line 249
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "video_editor"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->startPreview()V

    .line 237
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 238
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mVideoEditorHelper:Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->updatePlayView()V

    .line 239
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/VideoEditorFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "video_editor"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 240
    return-void
.end method
