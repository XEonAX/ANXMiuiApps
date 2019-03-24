.class public abstract Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

.field protected mHybridView:Lmiui/hybrid/HybridView;


# direct methods
.method public constructor <init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/HybridView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->mHybridChromeClient:Lmiui/hybrid/HybridChromeClient;

    .line 22
    iput-object p2, p0, Lcom/miui/internal/hybrid/provider/AbsWebChromeClient;->mHybridView:Lmiui/hybrid/HybridView;

    .line 23
    return-void
.end method


# virtual methods
.method public getWebChromeClient()Ljava/lang/Object;
    .locals 1

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lmiui/hybrid/GeolocationPermissions$Callback;)V
    .locals 0

    .line 41
    return-void
.end method

.method public onJsAlert(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
    .locals 0

    .line 30
    const/4 p1, 0x0

    return p1
.end method

.method public onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
    .locals 0

    .line 34
    const/4 p1, 0x0

    return p1
.end method

.method public onProgressChanged(Lmiui/hybrid/HybridView;I)V
    .locals 0

    .line 38
    return-void
.end method

.method public onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .locals 0

    .line 44
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

    .line 47
    return-void
.end method
