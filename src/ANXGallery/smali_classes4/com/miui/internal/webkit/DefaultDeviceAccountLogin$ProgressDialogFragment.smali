.class public Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 101
    new-instance p1, Lmiui/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 102
    sget v0, Lcom/miui/internal/R$string;->web_sso_login_message:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 105
    return-object p1
.end method
