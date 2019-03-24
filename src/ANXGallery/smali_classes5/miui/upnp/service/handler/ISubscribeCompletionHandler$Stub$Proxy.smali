.class Lmiui/upnp/service/handler/ISubscribeCompletionHandler$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISubscribeCompletionHandler.java"

# interfaces
.implements Lmiui/upnp/service/handler/ISubscribeCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/service/handler/ISubscribeCompletionHandler$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lmiui/upnp/service/handler/ISubscribeCompletionHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 92
    iget-object v0, p0, Lmiui/upnp/service/handler/ISubscribeCompletionHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "miui.upnp.service.handler.ISubscribeCompletionHandler"

    return-object v0
.end method

.method public onFailed(Lmiui/upnp/typedef/error/UpnpError;)V
    .locals 5
    .param p1, "error"    # Lmiui/upnp/typedef/error/UpnpError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "miui.upnp.service.handler.ISubscribeCompletionHandler"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 126
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {p1, v0, v2}, Lmiui/upnp/typedef/error/UpnpError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    :goto_0
    iget-object v3, p0, Lmiui/upnp/service/handler/ISubscribeCompletionHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    nop

    .line 139
    return-void

    .line 136
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onSucceed(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;)V
    .locals 5
    .param p1, "subscription"    # Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "miui.upnp.service.handler.ISubscribeCompletionHandler"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {p1, v0, v3}, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    :goto_0
    iget-object v4, p0, Lmiui/upnp/service/handler/ISubscribeCompletionHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    nop

    .line 118
    return-void

    .line 115
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
