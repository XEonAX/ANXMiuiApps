.class public abstract Lcom/xiaomi/market/IAppDownloadManager$Stub;
.super Landroid/os/Binder;
.source "IAppDownloadManager.java"

# interfaces
.implements Lcom/xiaomi/market/IAppDownloadManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/market/IAppDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/market/IAppDownloadManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/market/IAppDownloadManager;
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
    const-string v1, "com.xiaomi.market.IAppDownloadManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/market/IAppDownloadManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/xiaomi/market/IAppDownloadManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/xiaomi/market/IAppDownloadManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/xiaomi/market/IAppDownloadManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.xiaomi.market.IAppDownloadManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.xiaomi.market.IAppDownloadManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 55
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/market/IAppDownloadManager$Stub;->download(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_1

    .line 61
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string v5, "com.xiaomi.market.IAppDownloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/market/IAppDownloadManager$Stub;->cancel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 67
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_3
    const-string v5, "com.xiaomi.market.IAppDownloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/market/IAppDownloadManager$Stub;->pause(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 79
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_4
    const-string v5, "com.xiaomi.market.IAppDownloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/market/IAppDownloadManager$Stub;->resume(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 91
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
