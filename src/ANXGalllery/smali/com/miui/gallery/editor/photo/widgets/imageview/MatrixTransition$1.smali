.class Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$1;
.super Ljava/lang/Object;
.source "MatrixTransition.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 50
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    array-length v1, v2

    .line 54
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 55
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->access$000(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)[Landroid/graphics/Matrix;

    move-result-object v2

    aget-object v3, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "property_matrix"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->access$100(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;->access$100(Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition;)Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;->onMatrixUpdate()V

    .line 60
    :cond_1
    return-void
.end method
