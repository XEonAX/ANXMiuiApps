.class Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CleanerItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;->this$0:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;

    iget-object v1, v1, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;->this$0:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->access$100(Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;

    iget-object v1, v1, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;->this$0:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;->this$0:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->dispatchAnimationsFinished()V

    .line 73
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;->this$0:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;

    iget-object v1, v1, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 66
    return-void
.end method
