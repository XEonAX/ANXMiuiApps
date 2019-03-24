.class Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic vw:Lcom/miui/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->vw:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView$1;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->vw:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->a(Lcom/miui/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->vw:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->a(Lcom/miui/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 663
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 668
    if-nez p2, :cond_0

    .line 669
    iget-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->vw:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActionBar$Tab;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->a(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    goto :goto_0

    .line 671
    :cond_0
    move-object p3, p2

    check-cast p3, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActionBar$Tab;

    invoke-virtual {p3, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->bindTab(Landroid/app/ActionBar$Tab;)V

    .line 673
    :goto_0
    return-object p2
.end method
