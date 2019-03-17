.class Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;
.super Ljava/lang/Object;
.source "GPUImageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$recycle:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;->val$recycle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->access$200(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)I

    move-result v2

    iget-boolean v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;->val$recycle:Z

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->access$202(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;I)I

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->access$500(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->access$300(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->access$400(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BoundLinesFilter;->setImageSize(II)V

    .line 225
    return-void
.end method
