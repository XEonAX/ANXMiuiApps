.class public abstract Lcom/miui/analytics/ICore$Stub;
.super Landroid/os/Binder;
.source "ICore.java"

# interfaces
.implements Lcom/miui/analytics/ICore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/ICore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/analytics/ICore$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.analytics.ICore"

.field static final TRANSACTION_deleteAllEvents:I = 0x9

.field static final TRANSACTION_getClientExtra:I = 0x3

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_getVersionName:I = 0x2

.field static final TRANSACTION_isPolicyReady:I = 0x8

.field static final TRANSACTION_setDebugOn:I = 0x4

.field static final TRANSACTION_setDefaultPolicy:I = 0x7

.field static final TRANSACTION_trackEvent:I = 0x5

.field static final TRANSACTION_trackEvents:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.analytics.ICore"

    invoke-virtual {p0, p0, v0}, Lcom/miui/analytics/ICore$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ICore;
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
    const-string v1, "com.miui.analytics.ICore"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/analytics/ICore;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/analytics/ICore;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/analytics/ICore$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/analytics/ICore$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.miui.analytics.ICore"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.miui.analytics.ICore"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/analytics/ICore$Stub;->getVersion()I

    move-result v2

    .line 49
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v2    # "_result":I
    :sswitch_2
    const-string v4, "com.miui.analytics.ICore"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/miui/analytics/ICore$Stub;->getVersionName()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v4, "com.miui.analytics.ICore"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/miui/analytics/ICore$Stub;->getClientExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.miui.analytics.ICore"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 78
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/analytics/ICore$Stub;->setDebugOn(Z)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_0
    move v0, v4

    .line 77
    goto :goto_1

    .line 84
    :sswitch_5
    const-string v4, "com.miui.analytics.ICore"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/analytics/ICore$Stub;->trackEvent(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v4, "com.miui.analytics.ICore"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/analytics/ICore$Stub;->trackEvents([Ljava/lang/String;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    .end local v0    # "_arg0":[Ljava/lang/String;
    :sswitch_7
    const-string v4, "com.miui.analytics.ICore"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/miui/analytics/ICore$Stub;->setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_8
    const-string v5, "com.miui.analytics.ICore"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/miui/analytics/ICore$Stub;->isPolicyReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 119
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v2, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_9
    const-string v4, "com.miui.analytics.ICore"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/analytics/ICore$Stub;->deleteAllEvents(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
