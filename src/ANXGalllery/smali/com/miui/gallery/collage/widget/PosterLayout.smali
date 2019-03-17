.class public Lcom/miui/gallery/collage/widget/PosterLayout;
.super Landroid/view/ViewGroup;
.source "PosterLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;,
        Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;,
        Lcom/miui/gallery/collage/widget/PosterLayout$AnimListener;,
        Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final DEFAULT_LAYOUT_PARAMS:[F


# instance fields
.field private mActiveTextEditorHolder:Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

.field private mContext:Landroid/content/Context;

.field private mGesListener:Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mPaint:Landroid/graphics/Paint;

.field private mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mTextAnimator:Landroid/animation/ValueAnimator;

.field private mTextEditDialog:Lcom/miui/gallery/collage/utils/TextEditDialog;

.field private mTextWatch:Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/collage/widget/PosterLayout;->DEFAULT_LAYOUT_PARAMS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mRectTemp:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;-><init>(Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/widget/PosterLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mGesListener:Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;

    .line 35
    new-instance v0, Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-direct {v0}, Lcom/miui/gallery/collage/utils/TextEditDialog;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextEditDialog:Lcom/miui/gallery/collage/utils/TextEditDialog;

    .line 36
    new-instance v0, Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;-><init>(Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/widget/PosterLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextWatch:Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;

    .line 42
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/PosterLayout;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mRectTemp:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;-><init>(Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/widget/PosterLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mGesListener:Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;

    .line 35
    new-instance v0, Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-direct {v0}, Lcom/miui/gallery/collage/utils/TextEditDialog;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextEditDialog:Lcom/miui/gallery/collage/utils/TextEditDialog;

    .line 36
    new-instance v0, Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;-><init>(Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/widget/PosterLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextWatch:Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;

    .line 47
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/PosterLayout;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mRectTemp:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;-><init>(Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/widget/PosterLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mGesListener:Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;

    .line 35
    new-instance v0, Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-direct {v0}, Lcom/miui/gallery/collage/utils/TextEditDialog;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextEditDialog:Lcom/miui/gallery/collage/utils/TextEditDialog;

    .line 36
    new-instance v0, Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;-><init>(Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/widget/PosterLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextWatch:Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;

    .line 52
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/PosterLayout;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/collage/widget/PosterLayout;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/PosterLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mRectTemp:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/collage/widget/PosterLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/PosterLayout;
    .param p1, "x1"    # F

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/PosterLayout;->setTextAnimProgress(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/collage/widget/PosterLayout;)Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/PosterLayout;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mActiveTextEditorHolder:Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;)Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/PosterLayout;
    .param p1, "x1"    # Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mActiveTextEditorHolder:Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/collage/widget/PosterLayout;Ljava/lang/String;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/PosterLayout;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/collage/widget/PosterLayout;->showDialog(Ljava/lang/String;ZI)V

    return-void
.end method

.method private drawElement(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/render/PosterElementRender;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mContext:Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/collage/widget/PosterLayout;->setWillNotDraw(Z)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mGesListener:Lcom/miui/gallery/collage/widget/PosterLayout$GesListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextEditDialog:Lcom/miui/gallery/collage/utils/TextEditDialog;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextWatch:Lcom/miui/gallery/collage/widget/PosterLayout$CustomTextWatch;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/utils/TextEditDialog;->setTextWatch(Landroid/text/TextWatcher;)V

    .line 62
    return-void
.end method

.method private notifyTextEdit()V
    .locals 6

    .prologue
    .line 153
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-virtual {v2}, Lcom/miui/gallery/collage/render/PosterElementRender;->getTextEditorHolders()[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v1

    .line 165
    .local v1, "textEditorHolders":[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 168
    :cond_0
    return-void

    .line 156
    .end local v1    # "textEditorHolders":[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    :cond_1
    new-instance v0, Lcom/miui/gallery/collage/widget/PosterLayout$AnimListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/miui/gallery/collage/widget/PosterLayout$AnimListener;-><init>(Lcom/miui/gallery/collage/widget/PosterLayout;Lcom/miui/gallery/collage/widget/PosterLayout$1;)V

    .line 157
    .local v0, "animListener":Lcom/miui/gallery/collage/widget/PosterLayout$AnimListener;
    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextAnimator:Landroid/animation/ValueAnimator;

    .line 158
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 159
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 160
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 157
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setTextAnimProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 202
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    if-nez v2, :cond_1

    .line 211
    :cond_0
    return-void

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-virtual {v2}, Lcom/miui/gallery/collage/render/PosterElementRender;->getTextEditorHolders()[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v1

    .line 206
    .local v1, "textEditorHolders":[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 207
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 208
    .local v0, "textEditorHolder":Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->setCurrentTextProgress(F)V

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "currentText"    # Ljava/lang/String;
    .param p2, "selection"    # Z
    .param p3, "maxLength"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextEditDialog:Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/utils/TextEditDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextEditDialog:Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/collage/utils/TextEditDialog;->setWillEditText(Ljava/lang/String;Z)V

    .line 279
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextEditDialog:Lcom/miui/gallery/collage/utils/TextEditDialog;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/collage/utils/TextEditDialog;->setMaxEditLength(I)V

    .line 280
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextEditDialog:Lcom/miui/gallery/collage/utils/TextEditDialog;

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "PosterLayout"

    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/collage/utils/TextEditDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 138
    instance-of v0, p1, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 76
    return-void
.end method

.method findTextHolderByTouchEvent(FF)Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 288
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-virtual {v3}, Lcom/miui/gallery/collage/render/PosterElementRender;->getTextEditorHolders()[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v1

    .line 289
    .local v1, "textEditorHolders":[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 290
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 291
    .local v0, "textEditorHolder":Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "textEditorHolder":Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    :cond_2
    move-object v0, v2

    .line 296
    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/PosterLayout;->generateDefaultLayoutParams()Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    sget-object v1, Lcom/miui/gallery/collage/widget/PosterLayout;->DEFAULT_LAYOUT_PARAMS:[F

    invoke-direct {v0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;-><init>([F)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/widget/PosterLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 133
    new-instance v0, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    sget-object v1, Lcom/miui/gallery/collage/widget/PosterLayout;->DEFAULT_LAYOUT_PARAMS:[F

    invoke-direct {v0, v1}, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;-><init>([F)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/render/PosterElementRender;->getBackground()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/PosterLayout;->drawElement(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/PosterLayout;->getWidth()I

    move-result v9

    .line 89
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/PosterLayout;->getHeight()I

    move-result v6

    .line 90
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/PosterLayout;->getChildCount()I

    move-result v5

    .line 91
    .local v5, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 92
    invoke-virtual {p0, v7}, Lcom/miui/gallery/collage/widget/PosterLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    .line 95
    .local v8, "layoutParams":Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;
    int-to-float v10, v9

    invoke-static {v8}, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;->access$200(Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;)F

    move-result v11

    mul-float v2, v10, v11

    .line 96
    .local v2, "childLeft":F
    int-to-float v10, v6

    invoke-static {v8}, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;->access$300(Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;)F

    move-result v11

    mul-float v4, v10, v11

    .line 97
    .local v4, "childTop":F
    int-to-float v10, v9

    invoke-static {v8}, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;->access$400(Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;)F

    move-result v11

    mul-float v3, v10, v11

    .line 98
    .local v3, "childRight":F
    int-to-float v10, v6

    invoke-static {v8}, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;->access$500(Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;)F

    move-result v11

    mul-float v1, v10, v11

    .line 99
    .local v1, "childBottom":F
    float-to-int v10, v2

    float-to-int v11, v4

    float-to-int v12, v3

    float-to-int v13, v1

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 91
    .end local v1    # "childBottom":F
    .end local v2    # "childLeft":F
    .end local v3    # "childRight":F
    .end local v4    # "childTop":F
    .end local v8    # "layoutParams":Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/collage/widget/PosterLayout;->measureChildren(II)V

    .line 108
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setRenderData(Lcom/miui/gallery/collage/render/PosterElementRender;)V
    .locals 1
    .param p1, "posterElementRender"    # Lcom/miui/gallery/collage/render/PosterElementRender;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout;->mPosterElementRender:Lcom/miui/gallery/collage/render/PosterElementRender;

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/miui/gallery/collage/widget/PosterLayout;->notifyTextEdit()V

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/collage/widget/PosterLayout;->invalidate()V

    .line 150
    return-void
.end method
