.class public Lmiui/cta/CTADialogFragment;
.super Landroid/app/DialogFragment;
.source "CTADialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cta/CTADialogFragment$OnDialogClickListener;
    }
.end annotation


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "key_message"

.field private static final OPTIONAL:Ljava/lang/String; = "key_optional"

.field static final TAG:Ljava/lang/String; = "CTADialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private isOptional()Z
    .locals 2

    .line 73
    invoke-virtual {p0}, Lmiui/cta/CTADialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_optional"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 65
    invoke-static {}, Lmiui/cta/CTAManager;->getInstance()Lmiui/cta/CTAManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cta/CTAManager;->onReject()V

    .line 66
    invoke-virtual {p0}, Lmiui/cta/CTADialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/cta/CTADialogFragment;->isOptional()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 70
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-virtual {p0}, Lmiui/cta/CTADialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 39
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 40
    return-object v1

    .line 42
    :cond_0
    new-instance v2, Lmiui/cta/CTADialogBuilder;

    invoke-direct {v2, v0}, Lmiui/cta/CTADialogBuilder;-><init>(Landroid/content/Context;)V

    .line 43
    .local v2, "builder":Lmiui/cta/CTADialogBuilder;
    invoke-virtual {p0}, Lmiui/cta/CTADialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "key_message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lmiui/cta/CTADialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 45
    new-instance v4, Lmiui/cta/CTADialogFragment$OnDialogClickListener;

    invoke-direct {v4, p0, v1}, Lmiui/cta/CTADialogFragment$OnDialogClickListener;-><init>(Lmiui/cta/CTADialogFragment;Lmiui/cta/CTADialogFragment$1;)V

    .line 46
    .local v4, "listener":Lmiui/cta/CTADialogFragment$OnDialogClickListener;
    invoke-virtual {v2, v4}, Lmiui/cta/CTADialogBuilder;->setPositiveButton(Landroid/content/DialogInterface$OnClickListener;)Lmiui/cta/CTADialogBuilder;

    .line 47
    invoke-direct {p0}, Lmiui/cta/CTADialogFragment;->isOptional()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    const/high16 v5, 0x1040000

    invoke-virtual {v2, v5, v1}, Lmiui/cta/CTADialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v2, v4}, Lmiui/cta/CTADialogBuilder;->setNegativeButton(Landroid/content/DialogInterface$OnClickListener;)Lmiui/cta/CTADialogBuilder;

    .line 52
    :goto_0
    invoke-virtual {v2}, Lmiui/cta/CTADialogBuilder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onStart()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 58
    invoke-static {}, Lmiui/cta/CTAManager;->getInstance()Lmiui/cta/CTAManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/cta/CTAManager;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lmiui/cta/CTADialogFragment;->dismiss()V

    .line 61
    :cond_0
    return-void
.end method

.method public showDialog(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "optional"    # Z

    .line 26
    invoke-virtual {p0}, Lmiui/cta/CTADialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 27
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 29
    invoke-virtual {p0, v0}, Lmiui/cta/CTADialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    :cond_0
    const-string v1, "key_message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "key_optional"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CTADialog"

    invoke-virtual {p0, v1, v2}, Lmiui/cta/CTADialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 34
    return-void
.end method
