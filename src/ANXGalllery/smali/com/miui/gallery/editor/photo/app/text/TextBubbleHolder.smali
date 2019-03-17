.class Lcom/miui/gallery/editor/photo/app/text/TextBubbleHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TextBubbleHolder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextBubbleHolder;->mContext:Landroid/content/Context;

    .line 20
    const v0, 0x7f1200ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextBubbleHolder;->mImageView:Landroid/widget/ImageView;

    .line 21
    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/gallery/editor/photo/core/common/model/TextData;I)V
    .locals 6
    .param p1, "textData"    # Lcom/miui/gallery/editor/photo/core/common/model/TextData;
    .param p2, "position"    # I

    .prologue
    .line 24
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/gallery/editor/photo/core/common/model/TextData;->iconPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/text/TextBubbleHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 25
    iget-boolean v0, p1, Lcom/miui/gallery/editor/photo/core/common/model/TextData;->showBackgroundColor:Z

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextBubbleHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextBubbleHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/miui/gallery/editor/photo/core/common/model/TextData;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/text/TextBubbleHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/text/TextBubbleHolder;->mImageView:Landroid/widget/ImageView;

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

    .line 29
    return-void
.end method
