.class Lcom/miui/gallery/widget/GalleryVideoView$2;
.super Ljava/lang/Object;
.source "GalleryVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 437
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView$2;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 439
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView$2;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miui/gallery/widget/GalleryVideoView;->access$202(Lcom/miui/gallery/widget/GalleryVideoView;I)I

    .line 440
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView$2;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryVideoView;->access$300(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView$2;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryVideoView;->access$300(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/widget/GalleryVideoView$2;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v2}, Lcom/miui/gallery/widget/GalleryVideoView;->access$400(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView$2;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/widget/GalleryVideoView;->access$002(Lcom/miui/gallery/widget/GalleryVideoView;I)I

    .line 444
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView$2;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/widget/GalleryVideoView;->access$102(Lcom/miui/gallery/widget/GalleryVideoView;I)I

    .line 446
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView$2;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryVideoView;->access$500(Lcom/miui/gallery/widget/GalleryVideoView;)I

    move-result v0

    .line 447
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_1

    .line 448
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView$2;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/widget/GalleryVideoView;->seekTo(I)V

    .line 450
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView$2;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryVideoView;->access$600(Lcom/miui/gallery/widget/GalleryVideoView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 451
    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView$2;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v1}, Lcom/miui/gallery/widget/GalleryVideoView;->start()V

    .line 453
    :cond_2
    return-void
.end method
