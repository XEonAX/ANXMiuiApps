.class Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;
.super Ljava/lang/Object;
.source "BitmapOverlayAsset.java"

# interfaces
.implements Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset;->onAwake(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/graphics/RectF;Ljava/lang/String;Ljava/util/Map;)Lcom/nexstreaming/app/common/nexasset/overlay/AwakeAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset;

.field final synthetic val$bm:Landroid/graphics/Bitmap;

.field final synthetic val$bounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->this$0:Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset;

    iput-object p2, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needRendererReawakeOnEditResize()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onAsleep(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onRefresh(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Landroid/graphics/RectF;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public onRender(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Lcom/nexstreaming/app/common/nexasset/overlay/OverlayMotion;II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FF)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->val$bm:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/overlay/impl/BitmapOverlayAsset$1;->val$bounds:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->a(Landroid/graphics/Bitmap;FFFF)V

    goto :goto_0
.end method
