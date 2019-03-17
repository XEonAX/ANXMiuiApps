.class Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;
.super Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker;
.source "DefaultRequestEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;->queryEncryptedAccountName()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;->this$0:Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv;

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0, p2}, Lcom/xiaomi/micloudsdk/remote/XiaomiAccountRemoteMethodInvoker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;->invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;->val$account:Landroid/accounts/Account;

    invoke-static {p1, v0}, Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;->getEncryptedUserId(Landroid/os/IBinder;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
