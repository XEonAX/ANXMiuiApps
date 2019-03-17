.class public Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VideoNavHolder.java"


# instance fields
.field private mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    const v0, 0x7f1201bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;->mView:Landroid/widget/TextView;

    .line 16
    return-void
.end method


# virtual methods
.method bind(Lcom/miui/gallery/video/editor/model/MenuFragmentData;)V
    .locals 3
    .param p1, "data"    # Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    .prologue
    const/4 v2, 0x0

    .line 19
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;->mView:Landroid/widget/TextView;

    iget v1, p1, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->iconId:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 20
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/VideoNavHolder;->mView:Landroid/widget/TextView;

    iget v1, p1, Lcom/miui/gallery/video/editor/model/MenuFragmentData;->nameId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 21
    return-void
.end method
