.class final Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V
    .locals 0

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageImageItem$1;

    .prologue
    .line 1664
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$4300(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    .line 1668
    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->isGestureOperating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$4400(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V

    .line 1670
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;->this$1:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->access$4502(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;Z)Z

    .line 1672
    :cond_0
    return-void
.end method
