.class Lcom/miui/internal/app/ActionBarViewPagerController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;-><init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bS:Lcom/miui/internal/app/ActionBarViewPagerController;

.field bT:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .locals 1

    .line 127
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance p1, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController$1;)V

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bT:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 174
    invoke-interface {v1, p1}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrollStateChanged(I)V

    .line 175
    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 133
    iget-object p3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bT:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    invoke-virtual {p3, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->a(IF)V

    .line 135
    iget-object p3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bT:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    iget-boolean p3, p3, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bY:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p3}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 136
    iget-object p3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p3}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bT:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    iget v0, v0, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->ca:I

    invoke-virtual {p3, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->hasActionMenu(I)Z

    move-result p3

    .line 137
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bT:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    iget v1, v1, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->cb:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->hasActionMenu(I)Z

    move-result v0

    .line 139
    nop

    .line 140
    nop

    .line 141
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->d(I)I

    move-result p1

    .line 143
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bT:Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;

    iget-boolean v1, v1, Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;->bZ:Z

    if-nez v1, :cond_0

    .line 144
    add-int/lit8 p1, p1, -0x1

    .line 145
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p2, v1, p2

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 149
    invoke-interface {v2, p1, p2, p3, v0}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    .line 150
    goto :goto_0

    .line 152
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->d(I)I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->d(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/ActionBarImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 160
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v1}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->b(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    .line 161
    invoke-static {v3}, Lcom/miui/internal/app/ActionBarViewPagerController;->a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v4}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->a(IZZ)Landroid/app/Fragment;

    move-result-object v3

    .line 160
    invoke-virtual {v1, v2, p1, v3}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 163
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 165
    invoke-interface {v1, v0}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageSelected(I)V

    .line 166
    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method
