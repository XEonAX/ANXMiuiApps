.class Lcom/miui/gallery/editor/photo/app/crop/ItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ItemHolder.java"


# instance fields
.field private mView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    const v0, 0x7f1200d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/ItemHolder;->mView:Landroid/widget/ImageView;

    .line 19
    return-void
.end method


# virtual methods
.method bind(Lcom/miui/gallery/editor/photo/core/common/model/CropData;)V
    .locals 3
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/common/model/CropData;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/ItemHolder;->mView:Landroid/widget/ImageView;

    iget v1, p1, Lcom/miui/gallery/editor/photo/core/common/model/CropData;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/ItemHolder;->mView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/ItemHolder;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/miui/gallery/editor/photo/core/common/model/CropData;->talkbackName:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method
