.class public Lcom/miui/gallery/editor/photo/app/sticker/HeaderHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HeaderHolder.java"


# instance fields
.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 19
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "itemView":Landroid/view/View;
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/sticker/HeaderHolder;->mTitle:Landroid/widget/TextView;

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method bind(Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;)V
    .locals 6
    .param p1, "category"    # Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;

    .prologue
    .line 24
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/HeaderHolder;->mTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/HeaderHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/gallery/editor/photo/core/common/model/StickerCategory;->name:Ljava/lang/String;

    const-string/jumbo v4, "string"

    const-string v5, "com.miui.gallery"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 27
    .local v1, "nameResId":I
    if-eqz v1, :cond_0

    .line 28
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/HeaderHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "nameResId":I
    :cond_0
    return-void
.end method
