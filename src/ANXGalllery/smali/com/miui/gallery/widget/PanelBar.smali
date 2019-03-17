.class public Lcom/miui/gallery/widget/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/widget/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/widget/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method private loadAnimator(Z)Landroid/animation/Animator;
    .locals 4
    .param p1, "enter"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 111
    if-eqz p1, :cond_0

    .line 112
    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 116
    .local v0, "animator":Landroid/animation/Animator;
    :goto_0
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 117
    return-object v0

    .line 114
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 112
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 114
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private refreshVisibility()V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PanelBar;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/PanelBar;->setVisibility(I)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/PanelBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/widget/PanelBar;->refreshVisibility()V

    .line 33
    return-void
.end method

.method public removeItem(Z)V
    .locals 3
    .param p1, "anim"    # Z

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PanelBar;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/miui/gallery/widget/PanelBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "oldItem":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 89
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/miui/gallery/widget/PanelBar;->loadAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    .line 90
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/PanelBar;->startViewTransition(Landroid/view/View;)V

    .line 91
    new-instance v2, Lcom/miui/gallery/widget/PanelBar$2;

    invoke-direct {v2, p0, v1}, Lcom/miui/gallery/widget/PanelBar$2;-><init>(Lcom/miui/gallery/widget/PanelBar;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 99
    if-nez p1, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 101
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/PanelBar;->endViewTransition(Landroid/view/View;)V

    .line 103
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/PanelBar;->removeView(Landroid/view/View;)V

    .line 105
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PanelBar;->removeAllViews()V

    .line 106
    invoke-direct {p0}, Lcom/miui/gallery/widget/PanelBar;->refreshVisibility()V

    .line 107
    return-void
.end method

.method public replaceItem(Lcom/miui/gallery/widget/PanelItem;Z)V
    .locals 5
    .param p1, "panelItem"    # Lcom/miui/gallery/widget/PanelItem;
    .param p2, "anim"    # Z

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PanelBar;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/miui/gallery/widget/PanelBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, "oldItem":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 46
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/miui/gallery/widget/PanelBar;->loadAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    .line 47
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/PanelBar;->startViewTransition(Landroid/view/View;)V

    .line 48
    new-instance v3, Lcom/miui/gallery/widget/PanelBar$1;

    invoke-direct {v3, p0, v1}, Lcom/miui/gallery/widget/PanelBar$1;-><init>(Lcom/miui/gallery/widget/PanelBar;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 56
    if-nez p2, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 58
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/PanelBar;->endViewTransition(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/gallery/widget/PanelBar;->removeView(Landroid/view/View;)V

    .line 62
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/widget/PanelBar;->removeAllViews()V

    .line 63
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 64
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/miui/gallery/widget/PanelBar;->loadAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    .line 65
    .restart local v0    # "animator":Landroid/animation/Animator;
    invoke-interface {p1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 67
    if-nez p2, :cond_2

    .line 68
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 70
    :cond_2
    invoke-interface {p1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 71
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v2, :cond_3

    .line 72
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    move-object v3, v2

    .line 73
    check-cast v3, Landroid/view/ViewGroup;

    invoke-interface {p1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    invoke-interface {p1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 75
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "parent":Landroid/view/ViewParent;
    invoke-interface {p1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 81
    :cond_3
    invoke-interface {p1}, Lcom/miui/gallery/widget/PanelItem;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/gallery/widget/PanelBar;->addView(Landroid/view/View;)V

    .line 83
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/widget/PanelBar;->refreshVisibility()V

    .line 84
    :cond_5
    return-void
.end method
