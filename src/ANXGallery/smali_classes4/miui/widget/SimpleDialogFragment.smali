.class public Lmiui/widget/SimpleDialogFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    }
.end annotation


# static fields
.field public static final ARG_CANCELABLE:Ljava/lang/String; = "cancelable"

.field public static final ARG_MESSAGE:Ljava/lang/String; = "msg_res_id"

.field public static final ARG_TITLE:Ljava/lang/String; = "title"

.field public static final ARG_TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_ALERT:I = 0x1

.field public static final TYPE_PROGRESS:I = 0x2


# instance fields
.field private aa:Ljava/lang/String;

.field private aag:Ljava/lang/String;

.field private aah:I

.field private aai:I

.field private aaj:I

.field private aak:Landroid/content/DialogInterface$OnClickListener;

.field private aal:Landroid/content/DialogInterface$OnClickListener;

.field private mCancelable:Z

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SimpleDialogFragment;->mCancelable:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lmiui/widget/SimpleDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 54
    if-eqz p1, :cond_0

    .line 58
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/widget/SimpleDialogFragment;->aah:I

    .line 59
    const-string v0, "msg_res_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SimpleDialogFragment;->aa:Ljava/lang/String;

    .line 60
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SimpleDialogFragment;->aag:Ljava/lang/String;

    .line 61
    const-string v0, "cancelable"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/widget/SimpleDialogFragment;->mCancelable:Z

    .line 62
    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no argument"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 66
    iget p1, p0, Lmiui/widget/SimpleDialogFragment;->aah:I

    packed-switch p1, :pswitch_data_0

    .line 90
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown dialog type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/widget/SimpleDialogFragment;->aah:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :pswitch_0
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lmiui/widget/SimpleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lmiui/widget/SimpleDialogFragment;->aa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    iget-boolean v0, p0, Lmiui/widget/SimpleDialogFragment;->mCancelable:Z

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 87
    return-object p1

    .line 68
    :pswitch_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {p0}, Lmiui/widget/SimpleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lmiui/widget/SimpleDialogFragment;->aa:Ljava/lang/String;

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lmiui/widget/SimpleDialogFragment;->mCancelable:Z

    .line 71
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lmiui/widget/SimpleDialogFragment;->aag:Ljava/lang/String;

    .line 72
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 73
    iget v0, p0, Lmiui/widget/SimpleDialogFragment;->aai:I

    if-lez v0, :cond_0

    .line 74
    iget v0, p0, Lmiui/widget/SimpleDialogFragment;->aai:I

    iget-object v1, p0, Lmiui/widget/SimpleDialogFragment;->aak:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    :cond_0
    iget v0, p0, Lmiui/widget/SimpleDialogFragment;->aaj:I

    if-lez v0, :cond_1

    .line 78
    iget v0, p0, Lmiui/widget/SimpleDialogFragment;->aaj:I

    iget-object v1, p0, Lmiui/widget/SimpleDialogFragment;->aal:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 102
    iget-object v0, p0, Lmiui/widget/SimpleDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lmiui/widget/SimpleDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 105
    :cond_0
    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 109
    iput p1, p0, Lmiui/widget/SimpleDialogFragment;->aaj:I

    .line 110
    iput-object p2, p0, Lmiui/widget/SimpleDialogFragment;->aal:Landroid/content/DialogInterface$OnClickListener;

    .line 111
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lmiui/widget/SimpleDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 97
    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 115
    iput p1, p0, Lmiui/widget/SimpleDialogFragment;->aai:I

    .line 116
    iput-object p2, p0, Lmiui/widget/SimpleDialogFragment;->aak:Landroid/content/DialogInterface$OnClickListener;

    .line 117
    return-void
.end method
