.class public Lcom/miui/internal/server/Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 0

    .line 16
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 21
    invoke-static {p1, p2}, Lcom/miui/internal/server/DropBoxManagerService;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 22
    invoke-static {p1, p2}, Lcom/miui/internal/server/AssetsExtractReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    invoke-static {p1, p2}, Lcom/miui/internal/server/TelocationUpdateReceiver;->onReceiveIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 24
    return-void
.end method
