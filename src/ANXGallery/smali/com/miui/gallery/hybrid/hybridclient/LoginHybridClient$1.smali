.class Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient$1;
.super Ljava/lang/Object;
.source "LoginHybridClient.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;->getActualPath(Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;

.field final synthetic val$callback:Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;


# direct methods
.method constructor <init>(Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient$1;->this$0:Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;

    iput-object p2, p0, Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient$1;->val$callback:Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "authtoken"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient$1;->val$callback:Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;

    invoke-interface {v2, v1}, Lcom/miui/gallery/hybrid/hybridclient/HybridClient$ActualPathCallback;->onGetActualPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
