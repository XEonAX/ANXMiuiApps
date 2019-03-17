.class Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine$Builder;
.super Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;
.source "RemoverGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$1;

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic onCreateDraft(Landroid/graphics/Paint;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    .locals 1

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine$Builder;->onCreateDraft(Landroid/graphics/Paint;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;

    move-result-object v0

    return-object v0
.end method

.method onCreateDraft(Landroid/graphics/Paint;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;
    .locals 2
    .param p1, "base"    # Landroid/graphics/Paint;

    .prologue
    .line 527
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;-><init>(Landroid/graphics/Paint;)V

    return-object v0
.end method

.method onDown(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 532
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine$Builder;->mDraft:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;->access$1400(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 533
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine$Builder;->mDraft:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;->access$1500(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 534
    return-void
.end method

.method onMove(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 538
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine$Builder;->mDraft:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;->access$1500(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 539
    return-void
.end method

.method onUp(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 543
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine$Builder;->mDraft:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;->access$1500(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$StraightLine;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 544
    return-void
.end method
