.class public interface abstract Lmiui/upnp/service/handler/IScanListener;
.super Ljava/lang/Object;
.source "IScanListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/handler/IScanListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDeviceFound(Lmiui/upnp/typedef/device/Device;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceLost(Lmiui/upnp/typedef/device/Device;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceUpdate(Lmiui/upnp/typedef/deviceupdate/DeviceUpdate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
