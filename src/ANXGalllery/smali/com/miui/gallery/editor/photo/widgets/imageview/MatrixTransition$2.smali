.class Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$2;
.super Ljava/lang/Object;
.source "MatrixTransition.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$2;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$2;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->access$002(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;[Landroid/graphics/Matrix;)[Landroid/graphics/Matrix;

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$2;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->access$100(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$2;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->access$100(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;->onAnimationEnd()V

    .line 85
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$2;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->access$002(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;[Landroid/graphics/Matrix;)[Landroid/graphics/Matrix;

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$2;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->access$100(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$2;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->access$100(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;->onAnimationEnd()V

    .line 77
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 90
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$2;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->access$100(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$2;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->access$100(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;->onAnimationStart()V

    .line 69
    :cond_0
    return-void
.end method
