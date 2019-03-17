.class Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionViewHolder;
.super Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;
.source "PermissionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/permission/PermissionsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionViewHolder"
.end annotation


# instance fields
.field private mDesc:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 240
    const v0, 0x7f12002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionViewHolder;->mName:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f1202c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionViewHolder;->mDesc:Landroid/widget/TextView;

    .line 242
    return-void
.end method


# virtual methods
.method public bindPermission(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;)V
    .locals 2
    .param p1, "permission"    # Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionViewHolder;->mDesc:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method
