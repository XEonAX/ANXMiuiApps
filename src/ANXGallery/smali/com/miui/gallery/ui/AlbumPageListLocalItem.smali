.class public Lcom/miui/gallery/ui/AlbumPageListLocalItem;
.super Lcom/miui/gallery/ui/AlbumPageListItemBase;
.source "AlbumPageListLocalItem.java"


# instance fields
.field protected mAlbumNameDesc:Landroid/widget/TextView;

.field protected mMoreAlbumHint:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumPageListItemBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public static getFormedNameNotExceedMaxWidth(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/TextView;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 45
    .local v5, "paint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b00bd

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 46
    .local v3, "maxWidth":I
    const/4 v9, 0x0

    .line 47
    .local v9, "total":F
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    .local v1, "firstAlbumName":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 49
    .local v10, "width":F
    int-to-float v11, v3

    cmpl-float v11, v10, v11

    if-lez v11, :cond_0

    .line 70
    .end local v1    # "firstAlbumName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 52
    .restart local v1    # "firstAlbumName":Ljava/lang/String;
    :cond_0
    move v9, v10

    .line 53
    const v11, 0x7f0c02e4

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "split":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 55
    .local v7, "splitWidth":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v4, "name":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_1

    .line 58
    add-float v11, v9, v7

    int-to-float v12, v3

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    .line 70
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, "albumName":Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 63
    .local v8, "temp":F
    add-float v11, v9, v7

    add-float/2addr v11, v8

    int-to-float v12, v3

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_1

    .line 66
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    add-float v11, v9, v7

    add-float v9, v11, v8

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bindAlbumNameDesc(Landroid/content/Context;Lcom/miui/gallery/model/Album;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "album"    # Lcom/miui/gallery/model/Album;

    .prologue
    .line 30
    instance-of v1, p2, Lcom/miui/gallery/model/OtherAlbum;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 31
    check-cast v0, Lcom/miui/gallery/model/OtherAlbum;

    .line 32
    .local v0, "others":Lcom/miui/gallery/model/OtherAlbum;
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->mAlbumNameDesc:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/gallery/model/OtherAlbum;->getAlbumNames()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->mAlbumNameDesc:Landroid/widget/TextView;

    invoke-static {p1, v2, v3}, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->getFormedNameNotExceedMaxWidth(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .end local v0    # "others":Lcom/miui/gallery/model/OtherAlbum;
    :goto_0
    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 37
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->mMoreAlbumHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    :goto_1
    return-void

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->mAlbumNameDesc:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/gallery/model/Album;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->mMoreAlbumHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/miui/gallery/ui/AlbumPageListItemBase;->onFinishInflate()V

    .line 25
    const v0, 0x7f1200b1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->mMoreAlbumHint:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f1200b0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumPageListLocalItem;->mAlbumNameDesc:Landroid/widget/TextView;

    .line 27
    return-void
.end method
