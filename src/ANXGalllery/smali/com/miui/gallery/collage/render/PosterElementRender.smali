.class public Lcom/miui/gallery/collage/render/PosterElementRender;
.super Ljava/lang/Object;
.source "PosterElementRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;,
        Lcom/miui/gallery/collage/render/PosterElementRender$LoadDataListener;
    }
.end annotation


# instance fields
.field private mBackground:I

.field private mImageDrawables:[Landroid/graphics/drawable/Drawable;

.field private mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

.field private mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mBackground:I

    .line 156
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/core/poster/ImageElementModel;II)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # [Lcom/miui/gallery/collage/core/poster/ImageElementModel;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/collage/render/PosterElementRender;->generateImageDrawables(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/core/poster/ImageElementModel;II)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;IIF)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # [Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # F

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/gallery/collage/render/PosterElementRender;->generateSpecifyDrawables(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;IIF)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/graphics/Canvas;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Landroid/graphics/RectF;F)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Canvas;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .param p2, "x2"    # Landroid/graphics/RectF;
    .param p3, "x3"    # F

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/collage/render/PosterElementRender;->drawText(Landroid/graphics/Canvas;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Landroid/graphics/RectF;F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/core/poster/TextElementModel;Landroid/content/res/Resources;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .param p1, "x1"    # Lcom/miui/gallery/collage/core/poster/TextElementModel;
    .param p2, "x2"    # Landroid/content/res/Resources;

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/collage/render/PosterElementRender;->configTextPaint(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/core/poster/TextElementModel;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/core/poster/TextElementModel;Landroid/graphics/RectF;IIFZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .param p1, "x1"    # Lcom/miui/gallery/collage/core/poster/TextElementModel;
    .param p2, "x2"    # Landroid/graphics/RectF;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # F
    .param p6, "x6"    # Z

    .prologue
    .line 28
    invoke-static/range {p0 .. p6}, Lcom/miui/gallery/collage/render/PosterElementRender;->countText(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/core/poster/TextElementModel;Landroid/graphics/RectF;IIFZ)V

    return-void
.end method

.method static synthetic access$1400(IIF)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/collage/render/PosterElementRender;->getColorToColorProgress(IIF)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;[Lcom/miui/gallery/collage/core/poster/TextElementModel;IIF)[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # [Lcom/miui/gallery/collage/core/poster/TextElementModel;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # F

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/gallery/collage/render/PosterElementRender;->generateTextHolders(Landroid/content/Context;[Lcom/miui/gallery/collage/core/poster/TextElementModel;IIF)[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/collage/render/PosterElementRender;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/render/PosterElementRender;
    .param p1, "x1"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/gallery/collage/render/PosterElementRender;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/render/PosterElementRender;
    .param p1, "x1"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/gallery/collage/render/PosterElementRender;[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;)[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/render/PosterElementRender;
    .param p1, "x1"    # [Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    return-object p1
.end method

.method static synthetic access$902(Lcom/miui/gallery/collage/render/PosterElementRender;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/render/PosterElementRender;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mBackground:I

    return p1
.end method

.method private static configTextPaint(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/core/poster/TextElementModel;Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "autoLineLayout"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .param p1, "textElementModel"    # Lcom/miui/gallery/collage/core/poster/TextElementModel;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 278
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 279
    .local v0, "density":F
    iget v2, p1, Lcom/miui/gallery/collage/core/poster/TextElementModel;->textSize:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 280
    iget-object v2, p1, Lcom/miui/gallery/collage/core/poster/TextElementModel;->textColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    iget v2, p1, Lcom/miui/gallery/collage/core/poster/TextElementModel;->letterSpace:F

    invoke-virtual {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setLetterSpace(F)V

    goto :goto_0
.end method

.method private static countText(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/core/poster/TextElementModel;Landroid/graphics/RectF;IIFZ)V
    .locals 7
    .param p0, "autoLineLayout"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .param p1, "textElementModel"    # Lcom/miui/gallery/collage/core/poster/TextElementModel;
    .param p2, "textRectF"    # Landroid/graphics/RectF;
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I
    .param p5, "scaleOffset"    # F
    .param p6, "isRTL"    # Z

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->countText()V

    .line 286
    invoke-virtual {p0, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextRect(Landroid/graphics/RectF;)V

    .line 287
    iget v0, p2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p5

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 288
    iget v0, p2, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p5

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 289
    iget v0, p2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p5

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 290
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, p5

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 291
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    move-object v0, p2

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/collage/core/poster/ElementPositionModel;->getRectByLocation(Landroid/graphics/RectF;Lcom/miui/gallery/collage/core/poster/ElementPositionModel;FFIIZ)V

    .line 292
    return-void
.end method

.method private static drawText(Landroid/graphics/Canvas;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Landroid/graphics/RectF;F)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "autoLineLayout"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
    .param p2, "textRectF"    # Landroid/graphics/RectF;
    .param p3, "scaleOffset"    # F

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 296
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 297
    invoke-virtual {p0, p3, p3, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 298
    invoke-virtual {p1, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->draw(Landroid/graphics/Canvas;)V

    .line 299
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 300
    return-void
.end method

.method private static generateImageDrawables(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/core/poster/ImageElementModel;II)[Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "imageElementModels"    # [Lcom/miui/gallery/collage/core/poster/ImageElementModel;
    .param p2, "parentWidth"    # I
    .param p3, "parentHeight"    # I

    .prologue
    .line 343
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    .line 344
    :cond_0
    const/4 v8, 0x0

    .line 362
    :cond_1
    return-object v8

    .line 346
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 347
    .local v0, "rectFTemp":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 348
    .local v11, "rectTemp":Landroid/graphics/Rect;
    array-length v4, p1

    new-array v8, v4, [Landroid/graphics/drawable/Drawable;

    .line 349
    .local v8, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v4, v8

    if-ge v9, v4, :cond_1

    .line 350
    aget-object v1, p1, v9

    .line 351
    .local v1, "imageElementModel":Lcom/miui/gallery/collage/core/poster/ImageElementModel;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/miui/gallery/collage/core/poster/ImageElementModel;->relativePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/miui/gallery/collage/core/poster/ImageElementModel;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/miui/gallery/collage/CollageUtils;->getDrawableByAssets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 352
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v2, v4

    .line 353
    .local v2, "drawableWidth":F
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v3, v4

    .line 354
    .local v3, "drawableHeight":F
    div-float v10, v3, v2

    .line 355
    .local v10, "radio":F
    int-to-float v4, p2

    iget v5, v1, Lcom/miui/gallery/collage/core/poster/ImageElementModel;->width:F

    mul-float v2, v4, v5

    .line 356
    mul-float v3, v2, v10

    .line 357
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/collage/core/poster/ElementPositionModel;->getRectByLocation(Landroid/graphics/RectF;Lcom/miui/gallery/collage/core/poster/ElementPositionModel;FFIIZ)V

    .line 358
    invoke-virtual {v0, v11}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 359
    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 360
    aput-object v7, v8, v9

    .line 349
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 357
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static generateSpecifyDrawables(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;IIF)[Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "specifyDrawableModels"    # [Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;
    .param p2, "parentWidth"    # I
    .param p3, "parentHeight"    # I
    .param p4, "scaleOffset"    # F

    .prologue
    .line 311
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    .line 312
    :cond_0
    const/4 v8, 0x0

    .line 339
    :cond_1
    return-object v8

    .line 314
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 315
    .local v0, "rectFTemp":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 316
    .local v11, "rectTemp":Landroid/graphics/Rect;
    array-length v4, p1

    new-array v8, v4, [Landroid/graphics/drawable/Drawable;

    .line 317
    .local v8, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v4, v8

    if-ge v9, v4, :cond_1

    .line 318
    aget-object v1, p1, v9

    .line 319
    .local v1, "specifyDrawableModel":Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;
    iget-object v4, v1, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;->specifyDrawableType:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;

    invoke-virtual {v4, p0, v1}, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$SpecifyDrawableType;->getDrawable(Landroid/content/res/Resources;Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 320
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v2, v4

    .line 321
    .local v2, "drawableWidth":F
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v3, v4

    .line 322
    .local v3, "drawableHeight":F
    iget v4, v1, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;->width:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 323
    int-to-float v4, p2

    iget v5, v1, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;->width:F

    mul-float v2, v4, v5

    .line 324
    iget v4, v1, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;->height:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    .line 325
    int-to-float v4, p3

    iget v5, v1, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;->height:F

    mul-float v3, v4, v5

    .line 334
    :goto_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    const/4 v6, 0x1

    :goto_2
    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/collage/core/poster/ElementPositionModel;->getRectByLocation(Landroid/graphics/RectF;Lcom/miui/gallery/collage/core/poster/ElementPositionModel;FFIIZ)V

    .line 335
    invoke-virtual {v0, v11}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 336
    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 337
    aput-object v7, v8, v9

    .line 317
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 327
    :cond_3
    div-float v10, v3, v2

    .line 328
    .local v10, "radio":F
    mul-float v3, v2, v10

    .line 329
    goto :goto_1

    .line 331
    .end local v10    # "radio":F
    :cond_4
    mul-float v2, v2, p4

    .line 332
    mul-float v3, v3, p4

    goto :goto_1

    .line 334
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private static generateTextHolders(Landroid/content/Context;[Lcom/miui/gallery/collage/core/poster/TextElementModel;IIF)[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textElementModels"    # [Lcom/miui/gallery/collage/core/poster/TextElementModel;
    .param p2, "parentWidth"    # I
    .param p3, "parentHeight"    # I
    .param p4, "scale"    # F

    .prologue
    .line 303
    array-length v0, p1

    new-array v7, v0, [Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    .line 304
    .local v7, "textEditorHolders":[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p1

    if-ge v6, v0, :cond_0

    .line 305
    new-instance v0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    aget-object v2, p1, v6

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;-><init>(Landroid/content/Context;Lcom/miui/gallery/collage/core/poster/TextElementModel;IIF)V

    aput-object v0, v7, v6

    .line 304
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 307
    :cond_0
    return-object v7
.end method

.method private static getColorToColorProgress(IIF)I
    .locals 9
    .param p0, "colorA"    # I
    .param p1, "colorB"    # I
    .param p2, "progress"    # F

    .prologue
    .line 366
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 367
    .local v0, "alphaA":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 368
    .local v6, "redA":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 369
    .local v4, "greenA":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 371
    .local v2, "blueA":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 372
    .local v1, "alphaB":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 373
    .local v7, "redB":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 374
    .local v5, "greenB":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 376
    .local v3, "blueB":I
    sub-int v8, v1, v0

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int v1, v0, v8

    .line 377
    sub-int v8, v7, v6

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int v7, v6, v8

    .line 378
    sub-int v8, v5, v4

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int v5, v4, v8

    .line 379
    sub-int v8, v3, v2

    int-to-float v8, v8

    mul-float/2addr v8, p2

    float-to-int v8, v8

    add-int v3, v2, v8

    .line 380
    invoke-static {v1, v7, v5, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 36
    iget-object v4, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 37
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 41
    iget-object v4, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 42
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 45
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 46
    iget-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 47
    .local v1, "textEditorHolder":Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    invoke-virtual {v1, p1}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->draw(Landroid/graphics/Canvas;)V

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 50
    .end local v1    # "textEditorHolder":Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    :cond_2
    return-void
.end method

.method public getBackground()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mBackground:I

    return v0
.end method

.method public getTextEditorHolders()[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    return-object v0
.end method

.method public initialize(Lcom/miui/gallery/collage/core/poster/PosterModel;IIFLandroid/content/Context;)V
    .locals 5
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/core/poster/PosterModel;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "scaleOffset"    # F
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    iget-object v1, p1, Lcom/miui/gallery/collage/core/poster/PosterModel;->imageElementModels:[Lcom/miui/gallery/collage/core/poster/ImageElementModel;

    .line 137
    .local v1, "imageElementModels":[Lcom/miui/gallery/collage/core/poster/ImageElementModel;
    iget-object v2, p1, Lcom/miui/gallery/collage/core/poster/PosterModel;->specifyDrawableModels:[Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;

    .line 138
    .local v2, "specifyDrawableModels":[Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;
    iget-object v3, p1, Lcom/miui/gallery/collage/core/poster/PosterModel;->textElementModels:[Lcom/miui/gallery/collage/core/poster/TextElementModel;

    .line 139
    .local v3, "textElementModels":[Lcom/miui/gallery/collage/core/poster/TextElementModel;
    iget-object v0, p1, Lcom/miui/gallery/collage/core/poster/PosterModel;->background:Ljava/lang/String;

    .line 141
    .local v0, "backgroundColor":Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 142
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1, p2, p3}, Lcom/miui/gallery/collage/render/PosterElementRender;->generateImageDrawables(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/core/poster/ImageElementModel;II)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    .line 144
    :cond_0
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    .line 145
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2, p2, p3, p4}, Lcom/miui/gallery/collage/render/PosterElementRender;->generateSpecifyDrawables(Landroid/content/res/Resources;[Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;IIF)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mSpecifyDrawables:[Landroid/graphics/drawable/Drawable;

    .line 147
    :cond_1
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 148
    invoke-static {p5, v3, p2, p3, p4}, Lcom/miui/gallery/collage/render/PosterElementRender;->generateTextHolders(Landroid/content/Context;[Lcom/miui/gallery/collage/core/poster/TextElementModel;IIF)[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mTextEditorHolders:[Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;

    .line 151
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 152
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/collage/render/PosterElementRender;->mBackground:I

    .line 154
    :cond_3
    return-void
.end method

.method public initializeAsync(Lcom/miui/gallery/collage/core/poster/PosterModel;IIFLandroid/content/Context;Lcom/miui/gallery/collage/render/PosterElementRender$LoadDataListener;)V
    .locals 8
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/core/poster/PosterModel;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "scaleOffset"    # F
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "loadDataListener"    # Lcom/miui/gallery/collage/render/PosterElementRender$LoadDataListener;

    .prologue
    .line 92
    new-instance v0, Lcom/miui/gallery/collage/render/PosterElementRender$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/collage/render/PosterElementRender$1;-><init>(Lcom/miui/gallery/collage/render/PosterElementRender;Lcom/miui/gallery/collage/core/poster/PosterModel;Landroid/content/Context;IIFLcom/miui/gallery/collage/render/PosterElementRender$LoadDataListener;)V

    .line 132
    invoke-virtual {v0}, Lcom/miui/gallery/collage/render/PosterElementRender$1;->start()V

    .line 133
    return-void
.end method

.method public initializeAsync(Lcom/miui/gallery/collage/core/poster/PosterModel;IILandroid/content/Context;Lcom/miui/gallery/collage/render/PosterElementRender$LoadDataListener;)V
    .locals 7
    .param p1, "posterModel"    # Lcom/miui/gallery/collage/core/poster/PosterModel;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "loadDataListener"    # Lcom/miui/gallery/collage/render/PosterElementRender$LoadDataListener;

    .prologue
    .line 88
    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/gallery/collage/render/PosterElementRender;->initializeAsync(Lcom/miui/gallery/collage/core/poster/PosterModel;IIFLandroid/content/Context;Lcom/miui/gallery/collage/render/PosterElementRender$LoadDataListener;)V

    .line 89
    return-void
.end method
