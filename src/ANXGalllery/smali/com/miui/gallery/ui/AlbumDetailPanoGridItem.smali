.class public Lcom/miui/gallery/ui/AlbumDetailPanoGridItem;
.super Lcom/miui/gallery/ui/AlbumDetailGridItem;
.source "AlbumDetailPanoGridItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumDetailGridItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected isSquareItem()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailPanoGridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 27
    .local v1, "heightScale":I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumDetailPanoGridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 29
    .local v3, "widthScale":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 30
    .local v2, "width":I
    mul-int v4, v2, v1

    div-int v0, v4, v3

    .line 31
    .local v0, "height":I
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 32
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumDetailGridItem;->onMeasure(II)V

    .line 34
    const-string v4, "AlbumDetailPanoGridItem"

    const-string v5, "onMeasure w: %d, h: %d"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    return-void
.end method
