.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;
.super Ljava/lang/Object;
.source "MosaicRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableEntityTask"
.end annotation


# instance fields
.field private final mMosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

.field private final mScale:F

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p2, "mosaicGLEntity"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->mMosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .line 214
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->mScale:F

    .line 215
    return-void
.end method

.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .param p2, "mosaicGLEntity"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    .param p3, "scale"    # F

    .prologue
    .line 217
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->mMosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .line 219
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->mScale:F

    .line 220
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 224
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$900(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->mMosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->getTextureId()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$000(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$400(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;)Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    move-result-object v5

    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->mScale:F

    invoke-virtual/range {v0 .. v6}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicEffectProcessor;->draw(Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;IILcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;F)V

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender$EnableEntityTask;->mMosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->access$1202(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .line 226
    return-void
.end method
