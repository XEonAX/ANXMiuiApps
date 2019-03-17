.class public Lcom/miui/gallery/permission/introduction/CTAPermissionIntroduction;
.super Ljava/lang/Object;
.source "CTAPermissionIntroduction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public introduce(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    .prologue
    .line 16
    invoke-static {p2}, Lcom/miui/gallery/permission/cta/CtaPermissions;->isPrivacyAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    const/4 v2, 0x1

    invoke-interface {p3, v2}, Lcom/miui/gallery/permission/core/OnPermissionIntroduced;->onPermissionIntroduced(Z)V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cta_privacy_permission_dialog_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "dialogTag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 21
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-nez v0, :cond_2

    .line 22
    new-instance v2, Lcom/miui/gallery/permission/introduction/CTAPermissionIntroduction$1;

    invoke-direct {v2, p0, p3}, Lcom/miui/gallery/permission/introduction/CTAPermissionIntroduction$1;-><init>(Lcom/miui/gallery/permission/introduction/CTAPermissionIntroduction;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V

    invoke-static {p2, v2}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->newInstance(Ljava/lang/String;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;

    move-result-object v0

    .line 29
    :cond_2
    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
