.class public interface abstract Lmiui/upnp/service/controlpoint/IUpnpControlPointService;
.super Ljava/lang/Object;
.source "IUpnpControlPointService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;
    }
.end annotation


# virtual methods
.method public abstract invoke(Lmiui/upnp/typedef/device/invocation/ActionInfo;Lmiui/upnp/service/handler/IInvokeCompletionHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startScan(Ljava/util/List;Lmiui/upnp/service/handler/ICompletionHandler;Lmiui/upnp/service/handler/IScanListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/device/urn/Urn;",
            ">;",
            "Lmiui/upnp/service/handler/ICompletionHandler;",
            "Lmiui/upnp/service/handler/IScanListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopScan(Lmiui/upnp/service/handler/ICompletionHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract subscribe(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;Lmiui/upnp/service/handler/ISubscribeCompletionHandler;Lmiui/upnp/service/handler/IEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unsubscribe(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;Lmiui/upnp/service/handler/ICompletionHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
