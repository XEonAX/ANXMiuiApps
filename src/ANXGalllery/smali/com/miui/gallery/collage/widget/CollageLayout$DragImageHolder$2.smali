.class Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;
.super Ljava/lang/Object;
.source "CollageLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->exchangeBitmapWithAnim(Lcom/miui/gallery/collage/widget/CollageImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

.field final synthetic val$dragTargetView:Lcom/miui/gallery/collage/widget/CollageImageView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    iput-object p2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->val$dragTargetView:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 434
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1400(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1700(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->access$1800(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1700(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->access$1900(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v3}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1700(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->access$2000(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetDrawData(Landroid/graphics/Bitmap;IZ)V

    .line 420
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->val$dragTargetView:Lcom/miui/gallery/collage/widget/CollageImageView;

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1200(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->access$1800(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1200(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->access$1900(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v3}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1200(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->access$2000(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/collage/widget/CollageImageView;->resetDrawData(Landroid/graphics/Bitmap;IZ)V

    .line 422
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$2100(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->this$0:Lcom/miui/gallery/collage/widget/CollageLayout;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout;->access$2100(Lcom/miui/gallery/collage/widget/CollageLayout;)Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1200(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->access$1800(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1700(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->access$1800(Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/collage/widget/CollageLayout$BitmapExchangeListener;->onBitmapExchange(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1700(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->release()V

    .line 427
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1200(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;)Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragBitmapItem;->release()V

    .line 428
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->disableDragMode()V

    .line 429
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 439
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->val$dragTargetView:Lcom/miui/gallery/collage/widget/CollageImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/collage/widget/CollageImageView;->setDrawBitmap(Z)V

    .line 414
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder$2;->this$1:Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;->access$1602(Lcom/miui/gallery/collage/widget/CollageLayout$DragImageHolder;Z)Z

    .line 415
    return-void
.end method
