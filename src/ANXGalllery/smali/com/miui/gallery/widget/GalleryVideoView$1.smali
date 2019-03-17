.class Lcom/miui/gallery/widget/GalleryVideoView$1;
.super Ljava/lang/Object;
.source "GalleryVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 427
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView$1;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 429
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$1;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/GalleryVideoView;->access$002(Lcom/miui/gallery/widget/GalleryVideoView;I)I

    .line 430
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$1;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/GalleryVideoView;->access$102(Lcom/miui/gallery/widget/GalleryVideoView;I)I

    .line 431
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$1;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->access$000(Lcom/miui/gallery/widget/GalleryVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$1;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->access$100(Lcom/miui/gallery/widget/GalleryVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$1;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->requestLayout()V

    .line 434
    :cond_0
    return-void
.end method
