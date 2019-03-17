.class public Lcom/miui/gallery/permission/PermissionsDialogFragment;
.super Landroid/app/DialogFragment;
.source "PermissionsDialogFragment.java"

# interfaces
.implements Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionWrapper;,
        Lcom/miui/gallery/permission/PermissionsDialogFragment$CategoryViewHolder;,
        Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionViewHolder;,
        Lcom/miui/gallery/permission/PermissionsDialogFragment$BaseViewHolder;,
        Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;
    }
.end annotation


# instance fields
.field private mOnIntroducedListener:Lcom/miui/gallery/permission/core/OnPermissionIntroduced;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 269
    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)Lcom/miui/gallery/permission/PermissionsDialogFragment;
    .locals 3
    .param p1, "onIntroducedListener"    # Lcom/miui/gallery/permission/core/OnPermissionIntroduced;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/permission/core/Permission;",
            ">;",
            "Lcom/miui/gallery/permission/core/OnPermissionIntroduced;",
            ")",
            "Lcom/miui/gallery/permission/PermissionsDialogFragment;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/permission/core/Permission;>;"
    new-instance v1, Lcom/miui/gallery/permission/PermissionsDialogFragment;

    invoke-direct {v1}, Lcom/miui/gallery/permission/PermissionsDialogFragment;-><init>()V

    .line 37
    .local v1, "fragment":Lcom/miui/gallery/permission/PermissionsDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "extra_permissions"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/miui/gallery/permission/PermissionsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {v1, p1}, Lcom/miui/gallery/permission/PermissionsDialogFragment;->setOnIntroducedListener(Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public onAgreementInvoked(Z)V
    .locals 1
    .param p1, "agreed"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment;->mOnIntroducedListener:Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment;->mOnIntroducedListener:Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    invoke-interface {v0, p1}, Lcom/miui/gallery/permission/core/OnPermissionIntroduced;->onPermissionIntroduced(Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/permission/PermissionsDialogFragment;->setCancelable(Z)V

    .line 48
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    new-instance v0, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;

    invoke-virtual {p0}, Lcom/miui/gallery/permission/PermissionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "dialog":Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;->setOnAgreementListener(Lcom/miui/gallery/agreement/core/OnAgreementInvokedListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/miui/gallery/permission/PermissionsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_permissions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/permission/PermissionsDialogFragment$PermissionDialog;->setPermissions(Ljava/util/List;)V

    .line 55
    return-object v0
.end method

.method setOnIntroducedListener(Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/gallery/permission/PermissionsDialogFragment;->mOnIntroducedListener:Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    .line 67
    return-void
.end method
