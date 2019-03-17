.class public final Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;
.super Landroid/widget/FrameLayout;
.source "QRCodeFgView.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mColor:I

.field private mLaserScanner:Landroid/widget/ImageView;

.field private mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

.field private mScannerFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-class v1, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->setBackgroundColor(I)V

    .line 42
    new-instance v1, Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-direct {v1, p1}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    .line 43
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {v1, v0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->addView(Landroid/view/View;)V

    .line 47
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 49
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 50
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->addView(Landroid/view/View;)V

    .line 55
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->clear()V

    .line 90
    return-void
.end method

.method public setScannerFrame(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mColor:I

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mScannerFrame:Landroid/graphics/Rect;

    .line 79
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f733333    # 0.95f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 80
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mMaskView:Lcom/xiaomi/scanner/ui/PreviewWithRectView;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mScannerFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mColor:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/scanner/ui/PreviewWithRectView;->setDataAndDraw(Landroid/graphics/Rect;IZ)V

    .line 81
    return-void
.end method

.method public startLaserAnim()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 58
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mScannerFrame:Landroid/graphics/Rect;

    if-nez v3, :cond_1

    .line 59
    :cond_0
    sget-object v1, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScannerFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mScannerFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 65
    iget-object v9, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mScannerFrame:Landroid/graphics/Rect;

    .line 66
    .local v9, "frame":Landroid/graphics/Rect;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, v9, Landroid/graphics/Rect;->top:I

    int-to-float v6, v3

    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v8, v3

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 70
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 71
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 72
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 73
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stopLaserAnim()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 85
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRCodeFgView;->mLaserScanner:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    return-void
.end method
