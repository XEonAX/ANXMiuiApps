.class Lmiui/widget/DynamicListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sr:Lmiui/widget/DynamicListView;

.field private qL:Z


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 178
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 179
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/DynamicListView$2;->qL:Z

    .line 180
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 158
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    iget-object v0, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object p1

    .line 159
    if-eqz p1, :cond_0

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :cond_0
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;J)J

    .line 163
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {p1, v0, v1}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;J)J

    .line 164
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {p1, v0, v1}, Lmiui/widget/DynamicListView;->c(Lmiui/widget/DynamicListView;J)J

    .line 165
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 166
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 167
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    invoke-virtual {p1}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 168
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {p1, v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 170
    iget-boolean p1, p0, Lmiui/widget/DynamicListView$2;->qL:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {p1}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {p1}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;

    move-result-object p1

    invoke-interface {p1}, Lmiui/widget/DynamicListView$RearrangeListener;->onDragEnd()V

    .line 173
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 152
    iget-object p1, p0, Lmiui/widget/DynamicListView$2;->Sr:Lmiui/widget/DynamicListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 153
    iput-boolean v0, p0, Lmiui/widget/DynamicListView$2;->qL:Z

    .line 154
    return-void
.end method
