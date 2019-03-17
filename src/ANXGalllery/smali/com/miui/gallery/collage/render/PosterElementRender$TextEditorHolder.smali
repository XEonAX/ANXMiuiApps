.class public Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;
.super Ljava/lang/Object;
.source "PosterElementRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/render/PosterElementRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextEditorHolder"
.end annotation


# instance fields
.field private mAlpha:I

.field private mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

.field private mCurrentTextProgress:F

.field private mDensity:F

.field private mHasModify:Z

.field private mHighLightBackground:I

.field private mHighLightColor:I

.field private mHighLightLineColor:I

.field private mHighLightPath:Landroid/graphics/Path;

.field private mHighLightRectF:Landroid/graphics/RectF;

.field private mOriginText:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mParentHeight:I

.field private mParentWidth:I

.field private mPathPaint:Landroid/graphics/Paint;

.field private mRTL:Z

.field private mScaleOffset:F

.field private mTextElementModel:Lcom/miui/gallery/collage/core/poster/TextElementModel;

.field private mTextRectF:Landroid/graphics/RectF;

.field private mTextRectForTouch:Landroid/graphics/RectF;

.field private mTextTouchOffset:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/gallery/collage/core/poster/TextElementModel;IIF)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textElementModel"    # Lcom/miui/gallery/collage/core/poster/TextElementModel;
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I
    .param p5, "scaleOffset"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextRectF:Landroid/graphics/RectF;

    .line 160
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightRectF:Landroid/graphics/RectF;

    .line 161
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-direct {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    .line 163
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mPaint:Landroid/graphics/Paint;

    .line 164
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mPathPaint:Landroid/graphics/Paint;

    .line 165
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightPath:Landroid/graphics/Path;

    .line 166
    iput v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightBackground:I

    .line 167
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextRectForTouch:Landroid/graphics/RectF;

    .line 168
    iput v5, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mCurrentTextProgress:F

    .line 173
    iput v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mAlpha:I

    .line 175
    iput-boolean v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHasModify:Z

    .line 177
    iput-boolean v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mRTL:Z

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mRTL:Z

    .line 182
    const v1, 0x7f100036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightLineColor:I

    .line 183
    const v1, 0x7f0b0140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextTouchOffset:I

    .line 184
    const v1, 0x7f100035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightColor:I

    .line 185
    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mPathPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-direct {v3, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 186
    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mPathPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightLineColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mPathPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mPathPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 189
    iput p3, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mParentWidth:I

    .line 190
    iput p4, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mParentHeight:I

    .line 191
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mDensity:F

    .line 192
    iput p5, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mScaleOffset:F

    .line 194
    iput-object p2, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextElementModel:Lcom/miui/gallery/collage/core/poster/TextElementModel;

    .line 195
    invoke-direct {p0, v0}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->configPaint(Landroid/content/res/Resources;)V

    .line 196
    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextElementModel:Lcom/miui/gallery/collage/core/poster/TextElementModel;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/collage/core/poster/TextElementModel;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mOriginText:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextElementModel:Lcom/miui/gallery/collage/core/poster/TextElementModel;

    iget-object v1, v1, Lcom/miui/gallery/collage/core/poster/TextElementModel;->currentText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextElementModel:Lcom/miui/gallery/collage/core/poster/TextElementModel;

    iget-object v2, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mOriginText:Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/gallery/collage/core/poster/TextElementModel;->currentText:Ljava/lang/String;

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    sget-object v2, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->CENTER:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V

    .line 203
    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v2, p2, Lcom/miui/gallery/collage/core/poster/TextElementModel;->currentText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setText(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->countTextAndStroke()V

    .line 205
    return-void

    .line 200
    :cond_1
    iput-boolean v2, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHasModify:Z

    goto :goto_0

    .line 185
    :array_0
    .array-data 4
        0x41400000    # 12.0f
        0x40c00000    # 6.0f
    .end array-data
.end method

.method private configPaint(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextElementModel:Lcom/miui/gallery/collage/core/poster/TextElementModel;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextElementModel:Lcom/miui/gallery/collage/core/poster/TextElementModel;

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/collage/render/PosterElementRender;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/core/poster/TextElementModel;Landroid/content/res/Resources;)V

    goto :goto_0
.end method


# virtual methods
.method public contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 251
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextRectForTouch:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method countTextAndStroke()V
    .locals 8

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextElementModel:Lcom/miui/gallery/collage/core/poster/TextElementModel;

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextElementModel:Lcom/miui/gallery/collage/core/poster/TextElementModel;

    iget-object v2, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mParentWidth:I

    iget v4, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mParentHeight:I

    iget v5, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mScaleOffset:F

    iget-boolean v6, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mRTL:Z

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/collage/render/PosterElementRender;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/collage/core/poster/TextElementModel;Landroid/graphics/RectF;IIFZ)V

    .line 229
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 230
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightRectF:Landroid/graphics/RectF;

    const/high16 v1, -0x3f400000    # -6.0f

    iget v2, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mDensity:F

    mul-float/2addr v1, v2

    const/high16 v2, -0x40000000    # -2.0f

    iget v3, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mDensity:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 231
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 232
    .local v7, "mPathRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightRectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 233
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 235
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextRectForTouch:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 236
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextRectForTouch:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextTouchOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextTouchOffset:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 208
    iget v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mCurrentTextProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mScaleOffset:F

    invoke-static {p1, v0, v1, v2}, Lcom/miui/gallery/collage/render/PosterElementRender;->access$1100(Landroid/graphics/Canvas;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Landroid/graphics/RectF;F)V

    .line 215
    return-void
.end method

.method public getCurrentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()I
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextElementModel:Lcom/miui/gallery/collage/core/poster/TextElementModel;

    iget v0, v0, Lcom/miui/gallery/collage/core/poster/TextElementModel;->maxLength:I

    iget-object v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mOriginText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hasModify()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHasModify:Z

    return v0
.end method

.method public setCurrentTextProgress(F)V
    .locals 3
    .param p1, "currentTextProgress"    # F

    .prologue
    .line 259
    iput p1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mCurrentTextProgress:F

    .line 260
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightColor:I

    iget v2, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mCurrentTextProgress:F

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/collage/render/PosterElementRender;->access$1400(IIF)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHighLightBackground:I

    .line 261
    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mCurrentTextProgress:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mAlpha:I

    .line 262
    return-void
.end method

.method public setTextAndCount(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "textArea"    # Landroid/graphics/Rect;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextElementModel:Lcom/miui/gallery/collage/core/poster/TextElementModel;

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mHasModify:Z

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextElementModel:Lcom/miui/gallery/collage/core/poster/TextElementModel;

    iput-object p1, v0, Lcom/miui/gallery/collage/core/poster/TextElementModel;->currentText:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setText(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->countTextAndStroke()V

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/collage/render/PosterElementRender$TextEditorHolder;->mTextRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
