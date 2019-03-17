.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;
.super Ljava/lang/Object;
.source "MosaicRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableCaptureTask"
.end annotation


# instance fields
.field private final mCapture:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;)V
    .locals 0
    .param p2, "capture"    # Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->mCapture:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    .line 257
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 261
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->bind()V

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->mCapture:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$400(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->mCapture:Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->drawFBO(I)V

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->unBind()V

    .line 269
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$900(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->getTextureId()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$000(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$400(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->draw(Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;IILcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;)V

    .line 270
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$400(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableCaptureTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$000(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I)V

    goto :goto_0
.end method
