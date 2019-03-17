.class abstract Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;
.super Ljava/lang/Object;
.source "HandleHelper.java"


# instance fields
.field private mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

.field private mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

.field private mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;


# direct methods
.method constructor <init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V
    .locals 3
    .param p1, "horizontalEdge"    # Lcom/edmodo/cropper/cropwindow/edge/Edge;
    .param p2, "verticalEdge"    # Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 48
    iput-object p2, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 49
    new-instance v0, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iget-object v2, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v0, v1, v2}, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    iput-object v0, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    .line 50
    return-void
.end method

.method private getAspectRatio(FF)F
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 148
    iget-object v4, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v5, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    if-ne v4, v5, :cond_0

    move v1, p1

    .line 149
    .local v1, "left":F
    :goto_0
    iget-object v4, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v5, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    if-ne v4, v5, :cond_1

    move v3, p2

    .line 150
    .local v3, "top":F
    :goto_1
    iget-object v4, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v5, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    if-ne v4, v5, :cond_2

    move v2, p1

    .line 151
    .local v2, "right":F
    :goto_2
    iget-object v4, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v5, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    if-ne v4, v5, :cond_3

    move v0, p2

    .line 153
    .local v0, "bottom":F
    :goto_3
    invoke-static {v1, v3, v2, v0}, Lcom/edmodo/cropper/util/AspectRatioUtil;->calculateAspectRatio(FFFF)F

    move-result v4

    return v4

    .line 148
    .end local v0    # "bottom":F
    .end local v1    # "left":F
    .end local v2    # "right":F
    .end local v3    # "top":F
    :cond_0
    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    goto :goto_0

    .line 149
    .restart local v1    # "left":F
    :cond_1
    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    goto :goto_1

    .line 150
    .restart local v3    # "top":F
    :cond_2
    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    goto :goto_2

    .line 151
    .restart local v2    # "right":F
    :cond_3
    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method getActiveEdges()Lcom/edmodo/cropper/cropwindow/edge/EdgePair;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    return-object v0
.end method

.method getActiveEdges(FFF)Lcom/edmodo/cropper/cropwindow/edge/EdgePair;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetAspectRatio"    # F

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->getAspectRatio(FF)F

    move-result v0

    .line 124
    .local v0, "potentialAspectRatio":F
    cmpl-float v1, v0, p3

    if-lez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v2, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iput-object v2, v1, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->primary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 126
    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v2, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iput-object v2, v1, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    return-object v1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v2, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iput-object v2, v1, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->primary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 129
    iget-object v1, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v2, p0, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    iput-object v2, v1, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    goto :goto_0
.end method

.method abstract updateCropWindow(FFFLandroid/graphics/RectF;F)V
.end method

.method updateCropWindow(FFLandroid/graphics/RectF;F)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "imageRect"    # Landroid/graphics/RectF;
    .param p4, "snapRadius"    # F

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->getActiveEdges()Lcom/edmodo/cropper/cropwindow/edge/EdgePair;

    move-result-object v7

    .line 69
    .local v7, "activeEdges":Lcom/edmodo/cropper/cropwindow/edge/EdgePair;
    iget-object v0, v7, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->primary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 70
    .local v0, "primaryEdge":Lcom/edmodo/cropper/cropwindow/edge/Edge;
    iget-object v8, v7, Lcom/edmodo/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    .line 72
    .local v8, "secondaryEdge":Lcom/edmodo/cropper/cropwindow/edge/Edge;
    if-eqz v0, :cond_0

    .line 73
    const/high16 v5, 0x3f800000    # 1.0f

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/RectF;FF)V

    .line 75
    :cond_0
    if-eqz v8, :cond_1

    .line 76
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v8

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/RectF;FF)V

    .line 77
    :cond_1
    return-void
.end method
