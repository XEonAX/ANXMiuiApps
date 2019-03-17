.class public Lcom/miui/gallery/ui/BabyAlbumDetailGridHeaderItem;
.super Lcom/miui/gallery/ui/TimeLineGridHeaderItem;
.source "BabyAlbumDetailGridHeaderItem.java"


# instance fields
.field private mAge:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public bindData(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "location"    # Ljava/lang/String;
    .param p4, "age"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1, p2}, Lcom/miui/gallery/util/GalleryDateUtils;->formatRelativeDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/miui/gallery/ui/BabyAlbumDetailGridHeaderItem;->bindData(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailGridHeaderItem;->mAge:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->onFinishInflate()V

    .line 20
    const v0, 0x7f1200c8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/BabyAlbumDetailGridHeaderItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailGridHeaderItem;->mAge:Landroid/widget/TextView;

    .line 21
    return-void
.end method

.method public setCheckable(Z)V
    .locals 2
    .param p1, "checkable"    # Z

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/TimeLineGridHeaderItem;->setCheckable(Z)V

    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailGridHeaderItem;->mAge:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailGridHeaderItem;->mAge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
