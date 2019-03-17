.class public Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;
.super Landroid/app/DialogFragment;
.source "CtaPermissionIntroduceDialog.java"


# instance fields
.field private mIntroduceListener:Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

.field private mPermissionToRequest:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->mPermissionToRequest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;)Lcom/miui/gallery/permission/core/OnPermissionIntroduced;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->mIntroduceListener:Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    .prologue
    .line 30
    new-instance v1, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;

    invoke-direct {v1}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;-><init>()V

    .line 31
    .local v1, "dialog":Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "permission"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->setArguments(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {v1, p1}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->setOnIntroducedListener(Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V

    .line 35
    return-object v1
.end method


# virtual methods
.method protected getMessage()Landroid/text/SpannableStringBuilder;
    .locals 13

    .prologue
    const v12, 0x7f0c023f

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 74
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->mPermissionToRequest:Ljava/lang/String;

    .line 76
    .local v5, "permissionName":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->mPermissionToRequest:Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 77
    .local v4, "permissionInfo":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v4, v3}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 78
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 84
    :cond_0
    invoke-virtual {p0, v12}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .end local v1    # "label":Ljava/lang/CharSequence;
    .end local v4    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_0
    const v8, 0x7f0c050c

    invoke-virtual {p0, v8}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "userAgreement":Ljava/lang/String;
    const v8, 0x7f0c050d

    invoke-virtual {p0, v8}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "privacyPolicy":Ljava/lang/String;
    const v8, 0x7f0c03d4

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v11

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v2, v7, v6}, Lcom/miui/gallery/agreement/cta/CtaAgreement;->buildUserNotice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    return-object v8

    .line 81
    .end local v2    # "message":Ljava/lang/String;
    .end local v6    # "privacyPolicy":Ljava/lang/String;
    .end local v7    # "userAgreement":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v8, "CtaPrivacyPermissionRequestDialog"

    const-string v9, "Get permission info failed, %s"

    invoke-static {v8, v9, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-virtual {p0, v12}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 85
    goto :goto_0

    .line 84
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    invoke-virtual {p0, v12}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    throw v8
.end method

.method protected getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog$2;-><init>(Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;)V

    return-object v0
.end method

.method protected getNegativeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f0c03d5

    invoke-virtual {p0, v0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog$1;-><init>(Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;)V

    return-object v0
.end method

.method protected getPositiveText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f0c03d6

    invoke-virtual {p0, v0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f0c03d7

    invoke-virtual {p0, v0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->setCancelable(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "permission"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->mPermissionToRequest:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getMessage()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getPositiveText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getNegativeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 53
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    .line 54
    .local v1, "dialog":Lmiui/app/AlertDialog;
    return-object v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 60
    invoke-virtual {p0}, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 61
    .local v0, "messageText":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 62
    return-void
.end method

.method setOnIntroducedListener(Lcom/miui/gallery/permission/core/OnPermissionIntroduced;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/gallery/permission/cta/CtaPermissionIntroduceDialog;->mIntroduceListener:Lcom/miui/gallery/permission/core/OnPermissionIntroduced;

    .line 66
    return-void
.end method
