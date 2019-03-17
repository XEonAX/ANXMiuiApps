.class Lcom/miui/gallery/permission/PermissionsDialogFragment$CategoryViewHolder;
.super Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;
.source "PermissionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/permission/PermissionsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryViewHolder"
.end annotation


# instance fields
.field private mCategory:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 259
    const v0, 0x7f12029e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$CategoryViewHolder;->mCategory:Landroid/widget/TextView;

    .line 260
    return-void
.end method


# virtual methods
.method public bindPermission(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;)V
    .locals 3
    .param p1, "permission"    # Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;

    .prologue
    .line 264
    iget-boolean v1, p1, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;->mRequired:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0c0340

    .line 265
    .local v0, "res":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$CategoryViewHolder;->mCategory:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$CategoryViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    return-void

    .line 264
    .end local v0    # "res":I
    :cond_0
    const v0, 0x7f0c033d

    goto :goto_0
.end method
