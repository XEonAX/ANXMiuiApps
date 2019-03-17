.class Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$1;
.super Ljava/lang/Object;
.source "EditorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->mImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 136
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 137
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EditorView$Plugin;->invalidate()V

    .line 138
    return-void
.end method
