.class Lcom/miui/gallery/collage/widget/LoadingDialogView$1;
.super Ljava/lang/Object;
.source "LoadingDialogView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/LoadingDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/widget/LoadingDialogView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/widget/LoadingDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/widget/LoadingDialogView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/gallery/collage/widget/LoadingDialogView$1;->this$0:Lcom/miui/gallery/collage/widget/LoadingDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/miui/gallery/collage/widget/LoadingDialogView$1;->this$0:Lcom/miui/gallery/collage/widget/LoadingDialogView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/gallery/collage/widget/LoadingDialogView;->access$002(Lcom/miui/gallery/collage/widget/LoadingDialogView;I)I

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/LoadingDialogView$1;->this$0:Lcom/miui/gallery/collage/widget/LoadingDialogView;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/LoadingDialogView;->invalidate()V

    .line 68
    return-void
.end method
