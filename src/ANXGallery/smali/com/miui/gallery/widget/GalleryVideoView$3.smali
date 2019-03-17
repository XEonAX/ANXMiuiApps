.class Lcom/miui/gallery/widget/GalleryVideoView$3;
.super Ljava/lang/Object;
.source "GalleryVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 457
    iput-object p1, p0, Lcom/miui/gallery/widget/GalleryVideoView$3;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 459
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$3;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/GalleryVideoView;->access$202(Lcom/miui/gallery/widget/GalleryVideoView;I)I

    .line 460
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$3;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v0, v1}, Lcom/miui/gallery/widget/GalleryVideoView;->access$602(Lcom/miui/gallery/widget/GalleryVideoView;I)I

    .line 461
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$3;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->access$700(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$3;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->access$700(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/GalleryVideoView$3;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v1}, Lcom/miui/gallery/widget/GalleryVideoView;->access$400(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$3;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->access$800(Lcom/miui/gallery/widget/GalleryVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/miui/gallery/widget/GalleryVideoView$3;->this$0:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-static {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->access$900(Lcom/miui/gallery/widget/GalleryVideoView;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 467
    :cond_1
    return-void
.end method
