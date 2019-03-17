.class Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BiDirectionSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BiDirectionDrawable"
.end annotation


# instance fields
.field private mBlankPaint:Landroid/graphics/Paint;

.field private mBlankWidth:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 148
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mPadding:Landroid/graphics/Rect;

    .line 153
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankPaint:Landroid/graphics/Paint;

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 160
    const v0, 0x7f0b026c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankWidth:F

    .line 161
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 201
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v5, 0x1388

    .line 249
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 251
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .line 253
    .local v7, "centerX":I
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v7, v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 255
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->getLevel()I

    move-result v8

    .line 258
    .local v8, "level":I
    if-le v8, v5, :cond_0

    .line 259
    const/4 v9, 0x0

    .line 260
    .local v9, "negative":I
    add-int/lit16 v0, v8, -0x1388

    mul-int/lit8 v10, v0, 0x2

    .line 269
    .local v10, "positive":I
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 270
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 273
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 274
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 275
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 278
    int-to-float v0, v7

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankWidth:F

    sub-float v1, v0, v1

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    int-to-float v0, v7

    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankWidth:F

    add-float/2addr v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mBlankPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 279
    return-void

    .line 261
    .end local v9    # "negative":I
    .end local v10    # "positive":I
    :cond_0
    if-ge v8, v5, :cond_1

    .line 262
    rsub-int v0, v8, 0x1388

    mul-int/lit8 v9, v0, 0x2

    .line 263
    .restart local v9    # "negative":I
    const/4 v10, 0x0

    .restart local v10    # "positive":I
    goto :goto_0

    .line 265
    .end local v9    # "negative":I
    .end local v10    # "positive":I
    :cond_1
    const/4 v9, 0x0

    .line 266
    .restart local v9    # "negative":I
    const/4 v10, 0x0

    .restart local v10    # "positive":I
    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 241
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 242
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 8

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 226
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v2

    .line 228
    .local v2, "positive":Landroid/graphics/Region;
    if-nez v2, :cond_0

    .line 229
    const/4 v2, 0x0

    .line 234
    .end local v2    # "positive":Landroid/graphics/Region;
    :goto_0
    return-object v2

    .line 231
    .restart local v2    # "positive":Landroid/graphics/Region;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    .line 233
    .local v1, "negative":Landroid/graphics/Region;
    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 221
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 284
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 171
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 196
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 289
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 181
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 186
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/seekbar/BiDirectionSeekBar$BiDirectionDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method
