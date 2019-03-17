.class Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;
.super Ljava/lang/Object;
.source "Crop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizeDetector"
.end annotation


# instance fields
.field private mPreEdit:Landroid/graphics/RectF;

.field private mResizeEdge:I

.field private mResizeStart:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V
    .locals 1

    .prologue
    .line 842
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    .line 844
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeStart:Landroid/graphics/PointF;

    .line 845
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mPreEdit:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$1;

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;-><init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    return-void
.end method

.method private calculateMinSize()I
    .locals 2

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2500(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private checkOtherBoundOffset(IFLandroid/graphics/RectF;)F
    .locals 11
    .param p1, "direction"    # I
    .param p2, "changeOffset"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v10, 0x0

    .line 897
    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_2

    .line 898
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p3, Landroid/graphics/RectF;->left:F

    sub-float v1, v8, v9

    .line 899
    .local v1, "leftBoundOffset":F
    cmpl-float v8, v1, v10

    if-lez v8, :cond_0

    .line 901
    cmpl-float v8, p2, v1

    if-lez v8, :cond_1

    .line 902
    move v4, v1

    .line 906
    .local v4, "toLeft":F
    :goto_0
    sub-float/2addr p2, v4

    .line 907
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v8

    iget v9, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v4

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 908
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    neg-float v9, v4

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 950
    .end local v1    # "leftBoundOffset":F
    .end local v4    # "toLeft":F
    :cond_0
    :goto_1
    return p2

    .line 904
    .restart local v1    # "leftBoundOffset":F
    :cond_1
    move v4, p2

    .restart local v4    # "toLeft":F
    goto :goto_0

    .line 910
    .end local v1    # "leftBoundOffset":F
    .end local v4    # "toLeft":F
    :cond_2
    and-int/lit8 v8, p1, 0x10

    if-eqz v8, :cond_4

    .line 911
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget v9, p3, Landroid/graphics/RectF;->top:F

    sub-float v7, v8, v9

    .line 912
    .local v7, "topBoundOffset":F
    cmpl-float v8, v7, v10

    if-lez v8, :cond_0

    .line 914
    cmpl-float v8, p2, v7

    if-lez v8, :cond_3

    .line 915
    move v6, v7

    .line 919
    .local v6, "toTop":F
    :goto_2
    sub-float/2addr p2, v6

    .line 920
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v8

    iget v9, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v6

    iput v9, v8, Landroid/graphics/RectF;->top:F

    .line 921
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    neg-float v9, v6

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 917
    .end local v6    # "toTop":F
    :cond_3
    move v6, p2

    .restart local v6    # "toTop":F
    goto :goto_2

    .line 923
    .end local v6    # "toTop":F
    .end local v7    # "topBoundOffset":F
    :cond_4
    and-int/lit16 v8, p1, 0x100

    if-eqz v8, :cond_6

    .line 924
    iget v8, p3, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v9}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float v2, v8, v9

    .line 925
    .local v2, "rightBoundOffset":F
    cmpl-float v8, v2, v10

    if-lez v8, :cond_0

    .line 927
    cmpl-float v8, p2, v2

    if-lez v8, :cond_5

    .line 928
    move v5, v2

    .line 932
    .local v5, "toRight":F
    :goto_3
    sub-float/2addr p2, v5

    .line 933
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v8

    iget v9, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v5

    iput v9, v8, Landroid/graphics/RectF;->right:F

    .line 934
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v5, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 930
    .end local v5    # "toRight":F
    :cond_5
    move v5, p2

    .restart local v5    # "toRight":F
    goto :goto_3

    .line 936
    .end local v2    # "rightBoundOffset":F
    .end local v5    # "toRight":F
    :cond_6
    and-int/lit16 v8, p1, 0x1000

    if-eqz v8, :cond_0

    .line 937
    iget v8, p3, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v9}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v8, v9

    .line 938
    .local v0, "bottomBoundOffset":F
    cmpl-float v8, v0, v10

    if-lez v8, :cond_0

    .line 940
    cmpl-float v8, p2, v0

    if-lez v8, :cond_7

    .line 941
    move v3, v0

    .line 945
    .local v3, "toBottom":F
    :goto_4
    sub-float/2addr p2, v3

    .line 946
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v8

    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v3

    iput v9, v8, Landroid/graphics/RectF;->bottom:F

    .line 947
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v10, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 943
    .end local v3    # "toBottom":F
    :cond_7
    move v3, p2

    .restart local v3    # "toBottom":F
    goto :goto_4
.end method

.method private constraint(FF)F
    .locals 3
    .param p1, "origin"    # F
    .param p2, "reserve"    # F

    .prologue
    const/4 v1, 0x0

    .line 1676
    add-float v0, p1, p2

    .line 1677
    .local v0, "value":F
    mul-float v2, p1, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    move v0, v1

    .line 1680
    .end local v0    # "value":F
    :cond_0
    return v0
.end method

