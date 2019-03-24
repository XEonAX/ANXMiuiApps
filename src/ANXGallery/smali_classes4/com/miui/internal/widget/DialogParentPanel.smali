.class public Lcom/miui/internal/widget/DialogParentPanel;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private rq:Landroid/util/TypedValue;

.field private rr:Landroid/util/TypedValue;

.field private rs:Landroid/util/TypedValue;

.field private rt:Landroid/util/TypedValue;

.field private tA:Landroid/util/TypedValue;

.field private tB:Landroid/util/TypedValue;

.field private tC:Landroid/util/TypedValue;

.field private tD:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v0, Lcom/miui/internal/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 37
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->rr:Landroid/util/TypedValue;

    .line 38
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->rr:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 40
    :cond_0
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 41
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->rs:Landroid/util/TypedValue;

    .line 42
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->rs:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 44
    :cond_1
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 45
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->rq:Landroid/util/TypedValue;

    .line 46
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->rq:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 48
    :cond_2
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 49
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->rt:Landroid/util/TypedValue;

    .line 50
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->rt:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 52
    :cond_3
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 53
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->tA:Landroid/util/TypedValue;

    .line 54
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMinor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->tA:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 56
    :cond_4
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 57
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->tB:Landroid/util/TypedValue;

    .line 58
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxWidthMajor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->tB:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 60
    :cond_5
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 61
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->tD:Landroid/util/TypedValue;

    .line 62
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMajor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->tD:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 64
    :cond_6
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 65
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/DialogParentPanel;->tC:Landroid/util/TypedValue;

    .line 66
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowMaxHeightMinor:I

    iget-object v0, p0, Lcom/miui/internal/widget/DialogParentPanel;->tC:Landroid/util/TypedValue;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 68
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private a(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .locals 4

    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 92
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    .line 94
    invoke-virtual {p0}, Lcom/miui/internal/widget/DialogParentPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 96
    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    move-object p3, p4

    :goto_1
    invoke-direct {p0, v0, p3, p2}, Lcom/miui/internal/widget/DialogParentPanel;->a(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result p3

    .line 99
    if-lez p3, :cond_2

    .line 100
    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_3

    .line 102
    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    .line 103
    :cond_3
    move-object p5, p6

    :goto_2
    invoke-direct {p0, v0, p5, p2}, Lcom/miui/internal/widget/DialogParentPanel;->a(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result p2

    .line 104
    if-lez p2, :cond_4

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 106
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 110
    :cond_4
    :goto_3
    return p1
.end method

.method private a(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I
    .locals 2

    .line 114
    nop

    .line 115
    if-eqz p2, :cond_2

    .line 116
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 117
    invoke-virtual {p2, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    goto :goto_2

    .line 118
    :cond_0
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 119
    if-eqz p3, :cond_1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    int-to-float p1, p1

    goto :goto_1

    :cond_1
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 120
    :goto_1
    invoke-virtual {p2, p1, p1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    float-to-int p1, p1

    goto :goto_2

    .line 123
    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method private n(I)I
    .locals 7

    .line 79
    iget-object v3, p0, Lcom/miui/internal/widget/DialogParentPanel;->rr:Landroid/util/TypedValue;

    iget-object v4, p0, Lcom/miui/internal/widget/DialogParentPanel;->rq:Landroid/util/TypedValue;

    iget-object v5, p0, Lcom/miui/internal/widget/DialogParentPanel;->tA:Landroid/util/TypedValue;

    iget-object v6, p0, Lcom/miui/internal/widget/DialogParentPanel;->tB:Landroid/util/TypedValue;

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/DialogParentPanel;->a(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method private o(I)I
    .locals 7

    .line 84
    iget-object v3, p0, Lcom/miui/internal/widget/DialogParentPanel;->rt:Landroid/util/TypedValue;

    iget-object v4, p0, Lcom/miui/internal/widget/DialogParentPanel;->rs:Landroid/util/TypedValue;

    iget-object v5, p0, Lcom/miui/internal/widget/DialogParentPanel;->tC:Landroid/util/TypedValue;

    iget-object v6, p0, Lcom/miui/internal/widget/DialogParentPanel;->tD:Landroid/util/TypedValue;

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/DialogParentPanel;->a(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/DialogParentPanel;->n(I)I

    move-result p1

    .line 74
    invoke-direct {p0, p2}, Lcom/miui/internal/widget/DialogParentPanel;->o(I)I

    move-result p2

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 76
    return-void
.end method
