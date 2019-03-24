.class public Lmiui/widget/CircleProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/CircleProgressBar$OnProgressChangedListener;
    }
.end annotation


# static fields
.field private static final PB:I = 0x12c

.field private static final Py:I = 0xa

.field private static final Pz:I = 0x12c


# instance fields
.field private PC:Landroid/graphics/RectF;

.field private PD:Landroid/graphics/Path;

.field private PI:Landroid/animation/Animator;

.field private PJ:[I

.field private PN:[Landroid/graphics/drawable/Drawable;

.field private PO:[Landroid/graphics/drawable/Drawable;

.field private PP:[Landroid/graphics/drawable/Drawable;

.field private PQ:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

.field private PU:I

.field private PV:Landroid/graphics/Bitmap;

.field private PX:Landroid/graphics/Canvas;

.field private PZ:I

.field private Qa:I

.field private Qb:I

.field private Qc:Landroid/graphics/drawable/Drawable;

.field private rl:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lmiui/widget/CircleProgressBar;->PD:Landroid/graphics/Path;

    .line 62
    const/16 p2, 0x12c

    iput p2, p0, Lmiui/widget/CircleProgressBar;->Qb:I

    .line 75
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lmiui/widget/CircleProgressBar;->setIndeterminate(Z)V

    .line 76
    sget p2, Lcom/miui/internal/R$attr;->circleProgressBarColor:I

    invoke-static {p1, p2}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    .line 77
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lmiui/widget/CircleProgressBar;->rl:Landroid/graphics/Paint;

    .line 78
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->rl:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    .locals 9

    .line 332
    if-eqz p2, :cond_0

    .line 333
    invoke-virtual {p2, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 334
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p2

    const/high16 v0, 0x43b40000    # 360.0f

    if-eqz p2, :cond_1

    .line 339
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, p2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, p2

    .line 340
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, p2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p2

    const/4 v6, 0x0

    const/16 v7, 0x1f

    .line 339
    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 343
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->rl:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 344
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->rl:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 345
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PD:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 346
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PD:Landroid/graphics/Path;

    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->PC:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    mul-float/2addr p5, v0

    invoke-virtual {p2, v1, v2, p5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 347
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PD:Landroid/graphics/Path;

    iget-object p5, p0, Lmiui/widget/CircleProgressBar;->rl:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 348
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->rl:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->rl:Landroid/graphics/Paint;

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 351
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 352
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 355
    :cond_1
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PV:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    .line 356
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 357
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 356
    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiui/widget/CircleProgressBar;->PV:Landroid/graphics/Bitmap;

    .line 358
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->PV:Landroid/graphics/Bitmap;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lmiui/widget/CircleProgressBar;->PX:Landroid/graphics/Canvas;

    .line 361
    :cond_2
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PV:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 362
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PX:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 363
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PX:Landroid/graphics/Canvas;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 364
    iget-object v3, p0, Lmiui/widget/CircleProgressBar;->PX:Landroid/graphics/Canvas;

    iget-object v4, p0, Lmiui/widget/CircleProgressBar;->PC:Landroid/graphics/RectF;

    const/high16 v5, -0x3d4c0000    # -90.0f

    mul-float v6, v0, p5

    const/4 v7, 0x1

    iget-object v8, p0, Lmiui/widget/CircleProgressBar;->rl:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 365
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 366
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PX:Landroid/graphics/Canvas;

    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PX:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 369
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->PV:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p5, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 373
    :goto_0
    iget-object p2, p0, Lmiui/widget/CircleProgressBar;->Qc:Landroid/graphics/drawable/Drawable;

    .line 374
    if-eqz p2, :cond_3

    .line 375
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 376
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    .line 377
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr p5, v1

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p5, v1

    div-int/lit8 p5, p5, 0x2

    .line 378
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 379
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 380
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v3, p4

    int-to-float v4, p5

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 381
    div-int/lit8 v1, v1, 0x2

    sub-int v0, p4, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v3, p5, v2

    add-int/2addr p4, v1

    add-int/2addr p5, v2

    invoke-virtual {p2, v0, v3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 382
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 383
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 387
    :cond_3
    if-eqz p3, :cond_4

    .line 388
    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 389
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 391
    :cond_4
    return-void
.end method

.method private aj(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 176
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PN:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PN:[Landroid/graphics/drawable/Drawable;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method private ak(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 180
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PO:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PO:[Landroid/graphics/drawable/Drawable;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method private al(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 184
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PP:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PP:[Landroid/graphics/drawable/Drawable;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method private am(I)I
    .locals 1

    .line 238
    mul-int/lit16 p1, p1, 0x3e8

    iget v0, p0, Lmiui/widget/CircleProgressBar;->Qb:I

    div-int/2addr p1, v0

    return p1
.end method

.method private b([I)[Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 162
    if-nez p1, :cond_0

    .line 163
    const/4 p1, 0x0

    return-object p1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 166
    const/4 v1, 0x0

    array-length v2, p1

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 167
    move v3, v1

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 168
    aget v4, p1, v3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 169
    aget-object v4, v2, v3

    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    aget-object v6, v2, v3

    .line 170
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 169
    invoke-virtual {v4, v1, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_1
    return-object v2
.end method

.method private eo()F
    .locals 2

    .line 289
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getIntrinsicHeight()I
    .locals 3

    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ak(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 303
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PP:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PP:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 305
    :cond_0
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PN:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PN:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 307
    :cond_1
    return v1
.end method

.method private getIntrinsicWidth()I
    .locals 3

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ak(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 294
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PP:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PP:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 296
    :cond_0
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PN:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PN:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 298
    :cond_1
    return v1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .line 243
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 244
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgressLevelCount()I

    move-result v0

    .line 245
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 246
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PN:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PN:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 247
    :cond_0
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PO:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PO:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 248
    :cond_1
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PP:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->PP:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 245
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->invalidate()V

    .line 251
    return-void
.end method

.method public getPrevAlpha()I
    .locals 1

    .line 407
    iget v0, p0, Lmiui/widget/CircleProgressBar;->Qa:I

    return v0
.end method

.method public getProgressLevelCount()I
    .locals 2

    .line 94
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PJ:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PJ:[I

    array-length v0, v0

    add-int/2addr v1, v0

    :goto_0
    return v1
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    .line 318
    :try_start_0
    iget v0, p0, Lmiui/widget/CircleProgressBar;->PU:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->aj(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiui/widget/CircleProgressBar;->PU:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->al(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v0, p0, Lmiui/widget/CircleProgressBar;->PU:I

    .line 319
    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ak(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->eo()F

    move-result v6

    iget v0, p0, Lmiui/widget/CircleProgressBar;->Qa:I

    rsub-int v7, v0, 0xff

    .line 318
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lmiui/widget/CircleProgressBar;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 323
    iget v0, p0, Lmiui/widget/CircleProgressBar;->Qa:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 324
    iget v0, p0, Lmiui/widget/CircleProgressBar;->PZ:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->aj(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiui/widget/CircleProgressBar;->PZ:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->al(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v0, p0, Lmiui/widget/CircleProgressBar;->PZ:I

    .line 325
    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->ak(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->eo()F

    move-result v6

    iget v7, p0, Lmiui/widget/CircleProgressBar;->Qa:I

    .line 324
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lmiui/widget/CircleProgressBar;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_0
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    .line 312
    :try_start_0
    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->getIntrinsicWidth()I

    move-result p1

    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmiui/widget/CircleProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDrawablesForLevels([I[I[I)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lmiui/widget/CircleProgressBar;->b([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p2}, Lmiui/widget/CircleProgressBar;->b([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 158
    invoke-direct {p0, p3}, Lmiui/widget/CircleProgressBar;->b([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/CircleProgressBar;->setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V

    .line 159
    return-void
.end method

.method public setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 105
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->PN:[Landroid/graphics/drawable/Drawable;

    .line 106
    iput-object p2, p0, Lmiui/widget/CircleProgressBar;->PO:[Landroid/graphics/drawable/Drawable;

    .line 107
    iput-object p3, p0, Lmiui/widget/CircleProgressBar;->PP:[Landroid/graphics/drawable/Drawable;

    .line 110
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 111
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 112
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_0
    if-eqz p2, :cond_1

    .line 116
    array-length p1, p2

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    .line 117
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    :cond_1
    if-eqz p3, :cond_2

    .line 121
    array-length p1, p3

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_2

    aget-object v2, p3, v1

    .line 122
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 126
    :cond_2
    if-eqz p2, :cond_6

    .line 128
    array-length p1, p2

    move p3, v0

    :goto_3
    if-ge p3, p1, :cond_5

    aget-object v1, p2, p3

    .line 129
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 130
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_4

    .line 132
    :cond_3
    instance-of v2, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_4

    .line 133
    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 128
    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 136
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'middles\' must a bitmap or nine patch drawable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_5
    new-instance p1, Landroid/graphics/RectF;

    aget-object p3, p2, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, -0x5

    int-to-float p3, p3

    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    aget-object v2, p2, v0

    .line 143
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, 0x5

    int-to-float p2, p2

    invoke-direct {p1, p3, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->PC:Landroid/graphics/RectF;

    .line 145
    :cond_6
    return-void
.end method

.method public setOnProgressChangedListener(Lmiui/widget/CircleProgressBar$OnProgressChangedListener;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->PQ:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    .line 209
    return-void
.end method

.method public setPrevAlpha(I)V
    .locals 0

    .line 398
    iput p1, p0, Lmiui/widget/CircleProgressBar;->Qa:I

    .line 399
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->invalidate()V

    .line 400
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 5

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 257
    nop

    .line 258
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PJ:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 259
    nop

    .line 272
    move v0, v1

    goto :goto_2

    .line 261
    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PJ:[I

    array-length v0, v0

    .line 262
    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_2

    .line 263
    iget-object v4, p0, Lmiui/widget/CircleProgressBar;->PJ:[I

    aget v4, v4, v2

    if-ge p1, v4, :cond_1

    .line 264
    nop

    .line 265
    goto :goto_1

    .line 262
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_2
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_3

    .line 269
    goto :goto_2

    .line 272
    :cond_3
    move v0, v2

    :goto_2
    iget p1, p0, Lmiui/widget/CircleProgressBar;->PU:I

    if-eq v0, p1, :cond_4

    .line 274
    iget p1, p0, Lmiui/widget/CircleProgressBar;->PU:I

    iput p1, p0, Lmiui/widget/CircleProgressBar;->PZ:I

    .line 275
    iput v0, p0, Lmiui/widget/CircleProgressBar;->PU:I

    .line 276
    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Lmiui/widget/CircleProgressBar;->setPrevAlpha(I)V

    .line 277
    const-string p1, "prevAlpha"

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 278
    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 279
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 283
    :cond_4
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->PQ:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    if-eqz p1, :cond_5

    .line 284
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->PQ:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    invoke-interface {p1}, Lmiui/widget/CircleProgressBar$OnProgressChangedListener;->onProgressChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_5
    monitor-exit p0

    return-void

    .line 254
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressByAnimator(I)V
    .locals 1

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    .line 201
    return-void
.end method

.method public setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .line 217
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->stopProgressAnimator()V

    .line 218
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgress()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 219
    const-string v1, "progress"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->PI:Landroid/animation/Animator;

    .line 220
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->PI:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->am(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 221
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->PI:Landroid/animation/Animator;

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    if-eqz p2, :cond_0

    .line 223
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->PI:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 225
    :cond_0
    iget-object p1, p0, Lmiui/widget/CircleProgressBar;->PI:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 226
    return-void
.end method

.method public setProgressLevels([I)V
    .locals 0

    .line 86
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->PJ:[I

    .line 87
    return-void
.end method

.method public setRotateVelocity(I)V
    .locals 0

    .line 192
    iput p1, p0, Lmiui/widget/CircleProgressBar;->Qb:I

    .line 193
    return-void
.end method

.method public setThumb(I)V
    .locals 1

    .line 415
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/CircleProgressBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 416
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->Qc:Landroid/graphics/drawable/Drawable;

    .line 424
    return-void
.end method

.method public stopProgressAnimator()V
    .locals 1

    .line 232
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PI:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PI:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->PI:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 235
    :cond_0
    return-void
.end method