.method private fixImageBounds(Landroid/graphics/RectF;)V
    .locals 9
    .param p1, "displayArea"    # Landroid/graphics/RectF;

    .prologue
    .line 1645
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1646
    .local v2, "imageMatrix":Landroid/graphics/Matrix;
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 1647
    .local v1, "image":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1648
    .local v3, "invertMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1649
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 1650
    .local v4, "invertRect":Landroid/graphics/RectF;
    invoke-virtual {v3, v4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1652
    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1653
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 1654
    .local v0, "end":Landroid/graphics/Matrix;
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_0

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 1656
    :cond_0
    invoke-static {v1, v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->resolveScale(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v6

    .line 1657
    .local v6, "scale":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v0, v6, v6, v7, v8}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 1660
    .end local v6    # "scale":F
    :cond_1
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1661
    invoke-virtual {v3, v4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1662
    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1663
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 1664
    .local v5, "offset":Landroid/graphics/PointF;
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v7

    invoke-static {v7, v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->resolveTranslate(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 1665
    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1667
    .end local v5    # "offset":Landroid/graphics/PointF;
    :cond_2
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1669
    .end local v0    # "end":Landroid/graphics/Matrix;
    :cond_3
    return-void
.end method

.method private getImageCropBound(Landroid/graphics/RectF;)[F
    .locals 41
    .param p1, "imageAreaIn"    # Landroid/graphics/RectF;

    .prologue
    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v10

    .line 1178
    .local v10, "image":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1179
    .local v11, "imageArea":Landroid/graphics/RectF;
    invoke-static {v11}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->doRound(Landroid/graphics/RectF;)V

    .line 1182
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v15, v0, [F

    .line 1183
    .local v15, "imageLeftTopPoint":[F
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 1184
    .local v18, "imageRightTopPoint":[F
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v14, v0, [F

    .line 1185
    .local v14, "imageLeftBottomPoint":[F
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 1186
    .local v17, "imageRightBottomPoint":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v36

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v36

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    iget v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v36

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v36

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    iget v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1191
    invoke-static {v15}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->doRound([F)V

    .line 1192
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->doRound([F)V

    .line 1193
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->doRound([F)V

    .line 1194
    invoke-static {v14}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->doRound([F)V

    .line 1196
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    .local v16, "imageRectPoints":Ljava/util/List;, "Ljava/util/List<[F>;"
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-direct {v4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1203
    .local v4, "cropArea":Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->doRound(Landroid/graphics/RectF;)V

    .line 1205
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v6, v0, [F

    const/16 v36, 0x0

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v37, v0

    aput v37, v6, v36

    const/16 v36, 0x1

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v37, v0

    aput v37, v6, v36

    .line 1206
    .local v6, "cropLeftTop":[F
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v5, v0, [F

    const/16 v36, 0x0

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v37, v0

    aput v37, v5, v36

    const/16 v36, 0x1

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v37, v0

    aput v37, v5, v36

    .line 1207
    .local v5, "cropLeftBottom":[F
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v8, v0, [F

    const/16 v36, 0x0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v37, v0

    aput v37, v8, v36

    const/16 v36, 0x1

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v37, v0

    aput v37, v8, v36

    .line 1208
    .local v8, "cropRightTop":[F
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v7, v0, [F

    const/16 v36, 0x0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v37, v0

    aput v37, v7, v36

    const/16 v36, 0x1

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v37, v0

    aput v37, v7, v36

    .line 1210
    .local v7, "cropRightBottom":[F
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v12, v0, [F

    .line 1212
    .local v12, "imageCropBound":[F
    invoke-virtual {v11, v4}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v36

    if-nez v36, :cond_4

    .line 1213
    const-string v36, "Crop"

    const-string v37, "not in bound"

    invoke-static/range {v36 .. v37}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x10

    if-eqz v36, :cond_2

    .line 1215
    const/16 v36, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v37, v0

    aput v37, v12, v36

    .line 1219
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_3

    .line 1220
    const/16 v36, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v37, v0

    aput v37, v12, v36

    .line 1359
    :cond_1
    :goto_1
    return-object v12

    .line 1216
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0x1000

    move/from16 v36, v0

    if-eqz v36, :cond_0

    .line 1217
    const/16 v36, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v37, v0

    aput v37, v12, v36

    goto :goto_0

    .line 1221
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0x100

    move/from16 v36, v0

    if-eqz v36, :cond_1

    .line 1222
    const/16 v36, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v37, v0

    aput v37, v12, v36

    goto :goto_1

    .line 1226
    :cond_4
    const/4 v9, 0x0

    .line 1227
    .local v9, "handleByCorner":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v36

    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$000()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_a

    const/16 v30, 0x1

    .line 1228
    .local v30, "isFreeCrop":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->bitCount(I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_6

    .line 1233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x10

    if-eqz v36, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_b

    .line 1234
    if-eqz v30, :cond_5

    const/16 v36, 0x0

    aget v36, v15, v36

    const/16 v37, 0x0

    aget v37, v6, v37

    cmpg-float v36, v36, v37

    if-gez v36, :cond_6

    const/16 v36, 0x1

    aget v36, v15, v36

    const/16 v37, 0x1

    aget v37, v6, v37

    cmpg-float v36, v36, v37

    if-gez v36, :cond_6

    .line 1235
    :cond_5
    move-object/from16 v0, v16

    invoke-static {v0, v7, v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v23

    .line 1236
    .local v23, "intersectionSlash":[F
    move-object/from16 v0, v16

    invoke-static {v0, v7, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v20

    .line 1237
    .local v20, "intersectionHorizontal":[F
    move-object/from16 v0, v16

    invoke-static {v0, v7, v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v29

    .line 1239
    .local v29, "intersectionVertical":[F
    const/16 v36, 0x0

    const/16 v37, 0x0

    aget v37, v23, v37

    const/16 v38, 0x0

    aget v38, v20, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(FF)F

    move-result v37

    aput v37, v12, v36

    .line 1240
    const/16 v36, 0x1

    const/16 v37, 0x1

    aget v37, v23, v37

    const/16 v38, 0x1

    aget v38, v29, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(FF)F

    move-result v37

    aput v37, v12, v36

    .line 1241
    const/4 v9, 0x1

    .line 1275
    .end local v20    # "intersectionHorizontal":[F
    .end local v23    # "intersectionSlash":[F
    .end local v29    # "intersectionVertical":[F
    :cond_6
    :goto_3
    if-nez v9, :cond_1

    .line 1278
    if-eqz v30, :cond_15

    .line 1280
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x10

    if-eqz v36, :cond_11

    .line 1281
    invoke-static {v15, v14, v6, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->isParallel([F[F[F[F)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 1282
    const/16 v36, 0x1

    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v37, v0

    aput v37, v12, v36

    .line 1284
    :cond_7
    move-object/from16 v0, v16

    invoke-static {v0, v5, v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v31

    .line 1285
    .local v31, "leftIntersection":[F
    move-object/from16 v0, v16

    invoke-static {v0, v7, v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v34

    .line 1287
    .local v34, "rightIntersection":[F
    const/16 v36, 0x1

    const/16 v37, 0x1

    aget v37, v31, v37

    const/16 v38, 0x1

    aget v38, v34, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(FF)F

    move-result v37

    aput v37, v12, v36

    .line 1297
    .end local v31    # "leftIntersection":[F
    .end local v34    # "rightIntersection":[F
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_13

    .line 1298
    invoke-static {v15, v14, v6, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->isParallel([F[F[F[F)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 1299
    const/16 v36, 0x0

    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v37, v0

    aput v37, v12, v36

    .line 1301
    :cond_9
    move-object/from16 v0, v16

    invoke-static {v0, v8, v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v35

    .line 1302
    .local v35, "topIntersection":[F
    move-object/from16 v0, v16

    invoke-static {v0, v7, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v3

    .line 1304
    .local v3, "bottomIntersection":[F
    const/16 v36, 0x0

    const/16 v37, 0x0

    aget v37, v35, v37

    const/16 v38, 0x0

    aget v38, v3, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(FF)F

    move-result v37

    aput v37, v12, v36

    goto/16 :goto_1

    .line 1227
    .end local v3    # "bottomIntersection":[F
    .end local v30    # "isFreeCrop":Z
    .end local v35    # "topIntersection":[F
    :cond_a
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1243
    .restart local v30    # "isFreeCrop":Z
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x10

    if-eqz v36, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0x100

    move/from16 v36, v0

    if-eqz v36, :cond_d

    .line 1244
    if-eqz v30, :cond_c

    const/16 v36, 0x0

    aget v36, v18, v36

    const/16 v37, 0x0

    aget v37, v8, v37

    cmpl-float v36, v36, v37

    if-lez v36, :cond_6

    const/16 v36, 0x1

    aget v36, v18, v36

    const/16 v37, 0x1

    aget v37, v8, v37

    cmpg-float v36, v36, v37

    if-gez v36, :cond_6

    .line 1245
    :cond_c
    move-object/from16 v0, v16

    invoke-static {v0, v5, v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v23

    .line 1246
    .restart local v23    # "intersectionSlash":[F
    move-object/from16 v0, v16

    invoke-static {v0, v5, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v20

    .line 1247
    .restart local v20    # "intersectionHorizontal":[F
    move-object/from16 v0, v16

    invoke-static {v0, v5, v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v29

    .line 1249
    .restart local v29    # "intersectionVertical":[F
    const/16 v36, 0x0

    const/16 v37, 0x0

    aget v37, v23, v37

    const/16 v38, 0x0

    aget v38, v20, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(FF)F

    move-result v37

    aput v37, v12, v36

    .line 1250
    const/16 v36, 0x1

    const/16 v37, 0x1

    aget v37, v23, v37

    const/16 v38, 0x1

    aget v38, v29, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(FF)F

    move-result v37

    aput v37, v12, v36

    .line 1251
    const/4 v9, 0x1

    .line 1252
    goto/16 :goto_3

    .line 1253
    .end local v20    # "intersectionHorizontal":[F
    .end local v23    # "intersectionSlash":[F
    .end local v29    # "intersectionVertical":[F
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0x1000

    move/from16 v36, v0

    if-eqz v36, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_f

    .line 1254
    if-eqz v30, :cond_e

    const/16 v36, 0x0

    aget v36, v14, v36

    const/16 v37, 0x0

    aget v37, v5, v37

    cmpg-float v36, v36, v37

    if-gez v36, :cond_6

    const/16 v36, 0x1

    aget v36, v14, v36

    const/16 v37, 0x1

    aget v37, v5, v37

    cmpl-float v36, v36, v37

    if-lez v36, :cond_6

    .line 1255
    :cond_e
    move-object/from16 v0, v16

    invoke-static {v0, v8, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v23

    .line 1256
    .restart local v23    # "intersectionSlash":[F
    move-object/from16 v0, v16

    invoke-static {v0, v8, v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v20

    .line 1257
    .restart local v20    # "intersectionHorizontal":[F
    move-object/from16 v0, v16

    invoke-static {v0, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v29

    .line 1259
    .restart local v29    # "intersectionVertical":[F
    const/16 v36, 0x0

    const/16 v37, 0x0

    aget v37, v23, v37

    const/16 v38, 0x0

    aget v38, v20, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(FF)F

    move-result v37

    aput v37, v12, v36

    .line 1260
    const/16 v36, 0x1

    const/16 v37, 0x1

    aget v37, v23, v37

    const/16 v38, 0x1

    aget v38, v29, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(FF)F

    move-result v37

    aput v37, v12, v36

    .line 1261
    const/4 v9, 0x1

    .line 1262
    goto/16 :goto_3

    .line 1263
    .end local v20    # "intersectionHorizontal":[F
    .end local v23    # "intersectionSlash":[F
    .end local v29    # "intersectionVertical":[F
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0x1000

    move/from16 v36, v0

    if-eqz v36, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0x100

    move/from16 v36, v0

    if-eqz v36, :cond_6

    .line 1264
    if-eqz v30, :cond_10

    const/16 v36, 0x0

    aget v36, v17, v36

    const/16 v37, 0x0

    aget v37, v7, v37

    cmpl-float v36, v36, v37

    if-lez v36, :cond_6

    const/16 v36, 0x1

    aget v36, v17, v36

    const/16 v37, 0x1

    aget v37, v7, v37

    cmpl-float v36, v36, v37

    if-lez v36, :cond_6

    .line 1265
    :cond_10
    move-object/from16 v0, v16

    invoke-static {v0, v6, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v23

    .line 1266
    .restart local v23    # "intersectionSlash":[F
    move-object/from16 v0, v16

    invoke-static {v0, v6, v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v20

    .line 1267
    .restart local v20    # "intersectionHorizontal":[F
    move-object/from16 v0, v16

    invoke-static {v0, v6, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v29

    .line 1269
    .restart local v29    # "intersectionVertical":[F
    const/16 v36, 0x0

    const/16 v37, 0x0

    aget v37, v23, v37

    const/16 v38, 0x0

    aget v38, v20, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(FF)F

    move-result v37

    aput v37, v12, v36

    .line 1270
    const/16 v36, 0x1

    const/16 v37, 0x1

    aget v37, v23, v37

    const/16 v38, 0x1

    aget v38, v29, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(FF)F

    move-result v37

    aput v37, v12, v36

    .line 1271
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 1288
    .end local v20    # "intersectionHorizontal":[F
    .end local v23    # "intersectionSlash":[F
    .end local v29    # "intersectionVertical":[F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0x1000

    move/from16 v36, v0

    if-eqz v36, :cond_8

    .line 1289
    invoke-static {v15, v14, v6, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->isParallel([F[F[F[F)Z

    move-result v36

    if-eqz v36, :cond_12

    .line 1290
    const/16 v36, 0x1

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v37, v0

    aput v37, v12, v36

    .line 1292
    :cond_12
    move-object/from16 v0, v16

    invoke-static {v0, v6, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v31

    .line 1293
    .restart local v31    # "leftIntersection":[F
    move-object/from16 v0, v16

    invoke-static {v0, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v34

    .line 1295
    .restart local v34    # "rightIntersection":[F
    const/16 v36, 0x1

    const/16 v37, 0x1

    aget v37, v31, v37

    const/16 v38, 0x1

    aget v38, v34, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(FF)F

    move-result v37

    aput v37, v12, v36

    goto/16 :goto_4

    .line 1305
    .end local v31    # "leftIntersection":[F
    .end local v34    # "rightIntersection":[F
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0x100

    move/from16 v36, v0

    if-eqz v36, :cond_1

    .line 1306
    invoke-static {v15, v14, v6, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->isParallel([F[F[F[F)Z

    move-result v36

    if-eqz v36, :cond_14

    .line 1307
    const/16 v36, 0x0

    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v37, v0

    aput v37, v12, v36

    .line 1309
    :cond_14
    move-object/from16 v0, v16

    invoke-static {v0, v6, v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v35

    .line 1310
    .restart local v35    # "topIntersection":[F
    move-object/from16 v0, v16

    invoke-static {v0, v5, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v3

    .line 1312
    .restart local v3    # "bottomIntersection":[F
    const/16 v36, 0x0

    const/16 v37, 0x0

    aget v37, v35, v37

    const/16 v38, 0x0

    aget v38, v3, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(FF)F

    move-result v37

    aput v37, v12, v36

    goto/16 :goto_1

    .line 1316
    .end local v3    # "bottomIntersection":[F
    .end local v35    # "topIntersection":[F
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x10

    if-eqz v36, :cond_17

    .line 1317
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v13, v0, [F

    const/16 v36, 0x0

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v37, v0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v38, v0

    add-float v37, v37, v38

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    aput v37, v13, v36

    const/16 v36, 0x1

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v37, v0

    aput v37, v13, v36

    .line 1318
    .local v13, "imageCropCenter":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v25

    .line 1319
    .local v25, "intersectionSlashLeft":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v26

    .line 1320
    .local v26, "intersectionSlashRight":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v21

    .line 1321
    .local v21, "intersectionLeft":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v22

    .line 1323
    .local v22, "intersectionRight":[F
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v38

    mul-float v37, v37, v38

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v38

    div-float v37, v37, v38

    const/16 v38, 0x0

    aget v38, v13, v38

    const/16 v39, 0x0

    aget v39, v21, v39

    sub-float v38, v38, v39

    const/16 v39, 0x0

    aget v39, v22, v39

    const/16 v40, 0x0

    aget v40, v13, v40

    sub-float v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(FF)F

    move-result v38

    mul-float v37, v37, v38

    sub-float v33, v36, v37

    .line 1324
    .local v33, "minIntersectionSlashPos":F
    const/16 v36, 0x1

    aget v36, v25, v36

    const/16 v37, 0x1

    aget v37, v26, v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(FF)F

    move-result v32

    .line 1325
    .local v32, "minIntersectionPos":F
    const/16 v36, 0x1

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v37

    aput v37, v12, v36

    .line 1337
    .end local v13    # "imageCropCenter":[F
    .end local v21    # "intersectionLeft":[F
    .end local v22    # "intersectionRight":[F
    .end local v25    # "intersectionSlashLeft":[F
    .end local v26    # "intersectionSlashRight":[F
    .end local v32    # "minIntersectionPos":F
    .end local v33    # "minIntersectionSlashPos":F
    :cond_16
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    and-int/lit8 v36, v36, 0x1

    if-eqz v36, :cond_18

    .line 1338
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v13, v0, [F

    const/16 v36, 0x0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v37, v0

    aput v37, v13, v36

    const/16 v36, 0x1

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v37, v0

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v38, v0

    add-float v37, v37, v38

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    aput v37, v13, v36

    .line 1339
    .restart local v13    # "imageCropCenter":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v27

    .line 1340
    .local v27, "intersectionSlashTop":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v24

    .line 1341
    .local v24, "intersectionSlashBottom":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v28

    .line 1342
    .local v28, "intersectionTop":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v19

    .line 1344
    .local v19, "intersectionBottom":[F
    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v38

    mul-float v37, v37, v38

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v38

    div-float v37, v37, v38

    const/16 v38, 0x1

    aget v38, v13, v38

    const/16 v39, 0x1

    aget v39, v28, v39

    sub-float v38, v38, v39

    const/16 v39, 0x1

    aget v39, v19, v39

    const/16 v40, 0x1

    aget v40, v13, v40

    sub-float v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(FF)F

    move-result v38

    mul-float v37, v37, v38

    sub-float v33, v36, v37

    .line 1345
    .restart local v33    # "minIntersectionSlashPos":F
    const/16 v36, 0x0

    aget v36, v27, v36

    const/16 v37, 0x0

    aget v37, v24, v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(FF)F

    move-result v32

    .line 1346
    .restart local v32    # "minIntersectionPos":F
    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v37

    aput v37, v12, v36

    goto/16 :goto_1

    .line 1326
    .end local v13    # "imageCropCenter":[F
    .end local v19    # "intersectionBottom":[F
    .end local v24    # "intersectionSlashBottom":[F
    .end local v27    # "intersectionSlashTop":[F
    .end local v28    # "intersectionTop":[F
    .end local v32    # "minIntersectionPos":F
    .end local v33    # "minIntersectionSlashPos":F
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0x1000

    move/from16 v36, v0

    if-eqz v36, :cond_16

    .line 1327
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v13, v0, [F

    const/16 v36, 0x0

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v37, v0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v38, v0

    add-float v37, v37, v38

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    aput v37, v13, v36

    const/16 v36, 0x1

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v37, v0

    aput v37, v13, v36

    .line 1328
    .restart local v13    # "imageCropCenter":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v25

    .line 1329
    .restart local v25    # "intersectionSlashLeft":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v26

    .line 1330
    .restart local v26    # "intersectionSlashRight":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v21

    .line 1331
    .restart local v21    # "intersectionLeft":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v22

    .line 1333
    .restart local v22    # "intersectionRight":[F
    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v38

    mul-float v37, v37, v38

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v38

    div-float v37, v37, v38

    const/16 v38, 0x0

    aget v38, v13, v38

    const/16 v39, 0x0

    aget v39, v21, v39

    sub-float v38, v38, v39

    const/16 v39, 0x0

    aget v39, v22, v39

    const/16 v40, 0x0

    aget v40, v13, v40

    sub-float v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(FF)F

    move-result v38

    mul-float v37, v37, v38

    add-float v33, v36, v37

    .line 1334
    .restart local v33    # "minIntersectionSlashPos":F
    const/16 v36, 0x1

    aget v36, v25, v36

    const/16 v37, 0x1

    aget v37, v26, v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(FF)F

    move-result v32

    .line 1335
    .restart local v32    # "minIntersectionPos":F
    const/16 v36, 0x1

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v37

    aput v37, v12, v36

    goto/16 :goto_5

    .line 1347
    .end local v13    # "imageCropCenter":[F
    .end local v21    # "intersectionLeft":[F
    .end local v22    # "intersectionRight":[F
    .end local v25    # "intersectionSlashLeft":[F
    .end local v26    # "intersectionSlashRight":[F
    .end local v32    # "minIntersectionPos":F
    .end local v33    # "minIntersectionSlashPos":F
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v36, v0

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0x100

    move/from16 v36, v0

    if-eqz v36, :cond_1

    .line 1348
    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v13, v0, [F

    const/16 v36, 0x0

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v37, v0

    aput v37, v13, v36

    const/16 v36, 0x1

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v37, v0

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v38, v0

    add-float v37, v37, v38

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    aput v37, v13, v36

    .line 1349
    .restart local v13    # "imageCropCenter":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v8}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v27

    .line 1350
    .restart local v27    # "intersectionSlashTop":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v24

    .line 1351
    .restart local v24    # "intersectionSlashBottom":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v28

    .line 1352
    .restart local v28    # "intersectionTop":[F
    move-object/from16 v0, v16

    invoke-static {v0, v13, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getRectIntersection(Ljava/util/List;[F[F)[F

    move-result-object v19

    .line 1354
    .restart local v19    # "intersectionBottom":[F
    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v38

    mul-float v37, v37, v38

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v38

    div-float v37, v37, v38

    const/16 v38, 0x1

    aget v38, v13, v38

    const/16 v39, 0x1

    aget v39, v28, v39

    sub-float v38, v38, v39

    const/16 v39, 0x1

    aget v39, v19, v39

    const/16 v40, 0x1

    aget v40, v13, v40

    sub-float v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(FF)F

    move-result v38

    mul-float v37, v37, v38

    add-float v33, v36, v37

    .line 1355
    .restart local v33    # "minIntersectionSlashPos":F
    const/16 v36, 0x0

    aget v36, v27, v36

    const/16 v37, 0x0

    aget v37, v24, v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(FF)F

    move-result v32

    .line 1356
    .restart local v32    # "minIntersectionPos":F
    const/16 v36, 0x0

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v37

    aput v37, v12, v36

    goto/16 :goto_1
.end method

.method private onFixedResize(FF)Landroid/graphics/PointF;
    .locals 2
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    .line 1363
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1364
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->onFixedResizeEdge(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 1366
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->onFixedResizeVertex(FF)Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_0
.end method

.method private onFixedResizeEdge(FF)Landroid/graphics/PointF;
    .locals 30
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    .line 1371
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->calculateMinSize()I

    move-result v20

    .line 1372
    .local v20, "minSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 1373
    .local v7, "bounds":Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 1374
    .local v10, "imageArea":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 1375
    .local v9, "image":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2200(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1382
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v8, v0, [F

    .line 1383
    .local v8, "cropInImagePoints":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;

    move-result-object v26

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    aput v29, v27, v28

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v29, v0

    aput v29, v27, v28

    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v29, v0

    aput v29, v27, v28

    const/16 v28, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v29, v0

    aput v29, v27, v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1384
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->getImageCropBound(Landroid/graphics/RectF;)[F

    move-result-object v11

    .line 1385
    .local v11, "imageCropBound":[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v26, v0

    const/16 v27, 0x100

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 1387
    :cond_0
    const/4 v12, 0x0

    .line 1389
    .local v12, "imageOffsetX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 1390
    const/high16 v26, -0x40800000    # -1.0f

    mul-float p1, p1, v26

    .line 1391
    const/16 v26, 0x0

    cmpl-float v26, p1, v26

    if-ltz v26, :cond_5

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v18, v26, v27

    .line 1393
    .local v18, "maxOffsetX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v11, v27

    sub-float v12, v26, v27

    .line 1406
    :goto_0
    const/16 v26, 0x0

    cmpl-float v26, p1, v26

    if-lez v26, :cond_8

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    sub-float v17, v26, v27

    .line 1408
    .local v17, "maxOffsetTop":F
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    sub-float v14, v26, v27

    .line 1409
    .local v14, "maxOffsetBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v26

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->getWidth(F)F

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 1414
    :goto_1
    move/from16 v0, p1

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1416
    cmpl-float v26, p1, v18

    if-lez v26, :cond_1

    .line 1417
    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v27, p1, v18

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v28

    div-float v27, v27, v28

    sub-float v25, v26, v27

    .line 1418
    .local v25, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v26, v0

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    const/16 v26, 0x2

    aget v26, v8, v26

    :goto_2
    const/16 v28, 0x1

    aget v28, v8, v28

    const/16 v29, 0x3

    aget v29, v8, v29

    add-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 1421
    .end local v25    # "scale":F
    :cond_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpl-float v26, v26, v18

    if-lez v26, :cond_2

    .line 1422
    const/16 v26, 0x0

    cmpl-float v26, p1, v26

    if-lez v26, :cond_a

    const/16 v26, 0x1

    :goto_3
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float p1, v18, v26

    .line 1425
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v26

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->getHeight(F)F

    move-result v6

    .line 1426
    .local v6, "absOffsetY":F
    const/high16 v26, 0x40000000    # 2.0f

    div-float v26, v6, v26

    cmpl-float v26, v26, v17

    if-gtz v26, :cond_3

    const/high16 v26, 0x40000000    # 2.0f

    div-float v26, v6, v26

    cmpl-float v26, v26, v14

    if-lez v26, :cond_c

    .line 1427
    :cond_3
    cmpg-float v26, v17, v14

    if-gez v26, :cond_b

    .line 1428
    move/from16 v24, v17

    .line 1429
    .local v24, "offsetTop":F
    sub-float v21, v6, v24

    .line 1438
    .local v21, "offsetBottom":F
    :goto_4
    const/16 v26, 0x0

    cmpg-float v26, p1, v26

    if-gez v26, :cond_d

    .line 1439
    const/high16 v26, -0x40800000    # -1.0f

    mul-float v21, v21, v26

    .line 1443
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 1444
    const/high16 v26, -0x40800000    # -1.0f

    mul-float p1, p1, v26

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    add-float v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 1449
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    add-float v27, v27, v24

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    add-float v27, v27, v21

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;

    move-result-object v26

    move/from16 v0, p1

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1519
    .end local v6    # "absOffsetY":F
    .end local v12    # "imageOffsetX":F
    .end local v14    # "maxOffsetBottom":F
    .end local v17    # "maxOffsetTop":F
    .end local v18    # "maxOffsetX":F
    .end local v21    # "offsetBottom":F
    .end local v24    # "offsetTop":F
    :cond_4
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;

    move-result-object v26

    return-object v26

    .line 1395
    .restart local v12    # "imageOffsetX":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->constraint(FF)F

    move-result v18

    .restart local v18    # "maxOffsetX":F
    goto/16 :goto_0

    .line 1398
    .end local v18    # "maxOffsetX":F
    :cond_6
    const/16 v26, 0x0

    cmpl-float v26, p1, v26

    if-ltz v26, :cond_7

    .line 1399
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    sub-float v18, v26, v27

    .line 1400
    .restart local v18    # "maxOffsetX":F
    const/16 v26, 0x0

    aget v26, v11, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    sub-float v12, v26, v27

    goto/16 :goto_0

    .line 1402
    .end local v18    # "maxOffsetX":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->constraint(FF)F

    move-result v18

    .restart local v18    # "maxOffsetX":F
    goto/16 :goto_0

    .line 1411
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->constraint(FF)F

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    div-float v17, v26, v27

    .line 1412
    .restart local v17    # "maxOffsetTop":F
    move/from16 v14, v17

    .restart local v14    # "maxOffsetBottom":F
    goto/16 :goto_1

    .line 1418
    .restart local v25    # "scale":F
    :cond_9
    const/16 v26, 0x0

    aget v26, v8, v26

    goto/16 :goto_2

    .line 1422
    .end local v25    # "scale":F
    :cond_a
    const/16 v26, -0x1

    goto/16 :goto_3

    .line 1431
    .restart local v6    # "absOffsetY":F
    :cond_b
    move/from16 v21, v14

    .line 1432
    .restart local v21    # "offsetBottom":F
    sub-float v24, v6, v21

    .restart local v24    # "offsetTop":F
    goto/16 :goto_4

    .line 1435
    .end local v21    # "offsetBottom":F
    .end local v24    # "offsetTop":F
    :cond_c
    const/high16 v26, 0x40000000    # 2.0f

    div-float v24, v6, v26

    .line 1436
    .restart local v24    # "offsetTop":F
    move/from16 v21, v24

    .restart local v21    # "offsetBottom":F
    goto/16 :goto_4

    .line 1441
    :cond_d
    const/high16 v26, -0x40800000    # -1.0f

    mul-float v24, v24, v26

    goto/16 :goto_5

    .line 1447
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    add-float v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    .line 1452
    .end local v6    # "absOffsetY":F
    .end local v12    # "imageOffsetX":F
    .end local v14    # "maxOffsetBottom":F
    .end local v17    # "maxOffsetTop":F
    .end local v18    # "maxOffsetX":F
    .end local v21    # "offsetBottom":F
    .end local v24    # "offsetTop":F
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v26, v0

    const/16 v27, 0x10

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v26, v0

    const/16 v27, 0x1000

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 1454
    :cond_10
    const/4 v13, 0x0

    .line 1455
    .local v13, "imageOffsetY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v26, v0

    const/16 v27, 0x10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 1456
    const/high16 v26, -0x40800000    # -1.0f

    mul-float p2, p2, v26

    .line 1457
    const/16 v26, 0x0

    cmpl-float v26, p2, v26

    if-lez v26, :cond_14

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    sub-float v19, v26, v27

    .line 1459
    .local v19, "maxOffsetY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    const/16 v27, 0x1

    aget v27, v11, v27

    sub-float v13, v26, v27

    .line 1472
    :goto_8
    const/16 v26, 0x0

    cmpl-float v26, p2, v26

    if-lez v26, :cond_17

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v15, v26, v27

    .line 1474
    .local v15, "maxOffsetLeft":F
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    sub-float v16, v26, v27

    .line 1475
    .local v16, "maxOffsetRight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v26

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->getHeight(F)F

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 1480
    :goto_9
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1482
    cmpl-float v26, p2, v19

    if-lez v26, :cond_11

    .line 1483
    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v27, p2, v19

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v28

    div-float v27, v27, v28

    sub-float v25, v26, v27

    .line 1484
    .restart local v25    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v27

    const/16 v26, 0x0

    aget v26, v8, v26

    const/16 v28, 0x2

    aget v28, v8, v28

    add-float v26, v26, v28

    const/high16 v28, 0x40000000    # 2.0f

    div-float v28, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v26, v0

    const/16 v29, 0x10

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    const/16 v26, 0x3

    aget v26, v8, v26

    :goto_a
    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v25

    move/from16 v3, v28

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 1487
    .end local v25    # "scale":F
    :cond_11
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpl-float v26, v26, v19

    if-lez v26, :cond_12

    .line 1488
    const/16 v26, 0x0

    cmpl-float v26, p2, v26

    if-lez v26, :cond_19

    const/16 v26, 0x1

    :goto_b
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float p2, v19, v26

    .line 1491
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v26

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->getWidth(F)F

    move-result v5

    .line 1492
    .local v5, "absOffsetX":F
    const/high16 v26, 0x40000000    # 2.0f

    div-float v26, v5, v26

    cmpl-float v26, v26, v15

    if-gtz v26, :cond_13

    const/high16 v26, 0x40000000    # 2.0f

    div-float v26, v5, v26

    cmpl-float v26, v26, v16

    if-lez v26, :cond_1b

    .line 1493
    :cond_13
    cmpg-float v26, v15, v16

    if-gez v26, :cond_1a

    .line 1494
    move/from16 v22, v15

    .line 1495
    .local v22, "offsetLeft":F
    sub-float v23, v5, v22

    .line 1504
    .local v23, "offsetRight":F
    :goto_c
    const/16 v26, 0x0

    cmpg-float v26, p2, v26

    if-gez v26, :cond_1c

    .line 1505
    const/high16 v26, -0x40800000    # -1.0f

    mul-float v23, v23, v26

    .line 1509
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v26, v0

    const/16 v27, 0x10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    .line 1510
    const/high16 v26, -0x40800000    # -1.0f

    mul-float p2, p2, v26

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    add-float v27, v27, p2

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 1515
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    add-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    add-float v27, v27, v23

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;

    move-result-object v26

    move/from16 v0, p2

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_7

    .line 1461
    .end local v5    # "absOffsetX":F
    .end local v15    # "maxOffsetLeft":F
    .end local v16    # "maxOffsetRight":F
    .end local v19    # "maxOffsetY":F
    .end local v22    # "offsetLeft":F
    .end local v23    # "offsetRight":F
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->constraint(FF)F

    move-result v19

    .restart local v19    # "maxOffsetY":F
    goto/16 :goto_8

    .line 1464
    .end local v19    # "maxOffsetY":F
    :cond_15
    const/16 v26, 0x0

    cmpl-float v26, p2, v26

    if-lez v26, :cond_16

    .line 1465
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    sub-float v19, v26, v27

    .line 1466
    .restart local v19    # "maxOffsetY":F
    const/16 v26, 0x1

    aget v26, v11, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    sub-float v13, v26, v27

    goto/16 :goto_8

    .line 1468
    .end local v19    # "maxOffsetY":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->constraint(FF)F

    move-result v19

    .restart local v19    # "maxOffsetY":F
    goto/16 :goto_8

    .line 1477
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->constraint(FF)F

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    div-float v15, v26, v27

    .line 1478
    .restart local v15    # "maxOffsetLeft":F
    move/from16 v16, v15

    .restart local v16    # "maxOffsetRight":F
    goto/16 :goto_9

    .line 1484
    .restart local v25    # "scale":F
    :cond_18
    const/16 v26, 0x1

    aget v26, v8, v26

    goto/16 :goto_a

    .line 1488
    .end local v25    # "scale":F
    :cond_19
    const/16 v26, -0x1

    goto/16 :goto_b

    .line 1497
    .restart local v5    # "absOffsetX":F
    :cond_1a
    move/from16 v23, v16

    .line 1498
    .restart local v23    # "offsetRight":F
    sub-float v22, v5, v23

    .restart local v22    # "offsetLeft":F
    goto/16 :goto_c

    .line 1501
    .end local v22    # "offsetLeft":F
    .end local v23    # "offsetRight":F
    :cond_1b
    const/high16 v26, 0x40000000    # 2.0f

    div-float v22, v5, v26

    .line 1502
    .restart local v22    # "offsetLeft":F
    move/from16 v23, v22

    .restart local v23    # "offsetRight":F
    goto/16 :goto_c

    .line 1507
    :cond_1c
    const/high16 v26, -0x40800000    # -1.0f

    mul-float v22, v22, v26

    goto/16 :goto_d

    .line 1513
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    add-float v27, v27, p2

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_e
.end method

.method private onFixedResizeVertex(FF)Landroid/graphics/PointF;
    .locals 25
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    .line 1526
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->calculateMinSize()I

    move-result v16

    .line 1527
    .local v16, "minSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getBounds()Landroid/graphics/RectF;

    move-result-object v6

    .line 1528
    .local v6, "bounds":Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 1529
    .local v10, "imageArea":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 1530
    .local v9, "image":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2200(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x10

    if-eqz v21, :cond_0

    .line 1536
    const/high16 v21, -0x40800000    # -1.0f

    mul-float p2, p2, v21

    .line 1538
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_1

    .line 1539
    const/high16 v21, -0x40800000    # -1.0f

    mul-float p1, p1, v21

    .line 1541
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$600(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$600(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v22

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    .line 1542
    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$700(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$700(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v23

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    .line 1541
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v8, v0

    .line 1543
    .local v8, "hypo":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$600(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v21

    div-float v19, v21, v8

    .line 1544
    .local v19, "xRate":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$700(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v21

    div-float v20, v21, v8

    .line 1545
    .local v20, "yRate":F
    mul-float v21, v19, p1

    mul-float v22, v20, p2

    add-float v17, v21, v22

    .line 1546
    .local v17, "offset":F
    mul-float p1, v17, v19

    .line 1547
    mul-float p2, v17, v20

    .line 1551
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v7, v0, [F

    .line 1552
    .local v7, "cropInImagePoints":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1553
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->getImageCropBound(Landroid/graphics/RectF;)[F

    move-result-object v11

    .line 1554
    .local v11, "imageCropBound":[F
    const/4 v12, 0x0

    .local v12, "imageOffsetX":F
    const/4 v13, 0x0

    .line 1555
    .local v13, "imageOffsetY":F
    const/16 v21, 0x0

    cmpl-float v21, p1, v21

    if-lez v21, :cond_b

    .line 1556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_a

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    sub-float v14, v21, v22

    .line 1558
    .local v14, "maxOffsetX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    const/16 v22, 0x0

    aget v22, v11, v22

    sub-float v12, v21, v22

    .line 1566
    :goto_0
    const/16 v21, 0x0

    cmpl-float v21, p2, v21

    if-lez v21, :cond_d

    .line 1567
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x10

    if-eqz v21, :cond_c

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    sub-float v15, v21, v22

    .line 1569
    .local v15, "maxOffsetY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v11, v22

    sub-float v13, v21, v22

    .line 1578
    :goto_1
    cmpl-float v21, p1, v12

    if-lez v21, :cond_2

    .line 1579
    move/from16 p1, v12

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->getHeight(F)F

    move-result p2

    .line 1582
    :cond_2
    cmpl-float v21, p2, v13

    if-lez v21, :cond_3

    .line 1583
    move/from16 p2, v13

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->getWidth(F)F

    move-result p1

    .line 1588
    :cond_3
    cmpl-float v21, p1, v14

    if-gtz v21, :cond_4

    cmpl-float v21, p2, v15

    if-lez v21, :cond_5

    .line 1590
    :cond_4
    sub-float v21, p1, v14

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v22

    div-float v21, v21, v22

    sub-float v22, p2, v15

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v23

    div-float v22, v22, v23

    cmpl-float v21, v21, v22

    if-lez v21, :cond_e

    .line 1591
    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v22, p1, v14

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v23

    div-float v22, v22, v23

    sub-float v18, v21, v22

    .line 1595
    .local v18, "scale":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2200(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x10

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2200(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    :goto_4
    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 1598
    .end local v18    # "scale":F
    :cond_5
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v21

    cmpl-float v21, v21, v14

    if-lez v21, :cond_6

    .line 1599
    const/16 v21, 0x0

    cmpl-float v21, p1, v21

    if-lez v21, :cond_11

    const/16 v21, 0x1

    :goto_5
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float p1, v14, v21

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$600(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v21

    div-float v21, p1, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$700(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v22

    mul-float p2, v21, v22

    .line 1602
    :cond_6
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v21

    cmpl-float v21, v21, v15

    if-lez v21, :cond_7

    .line 1603
    const/16 v21, 0x0

    cmpl-float v21, p2, v21

    if-lez v21, :cond_12

    const/16 v21, 0x1

    :goto_6
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float p2, v15, v21

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$700(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v21

    div-float v21, p2, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$600(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;)F

    move-result v22

    mul-float p1, v21, v22

    .line 1606
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x10

    if-eqz v21, :cond_13

    .line 1607
    const/high16 v21, -0x40800000    # -1.0f

    mul-float p2, p2, v21

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    add-float v22, v22, p2

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 1612
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_14

    .line 1613
    const/high16 v21, -0x40800000    # -1.0f

    mul-float p1, p1, v21

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    add-float v22, v22, p1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 1618
    :cond_9
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;

    move-result-object v21

    move/from16 v0, p1

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;

    move-result-object v21

    move/from16 v0, p2

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;

    move-result-object v21

    return-object v21

    .line 1560
    .end local v14    # "maxOffsetX":F
    .end local v15    # "maxOffsetY":F
    :cond_a
    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    sub-float v14, v21, v22

    .line 1561
    .restart local v14    # "maxOffsetX":F
    const/16 v21, 0x0

    aget v21, v11, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    sub-float v12, v21, v22

    goto/16 :goto_0

    .line 1564
    .end local v14    # "maxOffsetX":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->constraint(FF)F

    move-result v14

    .restart local v14    # "maxOffsetX":F
    goto/16 :goto_0

    .line 1571
    :cond_c
    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    sub-float v15, v21, v22

    .line 1572
    .restart local v15    # "maxOffsetY":F
    const/16 v21, 0x1

    aget v21, v11, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    sub-float v13, v21, v22

    goto/16 :goto_1

    .line 1575
    .end local v15    # "maxOffsetY":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->constraint(FF)F

    move-result v15

    .restart local v15    # "maxOffsetY":F
    goto/16 :goto_1

    .line 1593
    :cond_e
    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v22, p2, v15

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v23

    div-float v22, v22, v23

    sub-float v18, v21, v22

    .restart local v18    # "scale":F
    goto/16 :goto_2

    .line 1595
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2200(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2200(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    goto/16 :goto_4

    .line 1599
    .end local v18    # "scale":F
    :cond_11
    const/16 v21, -0x1

    goto/16 :goto_5

    .line 1603
    :cond_12
    const/16 v21, -0x1

    goto/16 :goto_6

    .line 1609
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x1000

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    add-float v22, v22, p2

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_7

    .line 1615
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    add-float v22, v22, p1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->right:F

    goto/16 :goto_8
.end method

.method private onFreeResize(FF)Landroid/graphics/PointF;
    .locals 25
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 955
    .local v7, "bounds":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v11

    .line 956
    .local v11, "image":Landroid/graphics/RectF;
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->calculateMinSize()I

    move-result v17

    .line 959
    .local v17, "minSize":I
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 960
    .local v12, "imageArea":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2200(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 965
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v9, v0, [F

    .line 966
    .local v9, "cropInImagePoints":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    aput v24, v22, v23

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 968
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->getImageCropBound(Landroid/graphics/RectF;)[F

    move-result-object v13

    .line 973
    .local v13, "imageCropBound":[F
    const/4 v10, 0x0

    .line 974
    .local v10, "handlerByCornerBound":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x10

    if-eqz v21, :cond_6

    .line 975
    const/16 v21, 0x0

    cmpg-float v21, p1, v21

    if-gtz v21, :cond_2

    const/16 v21, 0x0

    cmpg-float v21, p2, v21

    if-gtz v21, :cond_2

    .line 976
    const/16 v21, 0x0

    aget v21, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    sub-float v14, v21, v22

    .line 977
    .local v14, "leftBoundOffset":F
    cmpg-float v21, p1, v14

    if-gez v21, :cond_0

    .line 978
    move/from16 p1, v14

    .line 980
    :cond_0
    const/16 v21, 0x1

    aget v21, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    sub-float v20, v21, v22

    .line 981
    .local v20, "topBoundOffset":F
    cmpg-float v21, p2, v20

    if-gez v21, :cond_1

    .line 982
    move/from16 p2, v20

    .line 985
    :cond_1
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_4

    .line 986
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 987
    .local v8, "changeOffset":F
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_3

    const/4 v10, 0x1

    .line 988
    :goto_0
    const/16 v21, 0x1000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->checkOtherBoundOffset(IFLandroid/graphics/RectF;)F

    move-result v8

    .line 989
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v22

    div-float v22, v8, v22

    sub-float v19, v21, v22

    .line 990
    .local v19, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x2

    aget v22, v9, v22

    const/16 v23, 0x3

    aget v23, v9, v23

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 1075
    .end local v8    # "changeOffset":F
    .end local v14    # "leftBoundOffset":F
    .end local v19    # "scale":F
    .end local v20    # "topBoundOffset":F
    :cond_2
    :goto_1
    if-eqz v10, :cond_18

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/PointF;->set(FF)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;

    move-result-object v21

    .line 1169
    :goto_2
    return-object v21

    .line 987
    .restart local v8    # "changeOffset":F
    .restart local v14    # "leftBoundOffset":F
    .restart local v20    # "topBoundOffset":F
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 991
    .end local v8    # "changeOffset":F
    :cond_4
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_2

    .line 992
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 993
    .restart local v8    # "changeOffset":F
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_5

    const/4 v10, 0x1

    .line 994
    :goto_3
    const/16 v21, 0x100

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->checkOtherBoundOffset(IFLandroid/graphics/RectF;)F

    move-result v8

    .line 995
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v22

    div-float v22, v8, v22

    sub-float v19, v21, v22

    .line 996
    .restart local v19    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x2

    aget v22, v9, v22

    const/16 v23, 0x3

    aget v23, v9, v23

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto :goto_1

    .line 993
    .end local v19    # "scale":F
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 999
    .end local v8    # "changeOffset":F
    .end local v14    # "leftBoundOffset":F
    .end local v20    # "topBoundOffset":F
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x1000

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 1000
    const/16 v21, 0x0

    cmpg-float v21, p1, v21

    if-gtz v21, :cond_2

    const/16 v21, 0x0

    cmpl-float v21, p2, v21

    if-ltz v21, :cond_2

    .line 1001
    const/16 v21, 0x0

    aget v21, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    sub-float v14, v21, v22

    .line 1002
    .restart local v14    # "leftBoundOffset":F
    cmpg-float v21, p1, v14

    if-gez v21, :cond_7

    .line 1003
    move/from16 p1, v14

    .line 1005
    :cond_7
    const/16 v21, 0x1

    aget v21, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    sub-float v5, v21, v22

    .line 1006
    .local v5, "bottomBoundOffset":F
    cmpl-float v21, p2, v5

    if-lez v21, :cond_8

    .line 1007
    move/from16 p2, v5

    .line 1010
    :cond_8
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_a

    .line 1011
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1012
    .restart local v8    # "changeOffset":F
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_9

    const/4 v10, 0x1

    .line 1013
    :goto_4
    const/16 v21, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->checkOtherBoundOffset(IFLandroid/graphics/RectF;)F

    move-result v8

    .line 1014
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v22

    div-float v22, v8, v22

    sub-float v19, v21, v22

    .line 1015
    .restart local v19    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x2

    aget v22, v9, v22

    const/16 v23, 0x1

    aget v23, v9, v23

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto/16 :goto_1

    .line 1012
    .end local v19    # "scale":F
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 1016
    .end local v8    # "changeOffset":F
    :cond_a
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_2

    .line 1017
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1018
    .restart local v8    # "changeOffset":F
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_b

    const/4 v10, 0x1

    .line 1019
    :goto_5
    const/16 v21, 0x100

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->checkOtherBoundOffset(IFLandroid/graphics/RectF;)F

    move-result v8

    .line 1020
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v22

    div-float v22, v8, v22

    sub-float v19, v21, v22

    .line 1021
    .restart local v19    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x2

    aget v22, v9, v22

    const/16 v23, 0x1

    aget v23, v9, v23

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto/16 :goto_1

    .line 1018
    .end local v19    # "scale":F
    :cond_b
    const/4 v10, 0x0

    goto :goto_5

    .line 1024
    .end local v5    # "bottomBoundOffset":F
    .end local v8    # "changeOffset":F
    .end local v14    # "leftBoundOffset":F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x10

    if-eqz v21, :cond_12

    .line 1025
    const/16 v21, 0x0

    cmpl-float v21, p1, v21

    if-ltz v21, :cond_2

    const/16 v21, 0x0

    cmpg-float v21, p2, v21

    if-gtz v21, :cond_2

    .line 1026
    const/16 v21, 0x0

    aget v21, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    sub-float v18, v21, v22

    .line 1027
    .local v18, "rightBoundOffset":F
    cmpl-float v21, p1, v18

    if-lez v21, :cond_d

    .line 1028
    move/from16 p1, v18

    .line 1030
    :cond_d
    const/16 v21, 0x1

    aget v21, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    sub-float v20, v21, v22

    .line 1031
    .restart local v20    # "topBoundOffset":F
    cmpg-float v21, p2, v20

    if-gez v21, :cond_e

    .line 1032
    move/from16 p2, v20

    .line 1035
    :cond_e
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_10

    .line 1036
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1037
    .restart local v8    # "changeOffset":F
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_f

    const/4 v10, 0x1

    .line 1038
    :goto_6
    const/16 v21, 0x1000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->checkOtherBoundOffset(IFLandroid/graphics/RectF;)F

    move-result v8

    .line 1039
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v22

    div-float v22, v8, v22

    sub-float v19, v21, v22

    .line 1040
    .restart local v19    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v9, v22

    const/16 v23, 0x3

    aget v23, v9, v23

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto/16 :goto_1

    .line 1037
    .end local v19    # "scale":F
    :cond_f
    const/4 v10, 0x0

    goto :goto_6

    .line 1041
    .end local v8    # "changeOffset":F
    :cond_10
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_2

    .line 1042
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1043
    .restart local v8    # "changeOffset":F
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_11

    const/4 v10, 0x1

    .line 1044
    :goto_7
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->checkOtherBoundOffset(IFLandroid/graphics/RectF;)F

    move-result v8

    .line 1045
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v22

    div-float v22, v8, v22

    sub-float v19, v21, v22

    .line 1046
    .restart local v19    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v9, v22

    const/16 v23, 0x3

    aget v23, v9, v23

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto/16 :goto_1

    .line 1043
    .end local v19    # "scale":F
    :cond_11
    const/4 v10, 0x0

    goto :goto_7

    .line 1049
    .end local v8    # "changeOffset":F
    .end local v18    # "rightBoundOffset":F
    .end local v20    # "topBoundOffset":F
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x1000

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 1050
    const/16 v21, 0x0

    cmpl-float v21, p1, v21

    if-ltz v21, :cond_2

    const/16 v21, 0x0

    cmpl-float v21, p2, v21

    if-ltz v21, :cond_2

    .line 1051
    const/16 v21, 0x0

    aget v21, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    sub-float v18, v21, v22

    .line 1052
    .restart local v18    # "rightBoundOffset":F
    cmpl-float v21, p1, v18

    if-lez v21, :cond_13

    .line 1053
    move/from16 p1, v18

    .line 1055
    :cond_13
    const/16 v21, 0x1

    aget v21, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    sub-float v5, v21, v22

    .line 1056
    .restart local v5    # "bottomBoundOffset":F
    cmpl-float v21, p2, v5

    if-lez v21, :cond_14

    .line 1057
    move/from16 p2, v5

    .line 1060
    :cond_14
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_16

    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_16

    .line 1061
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1062
    .restart local v8    # "changeOffset":F
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_15

    const/4 v10, 0x1

    .line 1063
    :goto_8
    const/16 v21, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->checkOtherBoundOffset(IFLandroid/graphics/RectF;)F

    move-result v8

    .line 1064
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v22

    div-float v22, v8, v22

    sub-float v19, v21, v22

    .line 1065
    .restart local v19    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v9, v22

    const/16 v23, 0x1

    aget v23, v9, v23

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto/16 :goto_1

    .line 1062
    .end local v19    # "scale":F
    :cond_15
    const/4 v10, 0x0

    goto :goto_8

    .line 1066
    .end local v8    # "changeOffset":F
    :cond_16
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_2

    const/16 v21, 0x0

    cmpl-float v21, v18, v21

    if-eqz v21, :cond_2

    .line 1067
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1068
    .restart local v8    # "changeOffset":F
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_17

    const/4 v10, 0x1

    .line 1069
    :goto_9
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->checkOtherBoundOffset(IFLandroid/graphics/RectF;)F

    move-result v8

    .line 1070
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v22

    div-float v22, v8, v22

    sub-float v19, v21, v22

    .line 1071
    .restart local v19    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v9, v22

    const/16 v23, 0x1

    aget v23, v9, v23

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto/16 :goto_1

    .line 1068
    .end local v19    # "scale":F
    :cond_17
    const/4 v10, 0x0

    goto :goto_9

    .line 1080
    .end local v5    # "bottomBoundOffset":F
    .end local v8    # "changeOffset":F
    .end local v18    # "rightBoundOffset":F
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_22

    .line 1081
    const/16 v21, 0x0

    aget v21, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    sub-float v6, v21, v22

    .line 1082
    .local v6, "boundOffset":F
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    sub-float v16, v21, v22

    .line 1083
    .local v16, "min":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->constraint(FF)F

    move-result v15

    .line 1084
    .local v15, "max":F
    cmpg-float v21, p1, v6

    if-gez v21, :cond_19

    .line 1085
    move/from16 p1, v6

    .line 1087
    :cond_19
    cmpg-float v21, p1, v16

    if-gez v21, :cond_21

    .line 1088
    sub-float v8, v16, p1

    .line 1089
    .restart local v8    # "changeOffset":F
    const/16 v21, 0x100

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->checkOtherBoundOffset(IFLandroid/graphics/RectF;)F

    move-result v8

    .line 1090
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_1a

    .line 1091
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v22

    div-float v22, v8, v22

    sub-float v19, v21, v22

    .line 1092
    .restart local v19    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x2

    aget v22, v9, v22

    const/16 v23, 0x1

    aget v23, v9, v23

    const/16 v24, 0x3

    aget v24, v9, v24

    add-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 1096
    .end local v19    # "scale":F
    :cond_1a
    move/from16 p1, v16

    .line 1100
    .end local v8    # "changeOffset":F
    :cond_1b
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    add-float v22, v22, p1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 1124
    .end local v6    # "boundOffset":F
    .end local v15    # "max":F
    .end local v16    # "min":F
    :cond_1c
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x10

    if-eqz v21, :cond_28

    .line 1125
    const/16 v21, 0x1

    aget v21, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    sub-float v6, v21, v22

    .line 1126
    .restart local v6    # "boundOffset":F
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    sub-float v16, v21, v22

    .line 1127
    .restart local v16    # "min":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->constraint(FF)F

    move-result v15

    .line 1129
    .restart local v15    # "max":F
    cmpg-float v21, p2, v6

    if-gez v21, :cond_1d

    .line 1130
    move/from16 p2, v6

    .line 1132
    :cond_1d
    cmpg-float v21, p2, v16

    if-gez v21, :cond_27

    .line 1133
    sub-float v8, v16, p2

    .line 1134
    .restart local v8    # "changeOffset":F
    const/16 v21, 0x1000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->checkOtherBoundOffset(IFLandroid/graphics/RectF;)F

    move-result v8

    .line 1135
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_1e

    .line 1136
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v22

    div-float v22, v8, v22

    sub-float v19, v21, v22

    .line 1137
    .restart local v19    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v9, v22

    const/16 v23, 0x2

    aget v23, v9, v23

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    const/16 v23, 0x3

    aget v23, v9, v23

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 1141
    .end local v19    # "scale":F
    :cond_1e
    move/from16 p2, v16

    .line 1145
    .end local v8    # "changeOffset":F
    :cond_1f
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    add-float v22, v22, p2

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 1168
    .end local v6    # "boundOffset":F
    .end local v15    # "max":F
    .end local v16    # "min":F
    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/PointF;

    move-result-object v21

    goto/16 :goto_2

    .line 1097
    .restart local v6    # "boundOffset":F
    .restart local v15    # "max":F
    .restart local v16    # "min":F
    :cond_21
    cmpl-float v21, p1, v15

    if-lez v21, :cond_1b

    .line 1098
    move/from16 p1, v15

    goto/16 :goto_a

    .line 1101
    .end local v6    # "boundOffset":F
    .end local v15    # "max":F
    .end local v16    # "min":F
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 1102
    const/16 v21, 0x0

    aget v21, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    sub-float v6, v21, v22

    .line 1103
    .restart local v6    # "boundOffset":F
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    sub-float v15, v21, v22

    .line 1104
    .restart local v15    # "max":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->constraint(FF)F

    move-result v16

    .line 1106
    .restart local v16    # "min":F
    cmpl-float v21, p1, v6

    if-lez v21, :cond_23

    .line 1107
    move/from16 p1, v6

    .line 1109
    :cond_23
    cmpl-float v21, p1, v15

    if-lez v21, :cond_26

    .line 1110
    sub-float v8, p1, v15

    .line 1111
    .restart local v8    # "changeOffset":F
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->checkOtherBoundOffset(IFLandroid/graphics/RectF;)F

    move-result v8

    .line 1112
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_24

    .line 1113
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v22

    div-float v22, v8, v22

    sub-float v19, v21, v22

    .line 1114
    .restart local v19    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v9, v22

    const/16 v23, 0x1

    aget v23, v9, v23

    const/16 v24, 0x3

    aget v24, v9, v24

    add-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 1118
    .end local v19    # "scale":F
    :cond_24
    move/from16 p1, v15

    .line 1122
    .end local v8    # "changeOffset":F
    :cond_25
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    add-float v22, v22, p1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->right:F

    goto/16 :goto_b

    .line 1119
    :cond_26
    cmpg-float v21, p1, v16

    if-gez v21, :cond_25

    .line 1120
    move/from16 p1, v16

    goto :goto_e

    .line 1142
    :cond_27
    cmpl-float v21, p2, v15

    if-lez v21, :cond_1f

    .line 1143
    move/from16 p2, v15

    goto/16 :goto_c

    .line 1146
    .end local v6    # "boundOffset":F
    .end local v15    # "max":F
    .end local v16    # "min":F
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x1000

    move/from16 v21, v0

    if-eqz v21, :cond_20

    .line 1147
    const/16 v21, 0x1

    aget v21, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    sub-float v6, v21, v22

    .line 1148
    .restart local v6    # "boundOffset":F
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    sub-float v15, v21, v22

    .line 1149
    .restart local v15    # "max":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->constraint(FF)F

    move-result v16

    .line 1150
    .restart local v16    # "min":F
    cmpl-float v21, p2, v6

    if-lez v21, :cond_29

    .line 1151
    move/from16 p2, v6

    .line 1153
    :cond_29
    cmpl-float v21, p2, v15

    if-lez v21, :cond_2c

    .line 1154
    sub-float v8, p2, v15

    .line 1155
    .restart local v8    # "changeOffset":F
    const/16 v21, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->checkOtherBoundOffset(IFLandroid/graphics/RectF;)F

    move-result v8

    .line 1156
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_2a

    .line 1157
    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v22

    div-float v22, v8, v22

    sub-float v19, v21, v22

    .line 1158
    .restart local v19    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v9, v22

    const/16 v23, 0x2

    aget v23, v9, v23

    add-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    const/16 v23, 0x1

    aget v23, v9, v23

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 1162
    .end local v19    # "scale":F
    :cond_2a
    move/from16 p2, v15

    .line 1166
    .end local v8    # "changeOffset":F
    :cond_2b
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    add-float v22, v22, p2

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_d

    .line 1163
    :cond_2c
    cmpg-float v21, p2, v16

    if-gez v21, :cond_2b

    .line 1164
    move/from16 p2, v16

    goto :goto_f
.end method

.method private resolveResizeEdge(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 1625
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1626
    .local v1, "verticalEdgeSlop":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1627
    .local v0, "horizontalEdgeSlop":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 1628
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 1629
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    .line 1634
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 1635
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    cmpg-float v2, p2, v2

    if-gez v2, :cond_3

    .line 1636
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    .line 1641
    :cond_1
    :goto_1
    return-void

    .line 1630
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 1631
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    goto :goto_0

    .line 1637
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v1

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    .line 1638
    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    goto :goto_1
.end method


# virtual methods
.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 848
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    .line 849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->resolveResizeEdge(FF)V

    .line 850
    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    if-nez v6, :cond_1

    .line 890
    :cond_0
    :goto_0
    return v4

    .line 853
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    sget-object v6, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->RESIZE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    invoke-static {v4, v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1502(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    .line 854
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1602(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Z)Z

    .line 855
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeStart:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 856
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1700(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    move v4, v5

    .line 857
    goto :goto_0

    .line 861
    :cond_2
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1500(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    move-result-object v6

    sget-object v7, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->RESIZE:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    if-ne v6, v7, :cond_0

    .line 865
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 866
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    if-nez v6, :cond_0

    .line 869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeStart:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v1, v6, v7

    .line 870
    .local v1, "offsetX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeStart:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v2, v6, v7

    .line 873
    .local v2, "offsetY":F
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mPreEdit:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v7}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 875
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1800(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v6

    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;->access$000()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$AspectRatio;

    move-result-object v7

    if-ne v6, v7, :cond_4

    move v0, v5

    .line 876
    .local v0, "isFreeCrop":Z
    :goto_1
    if-eqz v0, :cond_5

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->onFreeResize(FF)Landroid/graphics/PointF;

    move-result-object v3

    .line 878
    .local v3, "offsets":Landroid/graphics/PointF;
    :goto_2
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeStart:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/PointF;->x:F

    .line 879
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeStart:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/PointF;->y:F

    .line 881
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->fixImageBounds(Landroid/graphics/RectF;)V

    .line 882
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->invalidate()V

    .end local v0    # "isFreeCrop":Z
    .end local v1    # "offsetX":F
    .end local v2    # "offsetY":F
    .end local v3    # "offsets":Landroid/graphics/PointF;
    :cond_3
    :goto_3
    move v4, v5

    .line 890
    goto/16 :goto_0

    .restart local v1    # "offsetX":F
    .restart local v2    # "offsetY":F
    :cond_4
    move v0, v4

    .line 875
    goto :goto_1

    .line 876
    .restart local v0    # "isFreeCrop":Z
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->onFixedResize(FF)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_2

    .line 883
    .end local v0    # "isFreeCrop":Z
    .end local v1    # "offsetX":F
    .end local v2    # "offsetY":F
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_7

    .line 884
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    if-nez v6, :cond_3

    .line 885
    :cond_7
    iput v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->mResizeEdge:I

    .line 886
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    sget-object v6, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;->SKIP:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    invoke-static {v4, v6}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1502(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$EventState;

    .line 887
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    .line 888
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$ResizeDetector;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$2000(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    goto :goto_3
.end method
