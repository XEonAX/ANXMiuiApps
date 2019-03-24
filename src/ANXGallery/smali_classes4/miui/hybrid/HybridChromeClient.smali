.class public Lmiui/hybrid/HybridChromeClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fy:Lcom/miui/internal/hybrid/HybridManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V
    .locals 0

    .line 86
    return-void
.end method

.method public onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
    .locals 0

    .line 26
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lmiui/hybrid/HybridChromeClient;->fy:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {p2}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiui/hybrid/HybridChromeClient$3;

    invoke-direct {p2, p0, p4}, Lmiui/hybrid/HybridChromeClient$3;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    .line 27
    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiui/hybrid/HybridChromeClient$2;

    invoke-direct {p2, p0, p4}, Lmiui/hybrid/HybridChromeClient$2;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    .line 33
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiui/hybrid/HybridChromeClient$1;

    invoke-direct {p2, p0, p4}, Lmiui/hybrid/HybridChromeClient$1;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    .line 39
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 49
    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
    .locals 0

    .line 53
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lmiui/hybrid/HybridChromeClient;->fy:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {p2}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiui/hybrid/HybridChromeClient$7;

    invoke-direct {p2, p0, p4}, Lmiui/hybrid/HybridChromeClient$7;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    .line 54
    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiui/hybrid/HybridChromeClient$6;

    invoke-direct {p2, p0, p4}, Lmiui/hybrid/HybridChromeClient$6;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    .line 60
    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiui/hybrid/HybridChromeClient$5;

    invoke-direct {p2, p0, p4}, Lmiui/hybrid/HybridChromeClient$5;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    .line 66
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lmiui/hybrid/HybridChromeClient$4;

    invoke-direct {p2, p0, p4}, Lmiui/hybrid/HybridChromeClient$4;-><init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V

    .line 72
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 82
    const/4 p1, 0x1

    return p1
.end method

.method public onProgressChanged(Lmiui/hybrid/HybridView;I)V
    .locals 0

    .line 89
    invoke-virtual {p1, p2}, Lmiui/hybrid/HybridView;->setProgress(I)V

    .line 90
    return-void
.end method

.method public onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .locals 0

    .line 93
    return-void
.end method

.method public openFileChooser(Lmiui/hybrid/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/hybrid/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 96
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lmiui/hybrid/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public setHybridManager(Lcom/miui/internal/hybrid/HybridManager;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmiui/hybrid/HybridChromeClient;->fy:Lcom/miui/internal/hybrid/HybridManager;

    .line 23
    return-void
.end method
