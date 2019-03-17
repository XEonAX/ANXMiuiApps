.class Lcom/miui/gallery/widget/GalleryVideoView$7;
.super Ljava/lang/Object;
.source "GalleryVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/GalleryVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/GalleryVideoView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/GalleryVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/GalleryVideoView;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView$7;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 552
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$7;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v0, p1}, Lcom/miui/gallery/widget/GalleryVideoView;->access$1302(Lcom/miui/gallery/widget/GalleryVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 553
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$7;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->access$1400(Lcom/miui/gallery/widget/GalleryVideoView;)V

    .line 554
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x1

    .line 562
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$7;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/GalleryVideoView;->access$1302(Lcom/miui/gallery/widget/GalleryVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 563
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$7;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v0, v2}, Lcom/miui/gallery/widget/GalleryVideoView;->access$1500(Lcom/miui/gallery/widget/GalleryVideoView;Z)V

    .line 564
    const-string v0, "GalleryVideoView"

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 558
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 570
    return-void
.end method
