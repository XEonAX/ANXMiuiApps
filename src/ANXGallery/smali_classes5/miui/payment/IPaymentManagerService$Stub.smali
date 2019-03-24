.class public abstract Lmiui/payment/IPaymentManagerService$Stub;
.super Landroid/os/Binder;
.source "IPaymentManagerService.java"

# interfaces
.implements Lmiui/payment/IPaymentManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/payment/IPaymentManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/payment/IPaymentManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.payment.IPaymentManagerService"

.field static final TRANSACTION_getMiliBalance:I = 0x6

.field static final TRANSACTION_payForOrder:I = 0x1

.field static final TRANSACTION_recharge:I = 0x5

.field static final TRANSACTION_showMiliCenter:I = 0x2

.field static final TRANSACTION_showPayRecord:I = 0x4

.field static final TRANSACTION_showRechargeRecord:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "miui.payment.IPaymentManagerService"

    invoke-virtual {p0, p0, v0}, Lmiui/payment/IPaymentManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/payment/IPaymentManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "miui.payment.IPaymentManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/payment/IPaymentManagerService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lmiui/payment/IPaymentManagerService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lmiui/payment/IPaymentManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/payment/IPaymentManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const-string v0, "miui.payment.IPaymentManagerService"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 152
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/payment/IPaymentManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/payment/IPaymentManagerResponse;

    move-result-object v3

    .line 156
    .local v3, "_arg0":Lmiui/payment/IPaymentManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .local v1, "_arg1":Landroid/accounts/Account;
    goto :goto_0

    .line 160
    .end local v1    # "_arg1":Landroid/accounts/Account;
    :cond_0
    nop

    .line 163
    .restart local v1    # "_arg1":Landroid/accounts/Account;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v3, v1, v4, v5}, Lmiui/payment/IPaymentManagerService$Stub;->getMiliBalance(Lmiui/payment/IPaymentManagerResponse;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    return v2

    .line 132
    .end local v1    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg0":Lmiui/payment/IPaymentManagerResponse;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/payment/IPaymentManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/payment/IPaymentManagerResponse;

    move-result-object v3

    .line 136
    .restart local v3    # "_arg0":Lmiui/payment/IPaymentManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .restart local v1    # "_arg1":Landroid/accounts/Account;
    goto :goto_1

    .line 140
    .end local v1    # "_arg1":Landroid/accounts/Account;
    :cond_1
    nop

    .line 143
    .restart local v1    # "_arg1":Landroid/accounts/Account;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 146
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v3, v1, v4, v5}, Lmiui/payment/IPaymentManagerService$Stub;->recharge(Lmiui/payment/IPaymentManagerResponse;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    return v2

    .line 112
    .end local v1    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg0":Lmiui/payment/IPaymentManagerResponse;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/payment/IPaymentManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/payment/IPaymentManagerResponse;

    move-result-object v3

    .line 116
    .restart local v3    # "_arg0":Lmiui/payment/IPaymentManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .restart local v1    # "_arg1":Landroid/accounts/Account;
    goto :goto_2

    .line 120
    .end local v1    # "_arg1":Landroid/accounts/Account;
    :cond_2
    nop

    .line 123
    .restart local v1    # "_arg1":Landroid/accounts/Account;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 126
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v3, v1, v4, v5}, Lmiui/payment/IPaymentManagerService$Stub;->showPayRecord(Lmiui/payment/IPaymentManagerResponse;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    return v2

    .line 92
    .end local v1    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg0":Lmiui/payment/IPaymentManagerResponse;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/payment/IPaymentManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/payment/IPaymentManagerResponse;

    move-result-object v3

    .line 96
    .restart local v3    # "_arg0":Lmiui/payment/IPaymentManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .restart local v1    # "_arg1":Landroid/accounts/Account;
    goto :goto_3

    .line 100
    .end local v1    # "_arg1":Landroid/accounts/Account;
    :cond_3
    nop

    .line 103
    .restart local v1    # "_arg1":Landroid/accounts/Account;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 105
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .restart local v5    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v3, v1, v4, v5}, Lmiui/payment/IPaymentManagerService$Stub;->showRechargeRecord(Lmiui/payment/IPaymentManagerResponse;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    return v2

    .line 76
    .end local v1    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg0":Lmiui/payment/IPaymentManagerResponse;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/payment/IPaymentManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/payment/IPaymentManagerResponse;

    move-result-object v3

    .line 80
    .restart local v3    # "_arg0":Lmiui/payment/IPaymentManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 81
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .restart local v1    # "_arg1":Landroid/accounts/Account;
    goto :goto_4

    .line 84
    .end local v1    # "_arg1":Landroid/accounts/Account;
    :cond_4
    nop

    .line 86
    .restart local v1    # "_arg1":Landroid/accounts/Account;
    :goto_4
    invoke-virtual {p0, v3, v1}, Lmiui/payment/IPaymentManagerService$Stub;->showMiliCenter(Lmiui/payment/IPaymentManagerResponse;Landroid/accounts/Account;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    return v2

    .line 51
    .end local v1    # "_arg1":Landroid/accounts/Account;
    .end local v3    # "_arg0":Lmiui/payment/IPaymentManagerResponse;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/payment/IPaymentManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/payment/IPaymentManagerResponse;

    move-result-object v3

    .line 55
    .restart local v3    # "_arg0":Lmiui/payment/IPaymentManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 56
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    .local v4, "_arg1":Landroid/accounts/Account;
    goto :goto_5

    .line 59
    .end local v4    # "_arg1":Landroid/accounts/Account;
    :cond_5
    move-object v4, v1

    .line 62
    .restart local v4    # "_arg1":Landroid/accounts/Account;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 65
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg3":Landroid/os/Bundle;
    goto :goto_6

    .line 68
    .end local v1    # "_arg3":Landroid/os/Bundle;
    :cond_6
    nop

    .line 70
    .restart local v1    # "_arg3":Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v3, v4, v5, v1}, Lmiui/payment/IPaymentManagerService$Stub;->payForOrder(Lmiui/payment/IPaymentManagerResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v2

    .line 46
    .end local v1    # "_arg3":Landroid/os/Bundle;
    .end local v3    # "_arg0":Lmiui/payment/IPaymentManagerResponse;
    .end local v4    # "_arg1":Landroid/accounts/Account;
    .end local v5    # "_arg2":Ljava/lang/String;
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
