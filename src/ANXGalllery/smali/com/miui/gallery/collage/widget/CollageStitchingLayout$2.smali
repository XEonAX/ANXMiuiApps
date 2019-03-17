.class Lcom/miui/gallery/collage/widget/CollageStitchingLayout$2;
.super Ljava/lang/Object;
.source "CollageStitchingLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$2;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 452
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$2;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$800(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$2;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    iget-object v2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$2;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$800(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$1100(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;F)I

    move-result v0

    .line 454
    .local v0, "difference":I
    if-eqz v0, :cond_0

    .line 455
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$2;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-static {v1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->access$500(Lcom/miui/gallery/collage/widget/CollageStitchingLayout;)Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->notifySwipe(F)V

    .line 458
    .end local v0    # "difference":I
    :cond_0
    return-void
.end method
