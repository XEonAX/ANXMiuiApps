.class Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$11;
.super Ljava/lang/Object;
.source "Crop.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->animGuideLine(Z)V
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
    .line 1894
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$11;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$11;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$3002(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Z)Z

    .line 1908
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$11;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$3002(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;Z)Z

    .line 1903
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1913
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1898
    return-void
.end method
