.class Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;
.super Ljava/lang/Object;
.source "StickerEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Mutator"
.end annotation


# instance fields
.field private final mBitmapToCanvas:Landroid/graphics/Matrix;

.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private final mCanvasToBitmap:Landroid/graphics/Matrix;

.field private mDelete:Landroid/graphics/drawable/Drawable;

.field private mDrawBounds:Landroid/graphics/Rect;

.field private mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

.field private mListener:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;

.field private mMirror:Landroid/graphics/drawable/Drawable;

.field private mReuseDegree:Landroid/graphics/Matrix;

.field private mReuseMatrix:Landroid/graphics/Matrix;

.field private mReusePoint:[F

.field private mReuseRect:Landroid/graphics/RectF;

.field private mReuseVector:[F

.field private mScale:Landroid/graphics/drawable/Drawable;

.field private mVertices:[[F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapToCanvas"    # Landroid/graphics/Matrix;
    .param p3, "canvasToBitmap"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mDrawBounds:Landroid/graphics/Rect;

    .line 599
    filled-new-array {v4, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    .line 604
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReusePoint:[F

    .line 605
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseVector:[F

    .line 606
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    .line 607
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseDegree:Landroid/graphics/Matrix;

    .line 608
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseMatrix:Landroid/graphics/Matrix;

    .line 728
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;)V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mListener:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;

    .line 611
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 612
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    new-array v2, v3, [F

    aput-object v2, v1, v0

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mDelete:Landroid/graphics/drawable/Drawable;

    .line 615
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mMirror:Landroid/graphics/drawable/Drawable;

    .line 616
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mScale:Landroid/graphics/drawable/Drawable;

    .line 617
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 618
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mBitmapToCanvas:Landroid/graphics/Matrix;

    .line 619
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mCanvasToBitmap:Landroid/graphics/Matrix;

    .line 620
    return-void
.end method

.method private static setBounds(Landroid/graphics/drawable/Drawable;FF)V
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 786
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v2

    .line 787
    .local v0, "height":F
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v1, v2

    .line 788
    .local v1, "width":F
    div-float v2, v1, v5

    sub-float v2, p1, v2

    .line 789
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-float v3, v0, v5

    sub-float v3, p2, v3

    .line 790
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-float v4, v1, v5

    add-float/2addr v4, p1

    .line 791
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    div-float v5, v0, v5

    add-float/2addr v5, p2

    .line 792
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 788
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 793
    return-void
.end method


# virtual methods
.method bind(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)V
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$002(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mListener:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;

    invoke-static {p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$002(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;

    .line 631
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .line 632
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->updateDisplayInfo()V

    .line 633
    return-void
.end method

.method contains(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 667
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    if-nez v1, :cond_0

    .line 674
    :goto_0
    return v0

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReusePoint:[F

    aput p1, v1, v0

    .line 672
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReusePoint:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 673
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mCanvasToBitmap:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReusePoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 674
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReusePoint:[F

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;[F)Z

    move-result v0

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;Z)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "moving"    # Z

    .prologue
    .line 642
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    if-nez v0, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 647
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mBitmapToCanvas:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 648
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->draw(Landroid/graphics/Canvas;)V

    .line 649
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 652
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 653
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 654
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$100(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 655
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 656
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 657
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 659
    if-nez p2, :cond_0

    .line 660
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mMirror:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 661
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 662
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mScale:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method getBorderBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method getDrawBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mDrawBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getRadius()F
    .locals 4

    .prologue
    .line 710
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mScale:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mDrawBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mScale:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mDrawBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method getVertex(I)[F
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 714
    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    .line 715
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v0, v0, p1

    return-object v0
.end method

.method isDelete(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 702
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method isIdle()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMirror(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 706
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mMirror:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method isScale(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 698
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mScale:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method mirror()V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$300(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)V

    .line 679
    return-void
.end method

.method rotate(FF)V
    .locals 2
    .param p1, "sin"    # F
    .param p2, "cos"    # F

    .prologue
    .line 682
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseDegree:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setSinCos(FF)V

    .line 683
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseDegree:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$400(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;Landroid/graphics/Matrix;)V

    .line 684
    return-void
.end method

.method scale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 687
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-static {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$500(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;F)V

    .line 688
    return-void
.end method

.method translate(FF)V
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 691
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseVector:[F

    aput p1, v0, v2

    .line 692
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseVector:[F

    aput p2, v0, v3

    .line 693
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mCanvasToBitmap:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseVector:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 694
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseVector:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseVector:[F

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$600(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;FF)V

    .line 695
    return-void
.end method

.method unbind()Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .line 637
    .local v0, "prev":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .line 638
    return-object v0
.end method

.method updateDisplayInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 736
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 737
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mBitmapToCanvas:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 739
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mDrawBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 740
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 741
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 742
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 743
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 739
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 746
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$100(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 748
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    neg-float v3, v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 749
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 750
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$800(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelableMatrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 752
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$900(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 753
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mBitmapToCanvas:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 755
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mBorder:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 756
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 757
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 755
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 760
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v1, v2

    .line 761
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v1, v7

    .line 763
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v1, v1, v7

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    aput v3, v1, v2

    .line 764
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v1, v1, v7

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v1, v7

    .line 766
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v1, v1, v9

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v1, v2

    .line 767
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v1, v1, v9

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    aput v3, v1, v7

    .line 769
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v1, v1, v8

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    aput v3, v1, v2

    .line 770
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v1, v1, v8

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    aput v3, v1, v7

    .line 772
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    neg-float v3, v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 773
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$100(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 774
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 776
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 777
    .local v0, "pt":[F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mReuseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 776
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    .end local v0    # "pt":[F
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mDelete:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v3, v3, v7

    aget v3, v3, v2

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v4, v4, v7

    aget v4, v4, v7

    invoke-static {v1, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->setBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 781
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mMirror:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v3, v3, v2

    aget v3, v3, v2

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v4, v4, v2

    aget v4, v4, v7

    invoke-static {v1, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->setBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 782
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mScale:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v3, v3, v8

    aget v2, v3, v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->mVertices:[[F

    aget-object v3, v3, v8

    aget v3, v3, v7

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->setBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 783
    return-void
.end method
