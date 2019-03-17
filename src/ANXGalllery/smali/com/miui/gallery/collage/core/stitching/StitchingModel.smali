.class public Lcom/miui/gallery/collage/core/stitching/StitchingModel;
.super Ljava/lang/Object;
.source "StitchingModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/core/stitching/StitchingModel$BitmapCollection;
    }
.end annotation


# instance fields
.field public horizontalOffset:F

.field public isSquare:Z

.field public mask:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public radius:I

.field public relativePath:Ljava/lang/String;

.field public verticalOffset:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static countHeight(ILcom/miui/gallery/collage/core/stitching/StitchingModel;Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;Lcom/miui/gallery/collage/core/stitching/StitchingModel$BitmapCollection;)V
    .locals 11
    .param p0, "width"    # I
    .param p1, "stitchingModel"    # Lcom/miui/gallery/collage/core/stitching/StitchingModel;
    .param p2, "bitmapPositionHolder"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;
    .param p3, "bitmaps"    # Lcom/miui/gallery/collage/core/stitching/StitchingModel$BitmapCollection;

    .prologue
    .line 46
    const/4 v3, 0x0

    .line 48
    .local v3, "height":I
    iget v9, p1, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->horizontalOffset:F

    int-to-float v10, p0

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 49
    .local v4, "horizontalOffset":I
    iget v9, p1, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->verticalOffset:F

    int-to-float v10, p0

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 50
    .local v8, "verticalOffset":I
    iget-boolean v6, p1, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->isSquare:Z

    .line 52
    .local v6, "isSquare":Z
    mul-int/lit8 v9, v4, 0x2

    sub-int v2, p0, v9

    .line 53
    .local v2, "bitmapWidth":I
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/miui/gallery/collage/core/stitching/StitchingModel$BitmapCollection;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 54
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p3}, Lcom/miui/gallery/collage/core/stitching/StitchingModel$BitmapCollection;->size()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 55
    invoke-interface {p3, v5}, Lcom/miui/gallery/collage/core/stitching/StitchingModel$BitmapCollection;->get(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v7, v9, v10

    .line 57
    .local v7, "ratio":F
    if-eqz v6, :cond_0

    move v1, v2

    .line 58
    .local v1, "bitmapHeight":I
    :goto_1
    add-int/2addr v3, v1

    .line 59
    iget-object v9, p2, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->bitmapHeights:[I

    aput v1, v9, v5

    .line 54
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "bitmapHeight":I
    :cond_0
    int-to-float v9, v2

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    .line 61
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "ratio":F
    :cond_1
    if-lez v4, :cond_3

    .line 62
    invoke-interface {p3}, Lcom/miui/gallery/collage/core/stitching/StitchingModel$BitmapCollection;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v8

    add-int/2addr v3, v9

    .line 68
    .end local v5    # "i":I
    :cond_2
    :goto_2
    iput v2, p2, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->bitmapWidth:I

    .line 69
    iput v8, p2, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->verticalOffset:I

    .line 70
    iput v4, p2, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->horizontalOffset:I

    .line 71
    iput v3, p2, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;->height:I

    .line 72
    return-void

    .line 64
    .restart local v5    # "i":I
    :cond_3
    invoke-interface {p3}, Lcom/miui/gallery/collage/core/stitching/StitchingModel$BitmapCollection;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v9, v8

    add-int/2addr v3, v9

    goto :goto_2
.end method


# virtual methods
.method public countHeight(ILcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;[Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "bitmapPositionHolder"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;
    .param p3, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 32
    new-instance v0, Lcom/miui/gallery/collage/core/stitching/StitchingModel$2;

    invoke-direct {v0, p0, p3}, Lcom/miui/gallery/collage/core/stitching/StitchingModel$2;-><init>(Lcom/miui/gallery/collage/core/stitching/StitchingModel;[Landroid/graphics/Bitmap;)V

    invoke-static {p1, p0, p2, v0}, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->countHeight(ILcom/miui/gallery/collage/core/stitching/StitchingModel;Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;Lcom/miui/gallery/collage/core/stitching/StitchingModel$BitmapCollection;)V

    .line 43
    return-void
.end method

.method public countHeight(ILcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "bitmapPositionHolder"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;
    .param p3, "bitmaps"    # [Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;

    .prologue
    .line 18
    new-instance v0, Lcom/miui/gallery/collage/core/stitching/StitchingModel$1;

    invoke-direct {v0, p0, p3}, Lcom/miui/gallery/collage/core/stitching/StitchingModel$1;-><init>(Lcom/miui/gallery/collage/core/stitching/StitchingModel;[Lcom/miui/gallery/collage/render/CollageRender$BitmapRenderData;)V

    invoke-static {p1, p0, p2, v0}, Lcom/miui/gallery/collage/core/stitching/StitchingModel;->countHeight(ILcom/miui/gallery/collage/core/stitching/StitchingModel;Lcom/miui/gallery/collage/widget/CollageStitchingLayout$BitmapPositionHolder;Lcom/miui/gallery/collage/core/stitching/StitchingModel$BitmapCollection;)V

    .line 29
    return-void
.end method
