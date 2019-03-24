.class Lmiui/upnp/manager/UpnpControlPoint$4;
.super Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub;
.source "UpnpControlPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/upnp/manager/UpnpControlPoint;->invoke(Lmiui/upnp/typedef/device/invocation/ActionInfo;Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/upnp/manager/UpnpControlPoint;

.field final synthetic val$handler:Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;


# direct methods
.method constructor <init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/upnp/manager/UpnpControlPoint;

    .line 220
    iput-object p1, p0, Lmiui/upnp/manager/UpnpControlPoint$4;->this$0:Lmiui/upnp/manager/UpnpControlPoint;

    iput-object p2, p0, Lmiui/upnp/manager/UpnpControlPoint$4;->val$handler:Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;

    invoke-direct {p0}, Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lmiui/upnp/typedef/error/UpnpError;)V
    .locals 1
    .param p1, "error"    # Lmiui/upnp/typedef/error/UpnpError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$4;->val$handler:Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;

    invoke-interface {v0, p1}, Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;->onFailed(Lmiui/upnp/typedef/error/UpnpError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onSucceed(Lmiui/upnp/typedef/device/invocation/ActionInfo;)V
    .locals 1
    .param p1, "invocation"    # Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$4;->val$handler:Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;

    invoke-interface {v0, p1}, Lmiui/upnp/manager/handler/UpnpInvokeCompletionHandler;->onSucceed(Lmiui/upnp/typedef/device/invocation/ActionInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
