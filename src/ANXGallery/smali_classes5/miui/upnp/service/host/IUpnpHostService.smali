.class public interface abstract Lmiui/upnp/service/host/IUpnpHostService;
.super Ljava/lang/Object;
.source "IUpnpHostService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/host/IUpnpHostService$Stub;
    }
.end annotation


# virtual methods
.method public abstract register(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/service/handler/ICompletionHandler;Lmiui/upnp/service/handler/IActionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendEvents(Lmiui/upnp/typedef/device/invocation/EventInfo;)V
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

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregister(Lmiui/upnp/typedef/device/Device;Lmiui/upnp/service/handler/ICompletionHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
