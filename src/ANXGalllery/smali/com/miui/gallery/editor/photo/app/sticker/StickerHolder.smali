.class Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StickerHolder.java"


# instance fields
.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field private mView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p3, "size"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "itemView":Landroid/view/View;
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;->mView:Landroid/widget/ImageView;

    .line 21
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 22
    iput-object p3, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;->mSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 23
    return-void
.end method


# virtual methods
.method bind(Lcom/miui/gallery/editor/photo/core/common/model/StickerData;I)V
    .locals 6
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/common/model/StickerData;
    .param p2, "position"    # I

    .prologue
    .line 26
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/gallery/editor/photo/core/common/model/StickerData;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;->mView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;->mSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;)V

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;->mView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/sticker/StickerHolder;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0386

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method
