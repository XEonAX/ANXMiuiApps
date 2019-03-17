.class public Lcom/miui/gallery/ui/AlbumDetailGridItem;
.super Lcom/miui/gallery/ui/MicroThumbGridItem;
.source "AlbumDetailGridItem.java"


# instance fields
.field private mFileSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/MicroThumbGridItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public bindFileSize(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailGridItem;->mFileSize:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailGridItem;->mFileSize:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/miui/gallery/util/FormatUtil;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailGridItem;->mFileSize:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->onFinishInflate()V

    .line 22
    const v0, 0x7f120099

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDetailGridItem;->mFileSize:Landroid/widget/TextView;

    .line 23
    return-void
.end method
