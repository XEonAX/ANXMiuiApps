.class public Lcom/miui/gallery/widget/PanelItemLayout;
.super Ljava/lang/Object;
.source "PanelItemLayout.java"


# instance fields
.field private mArrow:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDetailContainer:Landroid/view/ViewGroup;

.field private final mMsgDrawableGonePadding:I

.field private final mMsgDrawableVisiblePadding:I

.field private mPanelItem:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleDrawable:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mContext:Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mMsgDrawableVisiblePadding:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0250

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mMsgDrawableGonePadding:I

    .line 31
    return-void
.end method

.method private ensureView()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    const v1, 0x7f12020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mTitleDrawable:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    const v1, 0x7f1200be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mTitle:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    const v1, 0x7f12020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mArrow:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    const v1, 0x7f12020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mDetailContainer:Landroid/view/ViewGroup;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public addDetail(I)Landroid/view/View;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/miui/gallery/widget/PanelItemLayout;->ensureView()V

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mDetailContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/widget/PanelItemLayout;->addDetail(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addDetail(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/miui/gallery/widget/PanelItemLayout;->ensureView()V

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mDetailContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mDetailContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 86
    :cond_0
    return-object p1
.end method

.method public clearDetails()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mDetailContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mDetailContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 93
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/gallery/widget/PanelItemLayout;->ensureView()V

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/miui/gallery/widget/PanelItemLayout;->ensureView()V

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/miui/gallery/widget/PanelItemLayout;->ensureView()V

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setTitleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v5, 0x8

    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/widget/PanelItemLayout;->ensureView()V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mTitleDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mTitleDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    iget v1, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mMsgDrawableVisiblePadding:I

    iget-object v2, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mTitleDrawable:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mTitleDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    iget v1, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mMsgDrawableGonePadding:I

    iget-object v2, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mPanelItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 58
    iget-object v0, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mTitleDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showArrow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/widget/PanelItemLayout;->ensureView()V

    .line 70
    iget-object v1, p0, Lcom/miui/gallery/widget/PanelItemLayout;->mArrow:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
