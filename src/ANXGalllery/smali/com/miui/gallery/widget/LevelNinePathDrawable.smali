.class public Lcom/miui/gallery/widget/LevelNinePathDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LevelNinePathDrawable.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/NinePatchDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/NinePatchDrawable;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/widget/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 21
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/miui/gallery/widget/LevelNinePathDrawable;->getLevel()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x461c4000    # 10000.0f

    div-float v1, v3, v4

    .line 26
    .local v1, "scaleX":F
    invoke-virtual {p0}, Lcom/miui/gallery/widget/LevelNinePathDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 27
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v3, v1

    .line 28
    .local v2, "width":F
    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 29
    iget-object v3, p0, Lcom/miui/gallery/widget/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 30
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 31
    iget-object v3, p0, Lcom/miui/gallery/widget/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 34
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 35
    iget-object v3, p0, Lcom/miui/gallery/widget/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/LevelNinePathDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 36
    iget-object v3, p0, Lcom/miui/gallery/widget/LevelNinePathDrawable;->mDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 48
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 52
    return-void
.end method
