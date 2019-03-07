.class Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;
.super Ljava/lang/Object;
.source "RecorderThumbnailWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->startGotoThumbnailAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 461
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 462
    .local v0, "marginPos":[I
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v6}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 463
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v6}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1600(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v3, v6

    .line 464
    .local v3, "screenW":F
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v6}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1700(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v3, v6

    iget-object v7, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v7}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1800(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .line 465
    invoke-static {v7}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1900(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float v5, v6, v7

    .line 466
    .local v5, "thumbnailMarginLeft":F
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v6}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    aget v7, v0, v7

    int-to-float v7, v7

    sub-float v7, v5, v7

    iget-object v8, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v8}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1900(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v9, v6, v7, v8}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$2000(FFFF)F

    move-result v1

    .line 468
    .local v1, "pivotX":F
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v6}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v7}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$2100(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)I

    move-result v7

    iget-object v8, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v8}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1900(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    .line 469
    invoke-static {v8}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1900(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    .line 468
    invoke-static {v9, v6, v7, v8}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$2000(FFFF)F

    move-result v2

    .line 471
    .local v2, "pivotY":F
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v6}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 472
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v6}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 474
    const v6, 0x3e3d70a4    # 0.185f

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v7}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 475
    .local v4, "shotScale":F
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$702(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;Z)Z

    .line 476
    iget-object v6, p0, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;->this$0:Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;

    invoke-static {v6}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;->access$1400(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x12c

    .line 477
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 478
    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 479
    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;

    invoke-direct {v7, p0}, Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12$1;-><init>(Lcom/miui/screenrecorder/view/RecorderThumbnailWindow$12;)V

    .line 480
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 494
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 495
    return-void
.end method
