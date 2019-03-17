.class Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;
.super Ljava/lang/Object;
.source "Crop.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V
    .locals 0

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$1;

    .prologue
    .line 1690
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1694
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->SCALE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    invoke-static {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1502(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    .line 1695
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 1696
    .local v1, "scale":F
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2500(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    .line 1697
    .local v2, "size":F
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1698
    .local v0, "minBound":F
    mul-float v3, v1, v2

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    .line 1699
    div-float v1, v0, v2

    .line 1701
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1702
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2600(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1703
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2600(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;->onChanged()V

    .line 1705
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->invalidate()V

    .line 1706
    const/4 v3, 0x1

    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2700(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    .line 1712
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->fixImageBounds(Landroid/graphics/RectF;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$BoundsFixCallback;)V

    .line 1720
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ScaleListener;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2000(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    .line 1721
    return-void
.end method
