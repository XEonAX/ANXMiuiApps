.class Lcom/miui/gallery/editor/photo/app/mosaic/MosaicHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MosaicHolder.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1200ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicHolder;->mImageView:Landroid/widget/ImageView;

    .line 18
    return-void
.end method


# virtual methods
.method setIconPath(Ljava/lang/String;I)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 21
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicHolder;->mImageView:Landroid/widget/ImageView;

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

    .line 23
    return-void
.end method
