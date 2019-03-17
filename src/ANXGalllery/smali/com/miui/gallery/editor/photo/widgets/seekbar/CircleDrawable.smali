.class public Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "CircleDrawable.java"


# static fields
.field private static INIT_COLOR:I

.field private static STROKE_COLOR:I


# instance fields
.field private final mOffset:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private mStrokePaint:Landroid/graphics/Paint;

.field private final mThumbSize:I

.field private final mThumbTouchSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const v0, -0xff6e24

    sput v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->INIT_COLOR:I

    .line 18
    const/high16 v0, 0x4c000000    # 3.3554432E7f

    sput v0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->STROKE_COLOR:I

    return-void
.end method

.method public constructor <init>(FLandroid/content/res/Resources;)V
    .locals 3
    .param p1, "offset"    # F
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x1

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 28
    iput p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mOffset:F

    .line 29
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->INIT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 39
    const v0, 0x7f0b027f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mThumbTouchSize:I

    .line 40
    const v0, 0x7f0b027e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mThumbSize:I

    .line 41
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 55
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mThumbSize:I

    int-to-float v2, v3

    .line 56
    .local v2, "radius":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mOffset:F

    add-float/2addr v5, v2

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 58
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 59
    .local v1, "currentColor":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->STROKE_COLOR:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mThumbTouchSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mThumbTouchSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 72
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/CircleDrawable;->invalidateSelf()V

    .line 50
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 77
    return-void
.end method
