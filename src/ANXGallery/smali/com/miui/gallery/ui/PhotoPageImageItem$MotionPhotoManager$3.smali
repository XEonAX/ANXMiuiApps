.class Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$3;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 1560
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const-wide/16 v4, 0x96

    .line 1563
    const-string v1, "PhotoPageImageItem"

    const-string v2, "MotionPhoto play prepared"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$3600(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Lcom/miui/gallery/widget/GalleryVideoView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$3700(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$3600(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Lcom/miui/gallery/widget/GalleryVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/GalleryVideoView;->start()V

    .line 1568
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$3600(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Lcom/miui/gallery/widget/GalleryVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/widget/GalleryVideoView;->pause()V

    .line 1569
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Luk/co/senab/photoview/PhotoView;->setVisibility(I)V

    .line 1570
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1571
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 1572
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1573
    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1574
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1, v0}, Luk/co/senab/photoview/PhotoView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1575
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$3600(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Lcom/miui/gallery/widget/GalleryVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$3;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$3800(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Lcom/miui/gallery/widget/GalleryVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
