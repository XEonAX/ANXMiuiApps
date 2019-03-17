.class public Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;
.super Landroid/widget/RelativeLayout;
.source "ImageResultHeaderItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/CheckableView;


# instance fields
.field private mExpandIcon:Landroid/widget/ImageView;

.field private mExpandable:Z

.field protected mSelectGroupOrNot:Landroid/view/View;

.field protected mSelectGroupOrNotContainer:Landroid/view/View;

.field protected mSubTitle:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->setLayoutDirection(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/String;Ljava/lang/String;ZILandroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subTitle"    # Ljava/lang/String;
    .param p3, "expandable"    # Z
    .param p4, "expandIconResource"    # I
    .param p5, "expandToggleListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :goto_0
    iput-boolean p3, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mExpandable:Z

    .line 50
    iget-boolean v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mExpandable:Z

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mExpandIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mExpandIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mExpandIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :goto_1
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mSubTitle:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mExpandIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mExpandIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 31
    const v0, 0x7f12027b

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mTitle:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f12027c

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mSubTitle:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f120101

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lmiui/R$string;->select_all:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 35
    const v0, 0x7f12025c

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mSelectGroupOrNotContainer:Landroid/view/View;

    .line 36
    const v0, 0x7f120279

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mExpandIcon:Landroid/widget/ImageView;

    .line 37
    return-void
.end method

.method public setCheckable(Z)V
    .locals 4
    .param p1, "checkable"    # Z

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mSelectGroupOrNotContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mExpandIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mSelectGroupOrNotContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v2, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mExpandIcon:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mExpandable:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setCheckableListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mSelectGroupOrNotContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/search/resultpage/ImageResultHeaderItem;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v1, Lmiui/R$string;->deselect_all:I

    .line 74
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void

    .line 73
    :cond_0
    sget v1, Lmiui/R$string;->select_all:I

    goto :goto_0
.end method

.method public toggle()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
