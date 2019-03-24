.class Lmiui/widget/DynamicListView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->eI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic SJ:Landroid/view/ViewTreeObserver;

.field final synthetic SP:J

.field final synthetic SQ:I

.field final synthetic SS:I

.field final synthetic Sr:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Landroid/view/ViewTreeObserver;JII)V
    .locals 0

    .line 673
    iput-object p1, p0, Lmiui/widget/DynamicListView$7;->Sr:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$7;->SJ:Landroid/view/ViewTreeObserver;

    iput-wide p3, p0, Lmiui/widget/DynamicListView$7;->SP:J

    iput p5, p0, Lmiui/widget/DynamicListView$7;->SQ:I

    iput p6, p0, Lmiui/widget/DynamicListView$7;->SS:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .line 675
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->SJ:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 676
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Sr:Lmiui/widget/DynamicListView;

    iget-wide v1, p0, Lmiui/widget/DynamicListView$7;->SP:J

    invoke-virtual {v0, v1, v2}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 677
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 678
    iget-object v2, p0, Lmiui/widget/DynamicListView$7;->Sr:Lmiui/widget/DynamicListView;

    iget v3, p0, Lmiui/widget/DynamicListView$7;->SQ:I

    invoke-static {v2, v3}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;I)I

    .line 679
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 680
    iget v3, p0, Lmiui/widget/DynamicListView$7;->SS:I

    sub-int/2addr v3, v2

    .line 681
    int-to-float v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 682
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v1, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 683
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 684
    iget-object v2, p0, Lmiui/widget/DynamicListView$7;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v2}, Lmiui/widget/DynamicListView;->l(Lmiui/widget/DynamicListView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 685
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 687
    :cond_0
    return v1
.end method
