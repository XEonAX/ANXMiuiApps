.class Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;
.super Ljava/lang/Object;
.source "StickerEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cache"
.end annotation


# instance fields
.field private mBackground:Landroid/graphics/Bitmap;

.field private mBitmapToCanvas:Landroid/graphics/Matrix;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCanvasBound:Landroid/graphics/Rect;

.field private mCanvasToBitmap:Landroid/graphics/Matrix;

.field private mLayer:Landroid/graphics/Bitmap;

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mRedrawDst:Landroid/graphics/RectF;

.field private mRedrawSrc:Landroid/graphics/Rect;

.field private mReusePoint:[F


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .param p2, "canvasToBitmap"    # Landroid/graphics/Matrix;
    .param p3, "bitmapToCanvas"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mRedrawSrc:Landroid/graphics/Rect;

    .line 798
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mRedrawDst:Landroid/graphics/RectF;

    .line 800
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mPaint:Landroid/graphics/Paint;

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mNodes:Ljava/util/ArrayList;

    .line 809
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mCanvasBound:Landroid/graphics/Rect;

    .line 811
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mReusePoint:[F

    .line 814
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mBackground:Landroid/graphics/Bitmap;

    .line 815
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mCanvasToBitmap:Landroid/graphics/Matrix;

    .line 816
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mBitmapToCanvas:Landroid/graphics/Matrix;

    .line 817
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mLayer:Landroid/graphics/Bitmap;

    .line 818
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mLayer:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mCanvas:Landroid/graphics/Canvas;

    .line 819
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mCanvasBound:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mLayer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mLayer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 820
    return-void
.end method

.method private findIntersects(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Ljava/util/List;
    .locals 5
    .param p1, "target"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 881
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;>;"
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .line 883
    .local v0, "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 884
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 887
    .end local v0    # "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    :cond_1
    return-object v1
.end method


# virtual methods
.method append(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)V
    .locals 1
    .param p1, "node"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .prologue
    .line 828
    if-eqz p1, :cond_0

    .line 829
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->draw(Landroid/graphics/Canvas;)V

    .line 832
    :cond_0
    return-void
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mLayer:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mBitmapToCanvas:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 878
    return-void
.end method

.method find(FF)I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 839
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mReusePoint:[F

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 840
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mReusePoint:[F

    const/4 v3, 0x1

    aput p2, v2, v3

    .line 841
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mCanvasToBitmap:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mReusePoint:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 843
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 844
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .line 845
    .local v1, "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mReusePoint:[F

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$200(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;[F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 849
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    :goto_1
    return v0

    .line 843
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 849
    .end local v1    # "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method getNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 824
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method remove(I)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    .locals 12
    .param p1, "index"    # I

    .prologue
    .line 853
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .line 855
    .local v2, "node":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mRedrawSrc:Landroid/graphics/Rect;

    .line 856
    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 857
    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 858
    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 859
    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->access$700(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    .line 855
    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 860
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mRedrawDst:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mRedrawSrc:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 862
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 863
    .local v4, "start":J
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 864
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mRedrawSrc:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 865
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mBackground:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mRedrawSrc:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mRedrawDst:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 866
    invoke-direct {p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->findIntersects(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;)Ljava/util/List;

    move-result-object v1

    .line 867
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;>;"
    const-string v3, "StickerEditorView"

    const-string v6, "need rebuild %d items"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 868
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;

    .line 869
    .local v0, "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 871
    .end local v0    # "item":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Cache;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 872
    const-string v3, "StickerNode"

    const-string v6, "rebuild finish costs %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    return-object v2
.end method
