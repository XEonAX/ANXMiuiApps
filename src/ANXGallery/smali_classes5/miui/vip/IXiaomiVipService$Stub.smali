.class public abstract Lmiui/vip/IXiaomiVipService$Stub;
.super Landroid/os/Binder;
.source "IXiaomiVipService.java"

# interfaces
.implements Lmiui/vip/IXiaomiVipService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/IXiaomiVipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/vip/IXiaomiVipService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.vip.IXiaomiVipService"

.field static final TRANSACTION_getAchievements:I = 0x4

.field static final TRANSACTION_getBanners:I = 0x5

.field static final TRANSACTION_getCurUserInfo:I = 0x1

.field static final TRANSACTION_getVipLevelByPhoneNumber:I = 0x2

.field static final TRANSACTION_isAvailable:I = 0x3

.field static final TRANSACTION_sendStatistic:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "miui.vip.IXiaomiVipService"

    invoke-virtual {p0, p0, v0}, Lmiui/vip/IXiaomiVipService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/vip/IXiaomiVipService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "miui.vip.IXiaomiVipService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/vip/IXiaomiVipService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lmiui/vip/IXiaomiVipService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lmiui/vip/IXiaomiVipService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/vip/IXiaomiVipService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
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

    .line 38
    const-string v0, "miui.vip.IXiaomiVipService"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 98
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmiui/vip/IXiaomiVipService$Stub;->sendStatistic(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v2

    .line 90
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lmiui/vip/IXiaomiVipService$Stub;->getBanners()Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipBanner;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 94
    return v2

    .line 82
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipBanner;>;"
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lmiui/vip/IXiaomiVipService$Stub;->getAchievements()Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 86
    return v2

    .line 74
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipAchievement;>;"
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lmiui/vip/IXiaomiVipService$Stub;->isAvailable()Z

    move-result v1

    .line 76
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v2

    .line 62
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lmiui/vip/IXiaomiVipService$Stub;->getVipLevelByPhoneNumber(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 68
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipPhoneLevel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 70
    return v2

    .line 48
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lmiui/vip/VipPhoneLevel;>;"
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lmiui/vip/IXiaomiVipService$Stub;->getCurUserInfo()Lmiui/vip/VipUserInfo;

    move-result-object v1

    .line 50
    .local v1, "_result":Lmiui/vip/VipUserInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {v1, p3, v2}, Lmiui/vip/VipUserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 56
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    :goto_0
    return v2

    .line 43
    .end local v1    # "_result":Lmiui/vip/VipUserInfo;
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

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
