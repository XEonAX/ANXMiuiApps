.class public Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;
.super Ljava/lang/Object;
.source "IXiaomiAccountServiceProxy.java"


# direct methods
.method public static getEncryptedUserId(Landroid/os/IBinder;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 5
    .param p0, "remote"    # Landroid/os/IBinder;
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 15
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 19
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 20
    if-eqz p1, :cond_0

    .line 21
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 27
    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {p0, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 28
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 31
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 35
    return-object v2

    .line 24
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
