.class abstract Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;
.super Ljava/lang/Object;
.source "RemoverGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mDraft:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;, "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method done()Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    .locals 2

    .prologue
    .line 377
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;, "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;->mDraft:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    .line 378
    .local v0, "draft":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;->mDraft:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    .line 379
    return-object v0
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 373
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;, "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;->mDraft:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->draw(Landroid/graphics/Canvas;)V

    .line 374
    return-void
.end method

.method final handleDown(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 355
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;, "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;->onDown(FF)V

    .line 356
    return-void
.end method

.method final handleMove(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 361
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;, "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;->onMove(FF)V

    .line 362
    return-void
.end method

.method final handleUp(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 367
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;, "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;->onUp(FF)V

    .line 368
    return-void
.end method

.method final initDraft(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 351
    .local p0, "this":Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;, "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder<TT;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;->onCreateDraft(Landroid/graphics/Paint;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;->mDraft:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    .line 352
    return-void
.end method

.method abstract onCreateDraft(Landroid/graphics/Paint;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract onDown(FF)V
.end method

.method abstract onMove(FF)V
.end method

.method abstract onUp(FF)V
.end method
