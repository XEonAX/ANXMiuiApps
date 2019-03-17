.class Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$6;
.super Ljava/lang/Object;
.source "Crop.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$6;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 759
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$6;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$6;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 752
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$6;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$6;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1100(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)I

    move-result v1

    add-int/lit8 v1, v1, -0x5a

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1102(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;I)I

    .line 753
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$6;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$6;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 754
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$6;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 755
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 763
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 747
    return-void
.end method
