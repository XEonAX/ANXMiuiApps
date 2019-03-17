.class Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$7;
.super Ljava/lang/Object;
.source "Crop.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 767
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$7;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$7;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$900(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$7;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1200(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 771
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$7;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->invalidate()V

    .line 772
    return-void
.end method
