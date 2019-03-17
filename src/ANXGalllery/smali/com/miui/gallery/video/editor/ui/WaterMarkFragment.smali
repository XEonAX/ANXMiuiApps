.class public Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
.super Lcom/miui/gallery/video/editor/ui/MenuFragment;
.source "WaterMarkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;
    }
.end annotation


# instance fields
.field private final AUTO_TEXT_WATER_MARK_INDEX:I

.field private mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

.field private mAllActionButton:Landroid/widget/TextView;

.field private mAutoText:Landroid/widget/EditText;

.field private mDownloadingTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

.field private mEndActionButton:Landroid/widget/TextView;

.field private mInputText:Ljava/lang/String;

.field private mIsKeyboardShowing:Z

.field private mIvCancel:Landroid/widget/ImageView;

.field private mIvOk:Landroid/widget/ImageView;

.field private mLastSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mPopWindowEnterAnimTime:J

.field private mSavedSelectedWaterMarkIndex:I

.field private mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

.field private mSelectedTextTime:I

.field private mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

.field private mStartActionButton:Landroid/widget/TextView;

.field private mTextAppearAnimator:Landroid/animation/ObjectAnimator;

.field private mTextCancel:Landroid/widget/ImageView;

.field private mTextEditable:Z

.field private mTextPopWindow:Landroid/widget/PopupWindow;

.field private mTextRoot:Landroid/view/View;

.field private mTextSave:Landroid/widget/ImageView;

.field private mTextStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/video/editor/TextStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

