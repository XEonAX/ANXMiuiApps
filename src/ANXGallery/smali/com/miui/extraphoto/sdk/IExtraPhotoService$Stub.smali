.class public abstract Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub;
.super Landroid/os/Binder;
.source "IExtraPhotoService.java"

# interfaces
.implements Lcom/miui/extraphoto/sdk/IExtraPhotoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/sdk/IExtraPhotoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/extraphoto/sdk/IExtraPhotoService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.miui.extraphoto.sdk.IExtraPhotoService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/extraphoto/sdk/IExtraPhotoService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.miui.extraphoto.sdk.IExtraPhotoService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.miui.extraphoto.sdk.IExtraPhotoService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub;->isExtraCamera()Z

    move-result v3

    .line 49
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v3    # "_result":Z
    :sswitch_2
    const-string v7, "com.miui.extraphoto.sdk.IExtraPhotoService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub;->isExtraPhoto(Ljava/lang/String;)Z

    move-result v3

    .line 59
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_3
    const-string v5, "com.miui.extraphoto.sdk.IExtraPhotoService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub;->resolveExtraFuncs()Ljava/util/List;

    move-result-object v4

    .line 67
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/extraphoto/sdk/ExtraFunc;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 73
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/extraphoto/sdk/ExtraFunc;>;"
    :sswitch_4
    const-string v7, "com.miui.extraphoto.sdk.IExtraPhotoService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub;->needEcho(Ljava/lang/String;)Z

    move-result v3

    .line 77
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_5
    const-string v7, "com.miui.extraphoto.sdk.IExtraPhotoService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/extraphoto/sdk/IEchoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/extraphoto/sdk/IEchoListener;

    move-result-object v1

    .line 89
    .local v1, "_arg1":Lcom/miui/extraphoto/sdk/IEchoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v2, v6

    .line 90
    .local v2, "_arg2":Z
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub;->echo(Ljava/lang/String;Lcom/miui/extraphoto/sdk/IEchoListener;Z)Z

    move-result v3

    .line 91
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :cond_4
    move v2, v5

    .line 89
    goto :goto_1

    .line 97
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/miui/extraphoto/sdk/IEchoListener;
    :sswitch_6
    const-string v5, "com.miui.extraphoto.sdk.IExtraPhotoService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/extraphoto/sdk/IEchoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/extraphoto/sdk/IEchoListener;

    move-result-object v0

    .line 100
    .local v0, "_arg0":Lcom/miui/extraphoto/sdk/IEchoListener;
    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub;->unregisterEchoListener(Lcom/miui/extraphoto/sdk/IEchoListener;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 106
    .end local v0    # "_arg0":Lcom/miui/extraphoto/sdk/IEchoListener;
    :sswitch_7
    const-string v5, "com.miui.extraphoto.sdk.IExtraPhotoService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub;->cancelEcho(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 115
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v5, "com.miui.extraphoto.sdk.IExtraPhotoService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub;->resumeEcho()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    :sswitch_9
    const-string v5, "com.miui.extraphoto.sdk.IExtraPhotoService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub;->pauseEcho()V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 129
    :sswitch_a
    const-string v5, "com.miui.extraphoto.sdk.IExtraPhotoService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/miui/extraphoto/sdk/IExtraPhotoService$Stub;->releaseEcho()V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
