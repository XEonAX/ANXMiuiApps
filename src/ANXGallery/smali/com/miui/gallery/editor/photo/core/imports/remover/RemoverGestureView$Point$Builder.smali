.class Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point$Builder;
.super Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;
.source "RemoverGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$1;

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic onCreateDraft(Landroid/graphics/Paint;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point$Builder;->onCreateDraft(Landroid/graphics/Paint;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;

    move-result-object v0

    return-object v0
.end method

.method onCreateDraft(Landroid/graphics/Paint;)Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;
    .locals 1
    .param p1, "base"    # Landroid/graphics/Paint;

    .prologue
    .line 608
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;

    invoke-direct {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;-><init>(Landroid/graphics/Paint;)V

    return-object v0
.end method

.method onDown(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 613
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point$Builder;->mDraft:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;->access$1600(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 614
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point$Builder;->mDraft:Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;->access$1600(Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Point;)Landroid/graphics/PointF;

    move-result-object v0

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 615
    return-void
.end method

.method onMove(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 620
    return-void
.end method

.method onUp(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 625
    return-void
.end method
