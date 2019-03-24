.class public interface abstract Lmiui/upnp/service/handler/ISubscribeCompletionHandler;
.super Ljava/lang/Object;
.source "ISubscribeCompletionHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/handler/ISubscribeCompletionHandler$Stub;
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

.method public abstract onSucceed(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
