.class Lmiui/widget/DynamicListView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->eH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sr:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lmiui/widget/DynamicListView$6;->Sr:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 413
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 414
    iget-object p1, p0, Lmiui/widget/DynamicListView$6;->Sr:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 415
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 419
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 420
    iget-object p1, p0, Lmiui/widget/DynamicListView$6;->Sr:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 421
    return-void
.end method
