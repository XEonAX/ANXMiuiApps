.class Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AgreementDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/agreement/AgreementDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgreementViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder$OnCheckChangedListener;
    }
.end annotation


# instance fields
.field private mAgreement:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

.field mCheckBox:Landroid/widget/CheckBox;

.field private mCheckChangedListener:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder$OnCheckChangedListener;

.field mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 174
    const v0, 0x7f12002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mText:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f12019f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 176
    return-void
.end method

.method public static getView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "layoutRes"    # I

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private parseAgreementText(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "agreement"    # Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p1, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {p1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$200(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    .local v1, "res":Landroid/content/res/Resources;
    iget-boolean v2, p1, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->mRequired:Z

    if-eqz v2, :cond_1

    .line 211
    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 213
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    const v2, 0x7f0c0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public bindAgreement(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder$OnCheckChangedListener;)V
    .locals 6
    .param p1, "agreement"    # Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;
    .param p2, "listener"    # Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder$OnCheckChangedListener;

    .prologue
    const/4 v5, 0x0

    .line 179
    iput-object p1, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mAgreement:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

    .line 180
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->parseAgreementText(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 182
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p1, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->mLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mText:Landroid/widget/TextView;

    const v3, 0x7f0b00af

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 184
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiui/R$drawable;->arrow_right:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v5, v0, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 189
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-static {p1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$200(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1100c2

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 194
    :goto_1
    iget-object v2, p1, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->mLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :goto_2
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {p1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$100(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iput-object p2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mCheckChangedListener:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder$OnCheckChangedListener;

    .line 202
    return-void

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1100bd

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f12002d

    if-ne v0, v1, :cond_0

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mAgreement:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

    invoke-static {v0, v1}, Lcom/miui/gallery/agreement/AgreementsUtils;->viewAgreement(Landroid/content/Context;Lcom/miui/gallery/agreement/core/Agreement;)V

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f12019f

    if-ne v0, v1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mAgreement:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

    iget-object v1, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;->access$102(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;Z)Z

    .line 226
    iget-object v0, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mCheckChangedListener:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder$OnCheckChangedListener;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mCheckChangedListener:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder$OnCheckChangedListener;

    iget-object v1, p0, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder;->mAgreement:Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;

    invoke-interface {v0, v1}, Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementViewHolder$OnCheckChangedListener;->onCheckChanged(Lcom/miui/gallery/agreement/AgreementDialogFragment$AgreementWrapper;)V

    .line 230
    :cond_1
    return-void
.end method
