.class Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment$3;
.super Ljava/lang/Object;
.source "AuthenticatePrivacyPasswordFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->authenticatePrivacyPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment$3;->this$0:Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/DialogFragment;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment$3;->this$0:Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;->access$100(Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;I)V

    .line 157
    return-void
.end method

.method public onConfirm(Landroid/app/DialogFragment;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment$3;->this$0:Lcom/miui/gallery/ui/AuthenticatePrivacyPasswordFragment;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/miui/privacy/LockSettingsHelper;->startSetPrivacyPasswordActivity(Landroid/app/Fragment;I)V

    .line 152
    return-void
.end method
