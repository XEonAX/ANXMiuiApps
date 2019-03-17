.class Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$2;
.super Ljava/lang/Object;
.source "GPUImageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->deleteImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    new-array v0, v3, [I

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    .line 198
    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->access$200(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;)I

    move-result v1

    aput v1, v0, v2

    .line 197
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 200
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;->access$202(Lcom/miui/gallery/editor/photo/core/imports/filter/render/GPUImageRenderer;I)I

    .line 201
    return-void
.end method
