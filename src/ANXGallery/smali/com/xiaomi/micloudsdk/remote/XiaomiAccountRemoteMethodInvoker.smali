.class public abstract Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker;
.super Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;
.source "XiaomiAccountRemoteMethodInvoker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker",
        "<TR;>;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_NEW_SERVICE_INSTALLED:Lcom/miui/app/ServiceInstalled;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lcom/miui/app/ServiceInstalled;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.account"

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/app/ServiceInstalled;-><init>(Landroid/content/Intent;)V

    sput-object v0, Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker;->ACCOUNT_NEW_SERVICE_INSTALLED:Lcom/miui/app/ServiceInstalled;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    .local p0, "this":Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker;, "Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker<TR;>;"
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private static bindAccountService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 25
    .local p0, "this":Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker;, "Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker<TR;>;"
    sget-object v0, Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker;->ACCOUNT_NEW_SERVICE_INSTALLED:Lcom/miui/app/ServiceInstalled;

    invoke-virtual {v0, p1}, Lcom/miui/app/ServiceInstalled;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    .line 26
    invoke-static {p1, v0, p2}, Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker;->bindAccountService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    .line 27
    :goto_0
    return v0

    .line 26
    :cond_0
    const-string v0, "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    .line 27
    invoke-static {p1, v0, p2}, Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker;->bindAccountService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    goto :goto_0
.end method
