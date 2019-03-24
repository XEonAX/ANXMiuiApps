.class Lmiui/hybrid/HybridChromeClient$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/HybridChromeClient;->onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yt:Lmiui/hybrid/JsResult;

.field final synthetic yu:Lmiui/hybrid/HybridChromeClient;


# direct methods
.method constructor <init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lmiui/hybrid/HybridChromeClient$5;->yu:Lmiui/hybrid/HybridChromeClient;

    iput-object p2, p0, Lmiui/hybrid/HybridChromeClient$5;->yt:Lmiui/hybrid/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lmiui/hybrid/HybridChromeClient$5;->yt:Lmiui/hybrid/JsResult;

    invoke-virtual {p1}, Lmiui/hybrid/JsResult;->cancel()V

    .line 70
    return-void
.end method
