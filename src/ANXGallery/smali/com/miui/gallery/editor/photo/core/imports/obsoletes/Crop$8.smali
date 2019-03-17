.class Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$8;
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
    .line 822
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$8;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 835
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$8;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1400(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)V

    .line 831
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 839
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$8;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->getEventHandler()Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$8;->this$0:Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->access$1300(Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/EventHandler;->removeMessages(I)V

    .line 826
    return-void
.end method
