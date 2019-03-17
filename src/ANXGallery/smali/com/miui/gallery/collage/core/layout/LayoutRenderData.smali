.class Lcom/miui/gallery/collage/core/layout/LayoutRenderData;
.super Lcom/miui/gallery/collage/core/RenderData;
.source "LayoutRenderData.java"


# instance fields
.field mRenderData:Lcom/miui/gallery/collage/render/CollageRender$RenderData;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/render/CollageRender$RenderData;)V
    .locals 0
    .param p1, "renderData"    # Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/gallery/collage/core/RenderData;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/miui/gallery/collage/core/layout/LayoutRenderData;->mRenderData:Lcom/miui/gallery/collage/render/CollageRender$RenderData;

    .line 11
    return-void
.end method
