.class public Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;
.super Landroid/widget/ImageView;
.source "StrokeImageView.java"


# instance fields
.field private mIsStrokeVisible:Z

.field private mStrokeImageHelper:Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->mIsStrokeVisible:Z

    .line 15
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->init()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->mIsStrokeVisible:Z

    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->mIsStrokeVisible:Z

    .line 25
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->init()V

    .line 26
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->mStrokeImageHelper:Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

    .line 30
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->mIsStrokeVisible:Z

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->mStrokeImageHelper:Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    .line 44
    :cond_0
    return-void
.end method

.method public setStrokeVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->mIsStrokeVisible:Z

    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->invalidate()V

    .line 35
    return-void
.end method
