.class Lmiui/animation/ViewPropertyAnimator$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/ViewPropertyAnimator;-><init>(Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/animation/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Lmiui/animation/ViewPropertyAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/animation/ViewPropertyAnimator;

    .line 109
    iput-object p1, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 147
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->access$000(Lmiui/animation/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/animation/ViewPropertyAnimator;->access$100(Landroid/view/View;Landroid/animation/Animator;)V

    .line 148
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->access$200(Lmiui/animation/ViewPropertyAnimator;)V

    .line 149
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-virtual {v0}, Lmiui/animation/ViewPropertyAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 150
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 153
    .local v2, "listener":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-object v4, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 154
    .end local v2    # "listener":Ljava/lang/Object;
    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 134
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->access$000(Lmiui/animation/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/animation/ViewPropertyAnimator;->access$100(Landroid/view/View;Landroid/animation/Animator;)V

    .line 135
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->access$200(Lmiui/animation/ViewPropertyAnimator;)V

    .line 136
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-virtual {v0}, Lmiui/animation/ViewPropertyAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 140
    .local v2, "listener":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-object v4, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 141
    .end local v2    # "listener":Ljava/lang/Object;
    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 123
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-virtual {v0}, Lmiui/animation/ViewPropertyAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 124
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "listener":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-object v4, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 128
    .end local v2    # "listener":Ljava/lang/Object;
    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 112
    iget-object v0, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-virtual {v0}, Lmiui/animation/ViewPropertyAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 113
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "listener":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-object v4, p0, Lmiui/animation/ViewPropertyAnimator$1;->this$0:Lmiui/animation/ViewPropertyAnimator;

    invoke-interface {v3, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 117
    .end local v2    # "listener":Ljava/lang/Object;
    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method
