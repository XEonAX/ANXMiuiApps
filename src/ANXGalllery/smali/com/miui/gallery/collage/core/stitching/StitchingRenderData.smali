.class Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;
.super Lcom/miui/gallery/collage/core/RenderData;
.source "StitchingRenderData.java"


# instance fields
.field mRenderData:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;

.field mWidth:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;)V
    .locals 0
    .param p1, "renderData"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/gallery/collage/core/RenderData;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingRenderData;->mRenderData:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$RenderData;

    .line 12
    return-void
.end method
