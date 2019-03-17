.class Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog$2;
.super Ljava/lang/Object;
.source "CtaPermissionIntroduceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;


# direct methods
.method constructor <init>(Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog$2;->this$0:Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog$2;->this$0:Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;

    invoke-static {v0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->access$000(Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/BaseGalleryPreferences$PermissionIntroduction;->setCtaPrivacyPermissionsAllowed(Ljava/lang/String;Z)V

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog$2;->this$0:Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;

    invoke-static {v0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->access$100(Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;)Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog$2;->this$0:Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;

    invoke-static {v0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->access$100(Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;)Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/miui/gallery/permission/core/OnPermissionIntroduced;->onPermissionIntroduced(Z)V

    .line 122
    :cond_0
    return-void
.end method
