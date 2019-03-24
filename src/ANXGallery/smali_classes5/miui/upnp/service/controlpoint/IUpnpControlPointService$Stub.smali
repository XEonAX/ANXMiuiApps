.class public abstract Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;
.super Landroid/os/Binder;
.source "IUpnpControlPointService.java"

# interfaces
.implements Lmiui/upnp/service/controlpoint/IUpnpControlPointService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/service/controlpoint/IUpnpControlPointService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.upnp.service.controlpoint.IUpnpControlPointService"

.field static final TRANSACTION_invoke:I = 0x5

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_startScan:I = 0x3

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_stopScan:I = 0x4

.field static final TRANSACTION_subscribe:I = 0x6

.field static final TRANSACTION_unsubscribe:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "miui.upnp.service.controlpoint.IUpnpControlPointService"

    invoke-virtual {p0, p0, v0}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/controlpoint/IUpnpControlPointService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "miui.upnp.service.controlpoint.IUpnpControlPointService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lmiui/upnp/service/controlpoint/IUpnpControlPointService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const-string v0, "miui.upnp.service.controlpoint.IUpnpControlPointService"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 121
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;

    .local v1, "_arg0":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    goto :goto_0

    .line 127
    .end local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    :cond_0
    nop

    .line 130
    .restart local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/ICompletionHandler;

    move-result-object v3

    .line 131
    .local v3, "_arg1":Lmiui/upnp/service/handler/ICompletionHandler;
    invoke-virtual {p0, v1, v3}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->unsubscribe(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;Lmiui/upnp/service/handler/ICompletionHandler;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    return v2

    .line 103
    .end local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    .end local v3    # "_arg1":Lmiui/upnp/service/handler/ICompletionHandler;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    sget-object v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;

    .restart local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    goto :goto_1

    .line 109
    .end local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    :cond_1
    nop

    .line 112
    .restart local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/service/handler/ISubscribeCompletionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/ISubscribeCompletionHandler;

    move-result-object v3

    .line 114
    .local v3, "_arg1":Lmiui/upnp/service/handler/ISubscribeCompletionHandler;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/upnp/service/handler/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/IEventListener;

    move-result-object v4

    .line 115
    .local v4, "_arg2":Lmiui/upnp/service/handler/IEventListener;
    invoke-virtual {p0, v1, v3, v4}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->subscribe(Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;Lmiui/upnp/service/handler/ISubscribeCompletionHandler;Lmiui/upnp/service/handler/IEventListener;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    return v2

    .line 87
    .end local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/SubscriptionInfo;
    .end local v3    # "_arg1":Lmiui/upnp/service/handler/ISubscribeCompletionHandler;
    .end local v4    # "_arg2":Lmiui/upnp/service/handler/IEventListener;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    sget-object v1, Lmiui/upnp/typedef/device/invocation/ActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/device/invocation/ActionInfo;

    .local v1, "_arg0":Lmiui/upnp/typedef/device/invocation/ActionInfo;
    goto :goto_2

    .line 93
    .end local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/ActionInfo;
    :cond_2
    nop

    .line 96
    .restart local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/ActionInfo;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/service/handler/IInvokeCompletionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/IInvokeCompletionHandler;

    move-result-object v3

    .line 97
    .local v3, "_arg1":Lmiui/upnp/service/handler/IInvokeCompletionHandler;
    invoke-virtual {p0, v1, v3}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->invoke(Lmiui/upnp/typedef/device/invocation/ActionInfo;Lmiui/upnp/service/handler/IInvokeCompletionHandler;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    return v2

    .line 78
    .end local v1    # "_arg0":Lmiui/upnp/typedef/device/invocation/ActionInfo;
    .end local v3    # "_arg1":Lmiui/upnp/service/handler/IInvokeCompletionHandler;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/ICompletionHandler;

    move-result-object v1

    .line 81
    .local v1, "_arg0":Lmiui/upnp/service/handler/ICompletionHandler;
    invoke-virtual {p0, v1}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->stopScan(Lmiui/upnp/service/handler/ICompletionHandler;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v2

    .line 65
    .end local v1    # "_arg0":Lmiui/upnp/service/handler/ICompletionHandler;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    sget-object v1, Lmiui/upnp/typedef/device/urn/Urn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 69
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lmiui/upnp/typedef/device/urn/Urn;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/upnp/service/handler/ICompletionHandler$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/ICompletionHandler;

    move-result-object v3

    .line 71
    .local v3, "_arg1":Lmiui/upnp/service/handler/ICompletionHandler;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/upnp/service/handler/IScanListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/upnp/service/handler/IScanListener;

    move-result-object v4

    .line 72
    .local v4, "_arg2":Lmiui/upnp/service/handler/IScanListener;
    invoke-virtual {p0, v1, v3, v4}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->startScan(Ljava/util/List;Lmiui/upnp/service/handler/ICompletionHandler;Lmiui/upnp/service/handler/IScanListener;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    return v2

    .line 58
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lmiui/upnp/typedef/device/urn/Urn;>;"
    .end local v3    # "_arg1":Lmiui/upnp/service/handler/ICompletionHandler;
    .end local v4    # "_arg2":Lmiui/upnp/service/handler/IScanListener;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->stop()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v2

    .line 51
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lmiui/upnp/service/controlpoint/IUpnpControlPointService$Stub;->start()V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v2

    .line 46
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
