.class public Lcom/miui/gallery/widget/ForegroundImageView;
.super Landroid/widget/ImageView;
.source "ForegroundImageView.java"


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/ForegroundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/ForegroundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    sget-object v2, Lcom/miui/gallery/R$styleable;->ForegroundImageView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 29
    .local v1, "foreground":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/ForegroundImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ForegroundImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 89
    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 81
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ForegroundImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/widget/ForegroundImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ForegroundImageView;->invalidate()V

    .line 98
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ForegroundImageView;->invalidate()V

    .line 107
    :cond_0
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ForegroundImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 62
    if-eqz p1, :cond_2

    .line 63
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ForegroundImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ForegroundImageView;->requestLayout()V

    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ForegroundImageView;->invalidate()V

    goto :goto_0
.end method

.method public setForegroundResource(I)V
    .locals 1
    .param p1, "drawableResId"    # I

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/widget/ForegroundImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/ForegroundImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/ForegroundImageView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
