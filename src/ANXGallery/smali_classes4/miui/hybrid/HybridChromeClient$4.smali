.class Lmiui/hybrid/HybridChromeClient$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 72
    iput-object p1, p0, Lmiui/hybrid/HybridChromeClient$4;->yu:Lmiui/hybrid/HybridChromeClient;

    iput-object p2, p0, Lmiui/hybrid/HybridChromeClient$4;->yt:Lmiui/hybrid/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 75
    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 76
    iget-object p1, p0, Lmiui/hybrid/HybridChromeClient$4;->yt:Lmiui/hybrid/JsResult;

    invoke-virtual {p1}, Lmiui/hybrid/JsResult;->confirm()V

    .line 77
    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    const/4 p1, 0x1

    return p1
.end method
