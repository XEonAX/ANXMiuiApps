.class Lmiui/upnp/manager/UpnpControlPoint$7;
.super Lmiui/upnp/service/handler/ICompletionHandler$Stub;
.source "UpnpControlPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/upnp/manager/UpnpControlPoint;->unsubscribe(Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/upnp/manager/UpnpControlPoint;

.field final synthetic val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

.field final synthetic val$service:Lmiui/upnp/typedef/device/Service;


# direct methods
.method constructor <init>(Lmiui/upnp/manager/UpnpControlPoint;Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/upnp/manager/UpnpControlPoint;

    .line 326
    iput-object p1, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->this$0:Lmiui/upnp/manager/UpnpControlPoint;

    iput-object p2, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->val$service:Lmiui/upnp/typedef/device/Service;

    iput-object p3, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-direct {p0}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;-><init>()V

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

    .line 343
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-interface {v0, p1}, Lmiui/upnp/manager/handler/UpnpCompletionHandler;->onFailed(Lmiui/upnp/typedef/error/UpnpError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onSucceed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->val$service:Lmiui/upnp/typedef/device/Service;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/Service;->setSubscribed(Z)Z

    .line 331
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->val$service:Lmiui/upnp/typedef/device/Service;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/Service;->setSubscriptionId(Ljava/lang/String;)Z

    .line 334
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$7;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-interface {v0}, Lmiui/upnp/manager/handler/UpnpCompletionHandler;->onSucceed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
