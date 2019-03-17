.class Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;
.super Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;
.source "CornerHandleHelper.java"


# direct methods
.method constructor <init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V
    .locals 0
    .param p1, "horizontalEdge"    # Lcom/edmodo/cropper/cropwindow/edge/Edge;
    .param p2, "verticalEdge"    # Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    .line 32
    return-void
.end method


# virtual methods
.method updateCropWindow(FFFLandroid/graphics/RectF;F)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetAspectRatio"    # F
    .param p4, "imageRect"    # Landroid/graphics/RectF;
    .param p5, "snapRadius"    # F

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;->getActiveEdges(FFF)Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    move-result-object v6

    .line 44
    .local v6, "activeEdges":Lcom/edmodo/cropper/cropwindow/edge/EdgePair;
    iget-object v0, v6, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->primary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 45
    .local v0, "primaryEdge":Lcom/edmodo/cropper/cropwindow/edge/Edge;
    iget-object v7, v6, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .local v7, "secondaryEdge":Lcom/edmodo/cropper/cropwindow/edge/Edge;
    move v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p3

    .line 47
    invoke-virtual/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/RectF;FF)V

    .line 48
    invoke-virtual {v7, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 50
    invoke-virtual {v7, p4, p5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/RectF;F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v7, p4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/RectF;)F

    .line 52
    invoke-virtual {v0, p3}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 54
    :cond_0
    return-void
.end method
