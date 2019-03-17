.class public Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
.super Ljava/lang/Object;
.source "CollagePositionModel.java"


# instance fields
.field public ignoreEdgeMargin:Z

.field public margin:F

.field public masks:[Ljava/lang/String;

.field public position:[F

.field public radius:[F

.field public relativePath:Ljava/lang/String;

.field public size:I


# direct methods
.method public static getCollagePositionModelByImageSize([Lcom/miui/gallery/collage/core/poster/CollagePositionModel;I)Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
    .locals 5
    .param p0, "collagePositionModels"    # [Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
    .param p1, "imageSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 14
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p0, v1

    .line 15
    .local v0, "collagePositionModel":Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
    iget v4, v0, Lcom/miui/gallery/collage/core/poster/CollagePositionModel;->size:I

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/miui/gallery/collage/core/poster/CollagePositionModel;->size:I

    if-ne v4, p1, :cond_1

    .line 19
    .end local v0    # "collagePositionModel":Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
    :cond_0
    :goto_1
    return-object v0

    .line 14
    .restart local v0    # "collagePositionModel":Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    .end local v0    # "collagePositionModel":Lcom/miui/gallery/collage/core/poster/CollagePositionModel;
    :cond_2
    aget-object v0, p0, v2

    goto :goto_1
.end method
