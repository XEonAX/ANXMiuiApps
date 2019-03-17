.class Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$1;
.super Ljava/lang/Object;
.source "CollageLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->resetBitmapWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$1;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$1;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 388
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$1;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1400(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageImageView;->setDrawBitmap(Z)V

    .line 381
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$1;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1200(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->release()V

    .line 382
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$1;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->disableDragMode()V

    .line 383
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 393
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$1;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1200(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->access$1300(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$1;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1200(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->access$1300(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 376
    :cond_0
    return-void
.end method
