.class Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;
.super Lcom/miui/gallery/agreement/BaseAgreementDialog;
.source "PermissionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/permission/PermissionsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;,
        Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/agreement/BaseAgreementDialog;-><init>(Landroid/content/Context;Z)V

    .line 74
    new-instance v0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;-><init>(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;Lcom/miui/gallery/permission/PermissionsDialogFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;->mAdapter:Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;

    .line 75
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;->mAdapter:Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;

    return-object v0
.end method

.method protected getDividerDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$DividerDecoration;-><init>(Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;Lcom/miui/gallery/permission/PermissionsDialogFragment$1;)V

    return-object v0
.end method

.method protected getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0343

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/permission/core/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/permission/core/Permission;>;"
    iget-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;->mAdapter:Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog$PermissionAdapter;->setPermissions(Ljava/util/List;)V

    .line 94
    return-void
.end method
