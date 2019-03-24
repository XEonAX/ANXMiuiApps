.class Lmiui/upnp/manager/UpnpControlPoint$5;
.super Lmiui/upnp/service/handler/ISubscribeCompletionHandler$Stub;
.source "UpnpControlPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/upnp/manager/UpnpControlPoint;->subscribe(Lmiui/upnp/typedef/device/Service;Lmiui/upnp/manager/handler/UpnpCompletionHandler;Lmiui/upnp/manager/handler/UpnpEventListener;)V
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

    .line 261
    iput-object p1, p0, Lmiui/upnp/manager/UpnpControlPoint$5;->this$0:Lmiui/upnp/manager/UpnpControlPoint;

    iput-object p2, p0, Lmiui/upnp/manager/UpnpControlPoint$5;->val$service:Lmiui/upnp/typedef/device/Service;

    iput-object p3, p0, Lmiui/upnp/manager/UpnpControlPoint$5;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-direct {p0}, Lmiui/upnp/service/handler/ISubscribeCompletionHandler$Stub;-><init>()V

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

    .line 278
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$5;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-interface {v0, p1}, Lmiui/upnp/manager/handler/UpnpCompletionHandler;->onFailed(Lmiui/upnp/typedef/error/UpnpError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onSucceed(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;)V
    .locals 2
    .param p1, "invocation"    # Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$5;->val$service:Lmiui/upnp/typedef/device/Service;

    invoke-virtual {p1}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/Service;->setSubscriptionId(Ljava/lang/String;)Z

    .line 266
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$5;->val$service:Lmiui/upnp/typedef/device/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/upnp/typedef/device/Service;->setSubscribed(Z)Z

    .line 269
    :try_start_0
    iget-object v0, p0, Lmiui/upnp/manager/UpnpControlPoint$5;->val$handler:Lmiui/upnp/manager/handler/UpnpCompletionHandler;

    invoke-interface {v0}, Lmiui/upnp/manager/handler/UpnpCompletionHandler;->onSucceed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
