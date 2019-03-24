.class Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;-><init>(Landroid/app/Activity;Lcom/miui/internal/hybrid/provider/AbsWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pD:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;


# direct methods
.method constructor <init>(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;->pD:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 42
    iget-object p1, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;->pD:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-static {p1}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->a(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V

    goto :goto_0

    .line 43
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 44
    iget-object p1, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;->pD:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-static {p1}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->b(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V

    .line 45
    iget-object p1, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$1;->pD:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;

    invoke-static {p1}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->c(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)Lcom/miui/internal/hybrid/provider/AbsWebView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 47
    :cond_1
    :goto_0
    return-void
.end method
