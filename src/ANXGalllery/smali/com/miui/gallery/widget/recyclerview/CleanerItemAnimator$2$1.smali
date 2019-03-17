.class Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CleanerItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;

.field final synthetic val$item:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;

    iput-object p2, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2$1;->val$item:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;->this$0:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->access$200(Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;

    iget-object v1, v1, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2$1;->val$item:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;->this$0:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;

    iget-object v1, v1, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;->this$0:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;->this$0:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->dispatchAnimationsFinished()V

    .line 101
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;

    iget-object v0, v0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;->this$0:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;

    iget-object v1, p0, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2$1;->this$1:Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;

    iget-object v1, v1, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/recyclerview/CleanerItemAnimator;->dispatchRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 93
    return-void
.end method
