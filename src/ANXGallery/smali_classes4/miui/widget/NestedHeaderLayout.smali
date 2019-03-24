.class public Lmiui/widget/NestedHeaderLayout;
.super Lmiui/widget/NestedScrollingLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private Vo:I

.field private Vp:F

.field private ok:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NestedHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    sget-object p3, Lmiui/R$styleable;->NestedHeaderLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 34
    sget p2, Lmiui/R$styleable;->NestedHeaderLayout_headerView:I

    sget p3, Lmiui/R$id;->header_view:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NestedHeaderLayout;->Vo:I

    .line 35
    sget p2, Lmiui/R$styleable;->NestedHeaderLayout_rangeOffset:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiui/widget/NestedHeaderLayout;->Vp:F

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 41
    invoke-super {p0}, Lmiui/widget/NestedScrollingLayout;->onFinishInflate()V

    .line 43
    iget v0, p0, Lmiui/widget/NestedHeaderLayout;->Vo:I

    invoke-virtual {p0, v0}, Lmiui/widget/NestedHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NestedHeaderLayout;->ok:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lmiui/widget/NestedHeaderLayout;->ok:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 48
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The headerView attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 52
    invoke-super/range {p0 .. p5}, Lmiui/widget/NestedScrollingLayout;->onLayout(ZIIII)V

    .line 54
    iget-object p1, p0, Lmiui/widget/NestedHeaderLayout;->ok:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget p2, p0, Lmiui/widget/NestedHeaderLayout;->Vp:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 55
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lmiui/widget/NestedHeaderLayout;->setScrollingRange(II)V

    .line 56
    return-void
.end method

.method protected onScrollingProgressUpdated(I)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lmiui/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    .line 62
    iget-object v0, p0, Lmiui/widget/NestedHeaderLayout;->ok:Landroid/view/View;

    iget-object v1, p0, Lmiui/widget/NestedHeaderLayout;->ok:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 63
    iget-object v0, p0, Lmiui/widget/NestedHeaderLayout;->mScrollableView:Landroid/view/View;

    iget-object v1, p0, Lmiui/widget/NestedHeaderLayout;->ok:Landroid/view/View;

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lmiui/widget/NestedHeaderLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    .line 63
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 65
    return-void
.end method
