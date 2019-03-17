.class public abstract Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback$Stub;
.super Landroid/os/Binder;
.source "INexAssetInstallCallback.java"

# interfaces
.implements Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nexstreaming.nexeditorsdk.service.INexAssetInstallCallback"

.field static final TRANSACTION_onInstallCompleted:I = 0x2

.field static final TRANSACTION_onInstallFailed:I = 0x3

.field static final TRANSACTION_onProgressInstall:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.nexstreaming.nexeditorsdk.service.INexAssetInstallCallback"

    invoke-virtual {p0, p0, v0}, Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback;
    .locals 2

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.nexstreaming.nexeditorsdk.service.INexAssetInstallCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback$Stub$a;

    invoke-direct {v0, p0}, Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    const-string v1, "com.nexstreaming.nexeditorsdk.service.INexAssetInstallCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v1, "com.nexstreaming.nexeditorsdk.service.INexAssetInstallCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    invoke-virtual {p0, v1, v2, v3}, Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback$Stub;->onProgressInstall(III)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    :sswitch_2
    const-string v1, "com.nexstreaming.nexeditorsdk.service.INexAssetInstallCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback$Stub;->onInstallCompleted(I)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    :sswitch_3
    const-string v1, "com.nexstreaming.nexeditorsdk.service.INexAssetInstallCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/service/INexAssetInstallCallback$Stub;->onInstallFailed(ILjava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
