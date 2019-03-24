.class public interface abstract Lmiui/upnp/service/handler/ICompletionHandler;
.super Ljava/lang/Object;
.source "ICompletionHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/handler/ICompletionHandler$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFailed(Lmiui/upnp/typedef/error/UpnpError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSucceed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
