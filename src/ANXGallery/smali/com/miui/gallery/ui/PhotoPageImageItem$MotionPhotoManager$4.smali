.class Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$4;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1582
    const-string v0, "PhotoPageImageItem"

    const-string v1, "MotionPhoto start play"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$3600(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Lcom/miui/gallery/widget/GalleryVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-static {v0, v2}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$3902(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;Z)Z

    .line 1585
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$3600(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Lcom/miui/gallery/widget/GalleryVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->start()V

    .line 1586
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$4000(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$4;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/PhotoPageImageItem;->performHapticFeedback(I)Z

    .line 1590
    :cond_0
    return-void
.end method
