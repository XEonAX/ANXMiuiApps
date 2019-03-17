.class Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;
.super Ljava/lang/Object;
.source "SVGOverlayAsset.java"

# interfaces
.implements Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;->onAwake(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/graphics/RectF;Ljava/lang/String;Ljava/util/Map;)Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;

.field final synthetic val$awakeSerial:I

.field final synthetic val$bm:Landroid/graphics/Bitmap;

.field final synthetic val$bounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;ILandroid/graphics/RectF;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;->this$0:Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset;

    iput p2, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;->val$awakeSerial:I

    iput-object p3, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needRendererReawakeOnEditResize()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onAsleep(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 3

    .prologue
    .line 112
    const-string v0, "SVGOverlayAsset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAsleep [#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;->val$awakeSerial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public onRefresh(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/graphics/RectF;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public onRender(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Lcom/nexstreaming/app/common/nexasset/overlay/OverlayMotion;II)V
    .locals 6

    .prologue
    .line 117
    const-string v0, "SVGOverlayAsset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRender [#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;->val$awakeSerial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;->val$bm:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/SVGOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    .line 120
    return-void
.end method
