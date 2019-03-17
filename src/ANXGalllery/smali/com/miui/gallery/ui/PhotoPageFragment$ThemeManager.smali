.class Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeManager"
.end annotation


# instance fields
.field private mHostView:Lcom/miui/gallery/widget/IMultiThemeView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/IMultiThemeView;)V
    .locals 0
    .param p1, "hostView"    # Lcom/miui/gallery/widget/IMultiThemeView;

    .prologue
    .line 3732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3733
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->mHostView:Lcom/miui/gallery/widget/IMultiThemeView;

    .line 3734
    return-void
.end method


# virtual methods
.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 3757
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->mHostView:Lcom/miui/gallery/widget/IMultiThemeView;

    if-eqz v0, :cond_0

    .line 3758
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->mHostView:Lcom/miui/gallery/widget/IMultiThemeView;

    invoke-interface {v0, p1}, Lcom/miui/gallery/widget/IMultiThemeView;->setBackgroundAlpha(F)V

    .line 3760
    :cond_0
    return-void
.end method

.method public setDarkTheme(ZZ)V
    .locals 6
    .param p1, "transit"    # Z
    .param p2, "quickly"    # Z

    .prologue
    .line 3747
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->mHostView:Lcom/miui/gallery/widget/IMultiThemeView;

    if-eqz v0, :cond_0

    .line 3748
    if-eqz p2, :cond_2

    .line 3749
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->mHostView:Lcom/miui/gallery/widget/IMultiThemeView;

    sget-object v1, Lcom/miui/gallery/widget/IMultiThemeView$Theme;->DARK:Lcom/miui/gallery/widget/IMultiThemeView$Theme;

    if-eqz p1, :cond_1

    sget-object v2, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->FADE_OUT:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    :goto_0
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->mHostView:Lcom/miui/gallery/widget/IMultiThemeView;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/widget/IMultiThemeView;->setTheme(Lcom/miui/gallery/widget/IMultiThemeView$Theme;Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;Landroid/view/animation/Interpolator;J)V

    .line 3754
    :cond_0
    :goto_1
    return-void

    .line 3749
    :cond_1
    sget-object v2, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->NONE:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    goto :goto_0

    .line 3751
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->mHostView:Lcom/miui/gallery/widget/IMultiThemeView;

    sget-object v2, Lcom/miui/gallery/widget/IMultiThemeView$Theme;->DARK:Lcom/miui/gallery/widget/IMultiThemeView$Theme;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->FADE_OUT:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    :goto_2
    invoke-interface {v1, v2, v0}, Lcom/miui/gallery/widget/IMultiThemeView;->setTheme(Lcom/miui/gallery/widget/IMultiThemeView$Theme;Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->NONE:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    goto :goto_2
.end method

.method public setLightTheme(ZZ)V
    .locals 6
    .param p1, "transit"    # Z
    .param p2, "quickly"    # Z

    .prologue
    .line 3737
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->mHostView:Lcom/miui/gallery/widget/IMultiThemeView;

    if-eqz v0, :cond_0

    .line 3738
    if-eqz p2, :cond_2

    .line 3739
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->mHostView:Lcom/miui/gallery/widget/IMultiThemeView;

    sget-object v1, Lcom/miui/gallery/widget/IMultiThemeView$Theme;->LIGHT:Lcom/miui/gallery/widget/IMultiThemeView$Theme;

    if-eqz p1, :cond_1

    sget-object v2, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->FADE_IN:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    :goto_0
    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->mHostView:Lcom/miui/gallery/widget/IMultiThemeView;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/widget/IMultiThemeView;->setTheme(Lcom/miui/gallery/widget/IMultiThemeView$Theme;Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;Landroid/view/animation/Interpolator;J)V

    .line 3744
    :cond_0
    :goto_1
    return-void

    .line 3739
    :cond_1
    sget-object v2, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->NONE:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    goto :goto_0

    .line 3741
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$ThemeManager;->mHostView:Lcom/miui/gallery/widget/IMultiThemeView;

    sget-object v2, Lcom/miui/gallery/widget/IMultiThemeView$Theme;->LIGHT:Lcom/miui/gallery/widget/IMultiThemeView$Theme;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->FADE_IN:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    :goto_2
    invoke-interface {v1, v2, v0}, Lcom/miui/gallery/widget/IMultiThemeView;->setTheme(Lcom/miui/gallery/widget/IMultiThemeView$Theme;Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;->NONE:Lcom/miui/gallery/widget/IMultiThemeView$ThemeTransition;

    goto :goto_2
.end method
