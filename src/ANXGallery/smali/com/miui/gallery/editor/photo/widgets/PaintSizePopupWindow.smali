.class public Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;
.super Landroid/widget/PopupWindow;
.source "PaintSizePopupWindow.java"


# instance fields
.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mPaintView:Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->getCustomView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->getCustomWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->getCustomHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 44
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow$1;-><init>(Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 19
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    const v0, 0x7f1100b5

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->setAnimationStyle(I)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f12020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->mPaintView:Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 23
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 25
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 26
    return-void

    .line 22
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static getCustomHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static getCustomView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const v0, 0x7f0400e3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 64
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 65
    return-void
.end method

.method public setPaintSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->mPaintView:Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/PaintSizeView;->setDiameter(I)V

    .line 42
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/PaintSizePopupWindow;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 59
    return-void
.end method
