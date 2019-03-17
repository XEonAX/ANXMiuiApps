.class Lcom/miui/gallery/collage/app/layout/LayoutHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LayoutHolder.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mLayoutPreviewDrawable:Lcom/miui/gallery/collage/app/layout/LayoutPreviewDrawable;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutHolder;->itemView:Landroid/view/View;

    const v1, 0x7f120136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutHolder;->mImageView:Landroid/widget/ImageView;

    .line 20
    new-instance v0, Lcom/miui/gallery/collage/app/layout/LayoutPreviewDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/collage/app/layout/LayoutPreviewDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutHolder;->mLayoutPreviewDrawable:Lcom/miui/gallery/collage/app/layout/LayoutPreviewDrawable;

    .line 21
    return-void
.end method


# virtual methods
.method setLayoutModel(Lcom/miui/gallery/collage/core/layout/LayoutModel;I)V
    .locals 6
    .param p1, "layoutModel"    # Lcom/miui/gallery/collage/core/layout/LayoutModel;
    .param p2, "position"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutHolder;->mLayoutPreviewDrawable:Lcom/miui/gallery/collage/app/layout/LayoutPreviewDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/collage/app/layout/LayoutPreviewDrawable;->setLayoutModel(Lcom/miui/gallery/collage/core/layout/LayoutModel;)V

    .line 25
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutHolder;->mLayoutPreviewDrawable:Lcom/miui/gallery/collage/app/layout/LayoutPreviewDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gallery/collage/app/layout/LayoutHolder;->mImageView:Landroid/widget/ImageView;

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

    .line 27
    return-void
.end method