.field private mWaterMarkManager:Lcom/miui/gallery/video/editor/manager/WaterMarkManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;-><init>()V

    .line 60
    const-wide/16 v0, 0x118

    iput-wide v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mPopWindowEnterAnimTime:J

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->AUTO_TEXT_WATER_MARK_INDEX:I

    .line 63
    iput v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mInputText:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    .line 85
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIsKeyboardShowing:Z

    .line 86
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextEditable:Z

    .line 637
    new-instance v0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;

    invoke-direct {v0, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$11;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/TextStyle;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mLastSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/TextStyle;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/TextStyle;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateSelectedItemPosition(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnState()V

    return-void
.end method

.method static synthetic access$1502(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;)Lcom/miui/gallery/video/editor/TextStyle;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # Lcom/miui/gallery/video/editor/TextStyle;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mDownloadingTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mInputText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateEffectInfo()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->applyPlay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->showEditPopWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->showSoftInput()V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIsKeyboardShowing:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIsKeyboardShowing:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->dismissTextPopWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/manager/WaterMarkManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mWaterMarkManager:Lcom/miui/gallery/video/editor/manager/WaterMarkManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSavedSelectedWaterMarkIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->hasOtherItemDownloading()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnTitle(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextEditable:Z

    return v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextEditable:Z

    return p1
.end method

.method private applyPlay()Z
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$9;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$9;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v0

    return v0
.end method

.method private dismissTextPopWindow()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 427
    return-void
.end method

.method private hasOtherItemDownloading()Z
    .locals 3

    .prologue
    .line 568
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/TextStyle;

    .line 570
    .local v0, "textStyle":Lcom/miui/gallery/video/editor/TextStyle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    const/4 v1, 0x1

    .line 575
    .end local v0    # "textStyle":Lcom/miui/gallery/video/editor/TextStyle;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 478
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private initEditPopWindow()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040178

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    const v1, 0x7f1202d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    const v1, 0x7f1202c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextCancel:Landroid/widget/ImageView;

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    const v1, 0x7f1202ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextSave:Landroid/widget/ImageView;

    .line 135
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    invoke-direct {v0, v1, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextSave:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method private initEnterAnim()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 436
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    if-nez v3, :cond_0

    .line 471
    :goto_0
    return-void

    .line 439
    :cond_0
    new-instance v3, Landroid/animation/ObjectAnimator;

    invoke-direct {v3}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 440
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 441
    .local v1, "distance":I
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    int-to-float v5, v1

    aput v5, v4, v7

    const/4 v5, 0x0

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 442
    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 443
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    new-array v4, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 444
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 445
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x118

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 446
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$7;

    invoke-direct {v4, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$7;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 470
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .line 442
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mStartActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mEndActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIvCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$1;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIvOk:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$2;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method private initRecylerView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 118
    const v0, 0x7f1202c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    .line 119
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4, v4}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 121
    new-instance v0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$MyTextItemSelectChangeListener;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->setItemSelectChangeListener(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b039c

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/video/editor/ui/SimpleRecyclerView$BlankDivider;-><init>(Landroid/content/res/Resources;II)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/HorizontalOverScrollBounceEffectDecorator;->setOverScrollEffect(Landroid/support/v7/widget/RecyclerView;)V

    .line 126
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    iget v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSavedSelectedWaterMarkIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->setSelectedItemPosition(I)V

    .line 127
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSavedSelectedWaterMarkIndex:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnTitle(I)V

    .line 128
    return-void
.end method

.method private refreshData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/VideoEditorBaseLocalResource;>;"
    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    iget-object v4, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;->getLocalTemplateEntities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 220
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/model/LocalResource;>;"
    if-eqz p1, :cond_0

    .line 221
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 224
    new-instance v0, Lcom/miui/gallery/video/editor/model/LocalResource;

    const v3, 0x7f020355

    const-string/jumbo v4, "ve_type_local"

    invoke-direct {v0, v3, v4}, Lcom/miui/gallery/video/editor/model/LocalResource;-><init>(ILjava/lang/String;)V

    .line 225
    .local v0, "localResource":Lcom/miui/gallery/video/editor/model/LocalResource;
    const/4 v3, 0x1

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 227
    .end local v0    # "localResource":Lcom/miui/gallery/video/editor/model/LocalResource;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v2, "styleArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/video/editor/TextStyle;>;"
    invoke-static {v1}, Lcom/miui/gallery/video/editor/model/VedioEditorModuleAdapter;->loadWaterMarks(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 229
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getInstance()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$4;

    invoke-direct {v4, p0, v2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$4;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->loadWaterMarkTemplateList(Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadWaterMarkListener;)V

    .line 246
    return-void
.end method

.method private showEditPopWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 430
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 431
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSingleChoiceRecycleView:Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 432
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 433
    return-void
.end method

.method private showSoftInput()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 488
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 489
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$8;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$8;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateBottomBtnState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mStartActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mEndActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    if-ne v0, v3, :cond_2

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mStartActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mEndActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 153
    :cond_2
    iget v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mStartActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mEndActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateBottomBtnTitle(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 629
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const v0, 0x7f0c0577

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 633
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mEndActionButton:Landroid/widget/TextView;

    if-nez p1, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mStartActionButton:Landroid/widget/TextView;

    if-nez p1, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    return-void

    .line 632
    :cond_1
    const v0, 0x7f0c0569

    goto :goto_0

    .line 633
    :cond_2
    const v0, 0x7f0c056a

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 634
    :cond_3
    const v0, 0x7f0c056f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private updateEffectInfo()V
    .locals 4

    .prologue
    .line 527
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/TextStyle;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mInputText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateWithInputNoText()V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setWarterMark(ILjava/lang/String;)Z

    .line 533
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mInputText:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setAutoWaterMark(Ljava/lang/String;I)Z

    .line 534
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 535
    .local v0, "index":I
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateSelectedItemPosition(I)V

    .line 536
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnTitle(I)V

    .line 537
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextEditable:Z

    goto :goto_0

    .line 540
    .end local v0    # "index":I
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/TextStyle;->isNone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const-string v2, ""

    iget v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setAutoWaterMark(Ljava/lang/String;I)Z

    .line 542
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setWarterMark(ILjava/lang/String;)Z

    goto :goto_0

    .line 543
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/TextStyle;->isExtra()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/TextStyle;->getTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setWarterMark(ILjava/lang/String;)Z

    goto :goto_0
.end method

.method private updateSelectedItemPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 561
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->setSelectedItemPosition(I)V

    .line 563
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->clearLastSelectedPostion()V

    .line 565
    :cond_0
    return-void
.end method

.method private updateWithInputNoText()V
    .locals 4

    .prologue
    .line 507
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    if-nez v1, :cond_0

    .line 524
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v0

    .line 511
    .local v0, "index":I
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mLastSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mLastSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/TextStyle;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 512
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateSelectedItemPosition(I)V

    .line 513
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnTitle(I)V

    .line 514
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const-string v2, ""

    iget v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setAutoWaterMark(Ljava/lang/String;I)Z

    goto :goto_0

    .line 518
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mLastSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    .line 519
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextStyles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 520
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateSelectedItemPosition(I)V

    .line 521
    invoke-direct {p0, v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnTitle(I)V

    .line 522
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    const-string v2, ""

    iget v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setAutoWaterMark(Ljava/lang/String;I)Z

    .line 523
    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    iget v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/TextStyle;->getTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/VideoEditor;->setWarterMark(ILjava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public doApply()Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-nez v0, :cond_0

    .line 271
    const-string v0, "WaterMarkFragment"

    const-string v1, "doApply: videoEditor is null."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$5;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public doCancel()Z
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    if-nez v0, :cond_0

    .line 292
    const-string v0, "WaterMarkFragment"

    const-string v1, "doCancel: videoEditor is null."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/VideoEditor;->restoreEditState()V

    .line 296
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditor:Lcom/miui/gallery/video/editor/VideoEditor;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$6;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/VideoEditor;->apply(Lcom/miui/gallery/video/editor/VideoEditor$OnCompletedListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentEffect()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getTextStyle(I)Lcom/miui/gallery/video/editor/TextStyle;

    move-result-object v1

    .line 260
    .local v1, "textStyle":Lcom/miui/gallery/video/editor/TextStyle;
    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/TextStyle;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "effectName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 265
    .end local v0    # "effectName":Ljava/lang/String;
    .end local v1    # "textStyle":Lcom/miui/gallery/video/editor/TextStyle;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEffectId()I
    .locals 1

    .prologue
    .line 311
    const v0, 0x7f120038

    return v0
.end method

.method public loadResourceData()V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/miui/gallery/video/editor/factory/WaterMartFactory;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/factory/WaterMartFactory;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    .line 181
    new-instance v0, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->getEffectId()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mModuleFactory:Lcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;-><init>(ILcom/miui/gallery/video/editor/factory/VideoEditorModuleFactory;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    .line 182
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    new-instance v1, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$3;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->execute(Lcom/miui/gallery/net/base/ResponseListener;)V

    .line 216
    return-void
.end method

.method public notifyDateSetChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 319
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1202da

    if-ne v0, v1, :cond_1

    .line 324
    iput v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    .line 325
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnState()V

    .line 326
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateEffectInfo()V

    .line 347
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->applyPlay()Z

    .line 348
    return-void

    .line 327
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1202dc

    if-ne v0, v1, :cond_2

    .line 328
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    .line 329
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnState()V

    .line 330
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateEffectInfo()V

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1202db

    if-ne v0, v1, :cond_3

    .line 332
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSelectedTextTime:I

    .line 333
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnState()V

    .line 334
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateEffectInfo()V

    goto :goto_0

    .line 335
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1202ca

    if-ne v0, v1, :cond_4

    .line 336
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIsKeyboardShowing:Z

    .line 337
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAutoText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mInputText:Ljava/lang/String;

    .line 338
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateEffectInfo()V

    .line 339
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->hideSoftInput()V

    .line 340
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->dismissTextPopWindow()V

    goto :goto_0

    .line 341
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1202c8

    if-ne v0, v1, :cond_0

    .line 342
    iput-boolean v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIsKeyboardShowing:Z

    .line 343
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateEffectInfo()V

    .line 344
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->hideSoftInput()V

    .line 345
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->dismissTextPopWindow()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    new-instance v0, Lcom/miui/gallery/video/editor/manager/WaterMarkManager;

    invoke-direct {v0}, Lcom/miui/gallery/video/editor/manager/WaterMarkManager;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mWaterMarkManager:Lcom/miui/gallery/video/editor/manager/WaterMarkManager;

    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->loadResourceData()V

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    const v1, 0x7f040177

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 603
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mDownloadingTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mDownloadingTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mDownloadingTextStyle:Lcom/miui/gallery/video/editor/TextStyle;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/miui/gallery/video/editor/TextStyle;->setDownloadState(I)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->setItemSelectChangeListener(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$ItemSelectChangeListener;)V

    .line 608
    iput-object v2, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mVideoEditorResourceRequest:Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/net/VideoEditorResourceRequest;->cancel()V

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 614
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 616
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    .line 617
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 619
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    .line 620
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 621
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 623
    :cond_5
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mInputText:Ljava/lang/String;

    .line 624
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->cancelRequest()V

    .line 625
    invoke-super {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onDestroyView()V

    .line 626
    return-void
.end method

.method public onDownlaodCompleted(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;I)V
    .locals 4
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;
    .param p2, "position"    # I

    .prologue
    .line 580
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/video/editor/TextStyle;

    .line 581
    .local v0, "textStyle":Lcom/miui/gallery/video/editor/TextStyle;
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getInstance()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getAssetId()I

    move-result v2

    new-instance v3, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$10;

    invoke-direct {v3, p0, v0, p2}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$10;-><init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;Lcom/miui/gallery/video/editor/TextStyle;I)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->installWaterMarkAssetPackageToSdk(ILcom/miui/gallery/video/editor/manager/NexAssetTemplateManager$ILoadAssetTemplate;)V

    .line 599
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onPause()V

    .line 251
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->hideSoftInput()V

    .line 252
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mTextPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIsKeyboardShowing:Z

    .line 254
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f1202da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mStartActionButton:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f1202dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mEndActionButton:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f1202db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAllActionButton:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f1202e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIvCancel:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f1202e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mIvOk:Landroid/widget/ImageView;

    .line 110
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->initRecylerView(Landroid/view/View;)V

    .line 111
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->updateBottomBtnState()V

    .line 112
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->initListener()V

    .line 113
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->initEditPopWindow()V

    .line 114
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->initEnterAnim()V

    .line 115
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 502
    invoke-super {p0, p1}, Lcom/miui/gallery/video/editor/ui/MenuFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 503
    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mAdapter:Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->mSavedSelectedWaterMarkIndex:I

    .line 504
    return-void
.end method
