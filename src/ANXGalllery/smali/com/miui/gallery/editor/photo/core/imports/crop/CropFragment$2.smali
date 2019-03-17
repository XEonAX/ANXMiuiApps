.class Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CropFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->showAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    iput-boolean p2, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$2;->val$isShow:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 219
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$2;->val$isShow:Z

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->access$100(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 210
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$2;->val$isShow:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->access$100(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$2;->this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->access$100(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_0
    return-void
.end method
