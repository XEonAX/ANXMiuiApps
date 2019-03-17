.class public abstract Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub;
.super Landroid/os/Binder;
.source "IGeoFencing.java"

# interfaces
.implements Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;
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
    const-string v1, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 158
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 51
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub;->setLocationListener(Ljava/util/List;Ljava/lang/String;)V

    .line 53
    const/4 v3, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub;->unsetLocationListener(Ljava/lang/String;)V

    .line 61
    const/4 v3, 0x1

    goto :goto_0

    .line 65
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub;->getDeviceLocation()Ljava/lang/String;

    move-result-object v14

    .line 67
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    const/4 v3, 0x1

    goto :goto_0

    .line 73
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub;->getLocationSsids(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 77
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 79
    const/4 v3, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v3, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub;->getVersion()I

    move-result v14

    .line 85
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v3, 0x1

    goto :goto_0

    .line 91
    .end local v14    # "_result":I
    :sswitch_6
    const-string v3, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 95
    .local v4, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 97
    .local v6, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 99
    .local v8, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 101
    .local v9, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 105
    .local v12, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, "_arg6":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 106
    invoke-virtual/range {v3 .. v13}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub;->registerFenceListener(DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 111
    .end local v4    # "_arg0":D
    .end local v6    # "_arg1":D
    .end local v8    # "_arg2":F
    .end local v9    # "_arg3":J
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":Ljava/lang/String;
    :sswitch_7
    const-string v3, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 115
    .restart local v4    # "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 117
    .restart local v6    # "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 119
    .restart local v8    # "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 121
    .restart local v9    # "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .line 128
    .local v11, "_arg4":Landroid/app/PendingIntent;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 130
    .restart local v12    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "_arg6":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 131
    invoke-virtual/range {v3 .. v13}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub;->registerFenceListenerByIntent(DDFJLandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 125
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v13    # "_arg6":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_1

    .line 136
    .end local v4    # "_arg0":D
    .end local v6    # "_arg1":D
    .end local v8    # "_arg2":F
    .end local v9    # "_arg3":J
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    :sswitch_8
    const-string v3, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub;->unregisterFenceListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 146
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string v3, "com.xiaomi.metoknlp.geofencing.IGeoFencing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 154
    .local v4, "_arg0":Landroid/app/PendingIntent;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub;->unregisterFenceListenerByIntent(Landroid/app/PendingIntent;)V

    .line 155
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 152
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_2

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
