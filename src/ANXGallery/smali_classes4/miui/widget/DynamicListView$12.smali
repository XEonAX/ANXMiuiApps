.class Lmiui/widget/DynamicListView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->a(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sr:Lmiui/widget/DynamicListView;

.field final synthetic St:Ljava/util/List;

.field final synthetic Su:Landroid/widget/BaseAdapter;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V
    .locals 0

    .line 975
    iput-object p1, p0, Lmiui/widget/DynamicListView$12;->Sr:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$12;->Su:Landroid/widget/BaseAdapter;

    iput-object p3, p0, Lmiui/widget/DynamicListView$12;->St:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .line 977
    iget-object v0, p0, Lmiui/widget/DynamicListView$12;->Sr:Lmiui/widget/DynamicListView;

    invoke-virtual {v0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 978
    iget-object v0, p0, Lmiui/widget/DynamicListView$12;->Sr:Lmiui/widget/DynamicListView;

    invoke-virtual {v0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v0

    .line 979
    iget-object v1, p0, Lmiui/widget/DynamicListView$12;->Sr:Lmiui/widget/DynamicListView;

    invoke-virtual {v1}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v1

    .line 980
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 981
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_2

    .line 982
    iget-object v6, p0, Lmiui/widget/DynamicListView$12;->Sr:Lmiui/widget/DynamicListView;

    invoke-virtual {v6, v4}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 983
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    const/4 v8, 0x0

    aput v8, v5, v3

    .line 984
    invoke-static {v6, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 985
    new-instance v7, Lmiui/widget/DynamicListView$12$1;

    invoke-direct {v7, p0, v6}, Lmiui/widget/DynamicListView$12$1;-><init>(Lmiui/widget/DynamicListView$12;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1007
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    add-int v5, v0, v4

    .line 1009
    iget-object v7, p0, Lmiui/widget/DynamicListView$12;->Su:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v7

    .line 1010
    iget-object v5, p0, Lmiui/widget/DynamicListView$12;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v5}, Lmiui/widget/DynamicListView;->n(Lmiui/widget/DynamicListView;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1011
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1012
    if-eqz v5, :cond_0

    .line 1013
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v7, :cond_1

    .line 1014
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v7

    .line 1015
    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1016
    goto :goto_1

    .line 1023
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v8, p0, Lmiui/widget/DynamicListView$12;->Sr:Lmiui/widget/DynamicListView;

    .line 1024
    invoke-virtual {v8}, Lmiui/widget/DynamicListView;->getDividerHeight()I

    move-result v8

    add-int/2addr v5, v8

    .line 1025
    iget-object v8, p0, Lmiui/widget/DynamicListView$12;->St:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v5, v8

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1026
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v7

    .line 1027
    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 981
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1030
    :cond_2
    iget-object v0, p0, Lmiui/widget/DynamicListView$12;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->n(Lmiui/widget/DynamicListView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1031
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1032
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1033
    new-instance v1, Lmiui/widget/DynamicListView$12$2;

    invoke-direct {v1, p0}, Lmiui/widget/DynamicListView$12$2;-><init>(Lmiui/widget/DynamicListView$12;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1040
    iget-object v1, p0, Lmiui/widget/DynamicListView$12;->Sr:Lmiui/widget/DynamicListView;

    invoke-static {v1}, Lmiui/widget/DynamicListView;->l(Lmiui/widget/DynamicListView;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1041
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1042
    return v5
.end method
