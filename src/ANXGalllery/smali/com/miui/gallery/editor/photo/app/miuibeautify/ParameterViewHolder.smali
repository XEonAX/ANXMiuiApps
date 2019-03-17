.class Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ParameterViewHolder.java"


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    const v0, 0x7f1201bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;->mTextView:Landroid/widget/TextView;

    .line 15
    return-void
.end method


# virtual methods
.method bind(ILcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;)V
    .locals 2
    .param p1, "icon"    # I
    .param p2, "data"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;

    .prologue
    const/4 v1, 0x0

    .line 18
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/ParameterViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautifyData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    return-void
.end method
