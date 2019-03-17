.class public Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;
.super Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;
.source "FilterViewHolder.java"


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mNameTextView:Landroid/widget/TextView;

.field private mSelector:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    const v0, 0x7f1200d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 21
    const v0, 0x7f120094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->mNameTextView:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f120171

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->mSelector:Landroid/view/View;

    .line 23
    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public setName(I)V
    .locals 1
    .param p1, "nameResId"    # I

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 42
    :cond_0
    return-void
.end method

.method public setSelect(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->mSelector:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->mSelector:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    if-eqz p1, :cond_2

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    :cond_0
    :goto_1
    return-void

    .line 29
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->mNameTextView:Landroid/widget/TextView;

    const v1, 0x7f1000f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method
