.class public Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;
.super Landroid/widget/RelativeLayout;
.source "RecentTimelineGridHeaderItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/CheckableView;


# instance fields
.field protected mAlbumFrom:Landroid/widget/TextView;

.field protected mDateTime:Landroid/widget/TextView;

.field protected mFileCount:Landroid/widget/TextView;

.field protected mSelectGroupOrNot:Landroid/view/View;

.field protected mSelectGroupOrNotContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->setLayoutDirection(I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected bindAlbumFrom(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "albumName"    # Ljava/lang/String;
    .param p2, "isInPickMode"    # Z

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mAlbumFrom:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mAlbumFrom:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mAlbumFrom:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0038

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    if-eqz p2, :cond_0

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mAlbumFrom:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mAlbumFrom:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public bindData(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "timeLabel"    # Ljava/lang/String;
    .param p2, "fileCount"    # I
    .param p3, "albumName"    # Ljava/lang/String;
    .param p4, "isInPickMode"    # Z

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->bindTimeLabel(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->bindFileCount(I)V

    .line 40
    invoke-virtual {p0, p3, p4}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->bindAlbumFrom(Ljava/lang/String;Z)V

    .line 41
    return-void
.end method

.method protected bindFileCount(I)V
    .locals 6
    .param p1, "fileCount"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mFileCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method protected bindTimeLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "timeLabel"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mDateTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mDateTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 29
    const v0, 0x7f120091

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mDateTime:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f12025f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mFileCount:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f12025d

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mAlbumFrom:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f120101

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lmiui/R$string;->select_all:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    const v0, 0x7f12025c

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mSelectGroupOrNotContainer:Landroid/view/View;

    .line 35
    return-void
.end method

.method public setAlbumFromClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mAlbumFrom:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method public setCheckable(Z)V
    .locals 3
    .param p1, "checkable"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mSelectGroupOrNotContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mAlbumFrom:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mSelectGroupOrNotContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mAlbumFrom:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCheckableListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mSelectGroupOrNotContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->mSelectGroupOrNot:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/RecentTimelineGridHeaderItem;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v1, Lmiui/R$string;->deselect_all:I

    .line 82
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void

    .line 81
    :cond_0
    sget v1, Lmiui/R$string;->select_all:I

    goto :goto_0
.end method

.method public toggle()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
