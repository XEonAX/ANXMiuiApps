.class public abstract Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub;
.super Landroid/os/Binder;
.source "IInvokeCompletionHandler.java"

# interfaces
.implements Lmiui/upnp/service/handler/IInvokeCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/service/handler/IInvokeCompletionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.upnp.service.handler.IInvokeCompletionHandler"

.field static final TRANSACTION_onFailed:I = 0x2

.field static final TRANSACTION_onSucceed:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "miui.upnp.service.handler.IInvokeCompletionHandler"

    invoke-virtual {p0, p0, v0}, Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/IInvokeCompletionHandler;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "miui.upnp.service.handler.IInvokeCompletionHandler"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/upnp/service/handler/IInvokeCompletionHandler;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lmiui/upnp/service/handler/IInvokeCompletionHandler;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const-string v0, "miui.upnp.service.handler.IInvokeCompletionHandler"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    sget-object v1, Lmiui/upnp/typedef/error/UpnpError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/error/UpnpError;

    .local v1, "_arg0":Lmiui/upnp/typedef/error/UpnpError;
    goto :goto_0

    .line 71
    .end local v1    # "_arg0":Lmiui/upnp/typedef/error/UpnpError;
    :cond_0
    nop

    .line 73
    .restart local v1    # "_arg0":Lmiui/upnp/typedef/error/UpnpError;
    :goto_0
    invoke-virtual {p0, v1}, Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub;->onFailed(Lmiui/upnp/typedef/error/UpnpError;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v2

    .line 51
    .end local v1    # "_arg0":Lmiui/upnp/typedef/error/UpnpError;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/invocation/ActionInfo;

    .local v1, "_arg0":Lmiui/upnp/typedef/device/invocation/ActionInfo;
    goto :goto_1

    .line 57
    .end local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/ActionInfo;
    :cond_1
    nop

    .line 59
    .restart local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/ActionInfo;
    :goto_1
    invoke-virtual {p0, v1}, Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub;->onSucceed(Lmiui/upnp/typedef/device/invocation/ActionInfo;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v2

    .line 46
    .end local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/ActionInfo;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
