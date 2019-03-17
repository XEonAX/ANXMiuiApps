.class Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RemoverItemHolder.java"


# instance fields
.field private mIconView:Landroid/widget/ImageView;

.field private mLabelView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    const v0, 0x7f12008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;->mLabelView:Landroid/widget/TextView;

    .line 17
    const v0, 0x7f120089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;->mIconView:Landroid/widget/ImageView;

    .line 18
    return-void
.end method


# virtual methods
.method bind(Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;)V
    .locals 2
    .param p1, "data"    # Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;->mIconView:Landroid/widget/ImageView;

    iget v1, p1, Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method
