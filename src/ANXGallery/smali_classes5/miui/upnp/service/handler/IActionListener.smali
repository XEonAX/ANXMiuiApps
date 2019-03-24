.class public interface abstract Lmiui/upnp/service/handler/IActionListener;
.super Ljava/lang/Object;
.source "IActionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/handler/IActionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAction(Lmiui/upnp/typedef/device/invocation/ActionInfo;)Lmiui/upnp/typedef/error/UpnpError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
