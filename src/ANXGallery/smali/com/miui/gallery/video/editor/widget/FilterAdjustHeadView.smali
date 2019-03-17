.class public Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;
.super Landroid/widget/LinearLayout;
.source "FilterAdjustHeadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;
    }
.end annotation


# instance fields
.field private mHeadViewClickListener:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;

.field private mTvAdjust:Landroid/widget/TextView;

.field private mTvTitleFilter:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 31
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04016e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    const v1, 0x7f1202d3

    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mTvTitleFilter:Landroid/widget/TextView;

    .line 33
    const v1, 0x7f1202d4

    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mTvAdjust:Landroid/widget/TextView;

    .line 34
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mTvTitleFilter:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mTvAdjust:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->selectFilter(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mTvTitleFilter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->selectFilter(Z)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mHeadViewClickListener:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mHeadViewClickListener:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;->onFilterClick()V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mTvAdjust:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->selectFilter(Z)V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mHeadViewClickListener:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mHeadViewClickListener:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;

    invoke-interface {v0}, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;->onAdjustClick()V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x7f1202d3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public selectFilter(Z)V
    .locals 2
    .param p1, "select"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mTvTitleFilter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 69
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mTvAdjust:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeadViewClickListener(Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;)V
    .locals 0
    .param p1, "headViewClickListener"    # Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView;->mHeadViewClickListener:Lcom/miui/gallery/video/editor/widget/FilterAdjustHeadView$FilterHeadViewClickListener;

    .line 65
    return-void
.end method
