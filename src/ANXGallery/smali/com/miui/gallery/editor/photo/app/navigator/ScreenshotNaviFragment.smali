.class public Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;
.super Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;
.source "ScreenshotNaviFragment.java"


# instance fields
.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;->getNaviData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;Lcom/miui/gallery/editor/photo/core/Effect;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/Effect;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;->notifyNavigate(Lcom/miui/gallery/editor/photo/core/Effect;)V

    return-void
.end method


# virtual methods
.method protected onCreateNavigator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    const v0, 0x7f04011f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onNavigatorCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 24
    move-object v4, p1

    check-cast v4, Landroid/widget/LinearLayout;

    .line 25
    .local v4, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;->getNaviData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;->getNaviData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;

    .line 27
    .local v0, "data":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0400cf

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 28
    .local v2, "item":Landroid/view/View;
    const v6, 0x7f1201bc

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 29
    .local v3, "label":Landroid/widget/TextView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v9, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 30
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->icon:I

    invoke-virtual {v3, v9, v6, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 31
    iget v6, v0, Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;->name:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 32
    const v6, 0x7f12001a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 33
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/app/navigator/ScreenshotNaviFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "data":Lcom/miui/gallery/editor/photo/app/AbstractNaviFragment$NavigatorData;
    .end local v2    # "item":Landroid/view/View;
    .end local v3    # "label":Landroid/widget/TextView;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method
