.class public abstract Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest;
.super Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;
.source "PixelImageFeatureRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;",
        ">",
        "Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mHeight:I

.field protected final mPixs:[B

.field protected final mWidth:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;J[BII)V
    .locals 0
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J
    .param p7, "pixs"    # [B
    .param p8, "width"    # I
    .param p9, "height"    # I

    .prologue
    .line 13
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest;, "Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest<TT;>;"
    invoke-direct/range {p0 .. p6}, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;J)V

    .line 14
    iput-object p7, p0, Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest;->mPixs:[B

    .line 15
    iput p8, p0, Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest;->mWidth:I

    .line 16
    iput p9, p0, Lcom/miui/gallery/assistant/manager/request/PixelImageFeatureRequest;->mHeight:I

    .line 17
    return-void
.end method
