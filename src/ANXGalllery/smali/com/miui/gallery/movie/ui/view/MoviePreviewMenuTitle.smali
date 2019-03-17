.class public Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;
.super Landroid/widget/LinearLayout;
.source "MoviePreviewMenuTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;

.field private mLongVideoTitleView:Landroid/widget/TextView;

.field private mShortVideoTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->init(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const v0, 0x7f0400bd

    invoke-static {p1, v0, p0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 47
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mShortVideoTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;

    invoke-interface {v1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;->onShortVideoTitleViewClick()V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->updateTitleViewState(Z)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mLongVideoTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;

    invoke-interface {v1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;->onLongVideoTitleViewClick()V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->updateTitleViewState(Z)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x7f1201db
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 31
    const v0, 0x7f1201db

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mShortVideoTitleView:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f1201dc

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mLongVideoTitleView:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mShortVideoTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mLongVideoTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;

    .line 69
    return-void
.end method

.method public setListener(Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mListener:Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle$IMenuTitleClickListener;

    .line 65
    return-void
.end method

.method public updateTitleViewState(Z)V
    .locals 2
    .param p1, "isShortViewSelected"    # Z

    .prologue
    .line 72
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mLongVideoTitleView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/MoviePreviewMenuTitle;->mShortVideoTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 74
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
