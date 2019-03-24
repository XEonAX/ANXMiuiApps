.class public Lmiui/widget/FilterSortView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/FilterSortView$TabView;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/FilterSortView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/CharSequence;)Lmiui/widget/FilterSortView$TabView;
    .locals 1

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmiui/widget/FilterSortView;->addTab(Ljava/lang/CharSequence;Z)Lmiui/widget/FilterSortView$TabView;

    move-result-object p1

    return-object p1
.end method

.method public addTab(Ljava/lang/CharSequence;Z)Lmiui/widget/FilterSortView$TabView;
    .locals 3

    .line 56
    new-instance v0, Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {p0}, Lmiui/widget/FilterSortView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0}, Lmiui/widget/FilterSortView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$attr;->filterSortTabViewBackground:I

    invoke-static {v1, v2}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 59
    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lmiui/widget/FilterSortView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$drawable;->filter_sort_tab_view_bg_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    :cond_0
    invoke-virtual {v0, v1}, Lmiui/widget/FilterSortView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 66
    invoke-virtual {p0, v0, v1}, Lmiui/widget/FilterSortView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-static {v0, p1, p2}, Lmiui/widget/FilterSortView$TabView;->a(Lmiui/widget/FilterSortView$TabView;Ljava/lang/CharSequence;Z)V

    .line 69
    return-object v0
.end method

.method public setFilteredTab(Lmiui/widget/FilterSortView$TabView;)V
    .locals 1

    .line 78
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/widget/FilterSortView$TabView;->a(Lmiui/widget/FilterSortView$TabView;Z)V

    .line 79
    return-void
.end method
