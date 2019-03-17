.class public Lcom/xiaomi/scanner/ui/TranslateLineView;
.super Landroid/widget/FrameLayout;
.source "TranslateLineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;
    }
.end annotation


# instance fields
.field private mCurrentDeviceDegree:I

.field private mLastDegree:I

.field private textHeight:I

.field private textLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private textView:Landroid/widget/TextView;

.field private textWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, -0x2

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;

    invoke-direct {v0, p1}, Lcom/xiaomi/scanner/ui/TranslateLineView$LineView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->addView(Landroid/view/View;)V

    .line 42
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textView:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/xiaomi/scanner/ui/TranslateLineView$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/ui/TranslateLineView$1;-><init>(Lcom/xiaomi/scanner/ui/TranslateLineView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/TranslateLineView;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/TranslateLineView;

    .prologue
    .line 22
    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textHeight:I

    return v0
.end method

.method static synthetic access$002(Lcom/xiaomi/scanner/ui/TranslateLineView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/TranslateLineView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/TranslateLineView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/ui/TranslateLineView;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/TranslateLineView;

    .prologue
    .line 22
    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textWidth:I

    return v0
.end method

.method static synthetic access$202(Lcom/xiaomi/scanner/ui/TranslateLineView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/TranslateLineView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/ui/TranslateLineView;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/TranslateLineView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/ui/TranslateLineView;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/TranslateLineView;

    .prologue
    .line 22
    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->mLastDegree:I

    return v0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/ui/TranslateLineView;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/TranslateLineView;

    .prologue
    .line 22
    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->mCurrentDeviceDegree:I

    return v0
.end method

.method private animTextView(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    .line 152
    iget v4, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->mLastDegree:I

    invoke-direct {p0, p1, v4}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getNewAnimDegree(II)Landroid/graphics/PointF;

    move-result-object v1

    .line 153
    .local v1, "newAnimDegree":Landroid/graphics/PointF;
    iget v4, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->mLastDegree:I

    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getNewAnimPosition(I)Landroid/graphics/PointF;

    move-result-object v3

    .line 154
    .local v3, "newStartTran":Landroid/graphics/PointF;
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getNewAnimPosition(I)Landroid/graphics/PointF;

    move-result-object v2

    .line 155
    .local v2, "newEndTran":Landroid/graphics/PointF;
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, v1, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    iget v6, v1, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    aput v6, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 156
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/xiaomi/scanner/ui/TranslateLineView$2;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/xiaomi/scanner/ui/TranslateLineView$2;-><init>(Lcom/xiaomi/scanner/ui/TranslateLineView;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 169
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 170
    return-void
.end method

.method private getDegreeFromOrientation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "degree":I
    sparse-switch p1, :sswitch_data_0

    .line 110
    :goto_0
    return v0

    .line 101
    :sswitch_0
    const/16 v0, -0x5a

    .line 102
    goto :goto_0

    .line 104
    :sswitch_1
    const/16 v0, 0xb4

    .line 105
    goto :goto_0

    .line 107
    :sswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private getNewAnimDegree(II)Landroid/graphics/PointF;
    .locals 5
    .param p1, "degree"    # I
    .param p2, "lastDegree"    # I

    .prologue
    const/16 v4, 0xb4

    const/16 v3, -0x5a

    .line 114
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 115
    .local v2, "point":Landroid/graphics/PointF;
    invoke-direct {p0, p2}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getDegreeFromOrientation(I)I

    move-result v1

    .line 116
    .local v1, "newStart":I
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getDegreeFromOrientation(I)I

    move-result v0

    .line 117
    .local v0, "newEnd":I
    if-ne v0, v3, :cond_1

    if-ne v1, v4, :cond_1

    .line 118
    const/16 v0, 0x10e

    .line 122
    :cond_0
    :goto_0
    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 123
    return-object v2

    .line 119
    :cond_1
    if-ne v0, v4, :cond_0

    if-ne v1, v3, :cond_0

    .line 120
    const/16 v0, -0xb4

    goto :goto_0
.end method

.method private getNewAnimPosition(I)Landroid/graphics/PointF;
    .locals 6
    .param p1, "degree"    # I

    .prologue
    const v5, 0x3e99999a    # 0.3f

    const v4, 0x3fa66666    # 1.3f

    .line 128
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 129
    .local v0, "point":Landroid/graphics/PointF;
    sparse-switch p1, :sswitch_data_0

    .line 145
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 148
    :goto_0
    return-object v0

    .line 131
    :sswitch_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 134
    :sswitch_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textHeight:I

    iget v3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 135
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 138
    :sswitch_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 141
    :sswitch_3
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textHeight:I

    iget v3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 142
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private getTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, "textView":Landroid/widget/TextView;
    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 70
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    return-object v0
.end method


# virtual methods
.method public getDegree()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->mLastDegree:I

    return v0
.end method

.method public getRotateDegree()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->mLastDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 80
    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->mLastDegree:I

    :goto_0
    return v0

    .line 78
    :sswitch_0
    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->mLastDegree:I

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public updateOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->mCurrentDeviceDegree:I

    .line 90
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/TranslateLineView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->textWidth:I

    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/TranslateLineView;->animTextView(I)V

    .line 94
    iput p1, p0, Lcom/xiaomi/scanner/ui/TranslateLineView;->mLastDegree:I

    goto :goto_0
.end method
