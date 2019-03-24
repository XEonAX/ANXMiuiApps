.class public Lmiui/util/ActionBarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    .line 25
    nop

    .line 26
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 27
    instance-of v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 28
    move-object v0, p0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 29
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 35
    :cond_1
    nop

    .line 26
    move-object p0, v0

    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static setOnScrollListener(Landroid/app/Activity;Lmiui/app/ActionBar$OnScrollListener;)V
    .locals 1

    .line 42
    sget v0, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/widget/ActionBarMovableLayout;

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->setOnScrollListener(Lmiui/app/ActionBar$OnScrollListener;)V

    .line 45
    return-void
.end method
