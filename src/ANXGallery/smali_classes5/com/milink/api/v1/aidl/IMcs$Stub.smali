.class public abstract Lcom/milink/api/v1/aidl/IMcs$Stub;
.super Landroid/os/Binder;
.source "IMcs.java"

# interfaces
.implements Lcom/milink/api/v1/aidl/IMcs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/api/v1/aidl/IMcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.milink.api.v1.aidl.IMcs"

.field static final TRANSACTION_connect:I = 0x8

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_getPlaybackDuration:I = 0x17

.field static final TRANSACTION_getPlaybackProgress:I = 0x16

.field static final TRANSACTION_getPlaybackRate:I = 0x14

.field static final TRANSACTION_getVolume:I = 0x19

.field static final TRANSACTION_rotatePhoto:I = 0x1a

.field static final TRANSACTION_setDataSource:I = 0x3

.field static final TRANSACTION_setDelegate:I = 0x5

.field static final TRANSACTION_setDeviceListener:I = 0x1

.field static final TRANSACTION_setDeviceName:I = 0x7

.field static final TRANSACTION_setPlaybackProgress:I = 0x15

.field static final TRANSACTION_setPlaybackRate:I = 0x13

.field static final TRANSACTION_setVolume:I = 0x18

.field static final TRANSACTION_show:I = 0xb

.field static final TRANSACTION_startPlayAudio:I = 0x11

.field static final TRANSACTION_startPlayAudioEx:I = 0x1c

.field static final TRANSACTION_startPlayVideo:I = 0x10

.field static final TRANSACTION_startPlayVideoEx:I = 0x1b

.field static final TRANSACTION_startShow:I = 0xa

.field static final TRANSACTION_startSlideshow:I = 0xe

.field static final TRANSACTION_stopPlay:I = 0x12

.field static final TRANSACTION_stopShow:I = 0xd

.field static final TRANSACTION_stopSlideshow:I = 0xf

.field static final TRANSACTION_unsetDataSource:I = 0x4

.field static final TRANSACTION_unsetDelegate:I = 0x6

.field static final TRANSACTION_unsetDeviceListener:I = 0x2

.field static final TRANSACTION_zoomPhoto:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p0, p0, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcs;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.milink.api.v1.aidl.IMcs"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/milink/api/v1/aidl/IMcs;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/milink/api/v1/aidl/IMcs;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 38
    const-string v13, "com.milink.api.v1.aidl.IMcs"

    .line 39
    .local v13, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v10, v0, :cond_2

    const/4 v0, 0x0

    packed-switch v10, :pswitch_data_0

    .line 353
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 335
    :pswitch_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 339
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 341
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 343
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 345
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 346
    .local v17, "_arg4":D
    move-object v0, v9

    move-object v1, v7

    move-object v2, v8

    move-object v3, v15

    move/from16 v4, v16

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startPlayAudioEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v0

    .line 347
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    return v14

    .line 317
    .end local v0    # "_result":I
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":D
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 321
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 323
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 325
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 327
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 328
    .restart local v17    # "_arg4":D
    move-object v0, v9

    move-object v1, v7

    move-object v2, v8

    move-object v3, v15

    move/from16 v4, v16

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startPlayVideoEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v0

    .line 329
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    return v14

    .line 303
    .end local v0    # "_result":I
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":D
    :pswitch_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v14

    nop

    .line 309
    .local v0, "_arg1":Z
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 310
    .local v2, "_arg2":F
    invoke-virtual {v9, v1, v0, v2}, Lcom/milink/api/v1/aidl/IMcs$Stub;->rotatePhoto(Ljava/lang/String;ZF)I

    move-result v3

    .line 311
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    return v14

    .line 295
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":F
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->getVolume()I

    move-result v0

    .line 297
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    return v14

    .line 285
    .end local v0    # "_result":I
    :pswitch_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setVolume(I)I

    move-result v1

    .line 289
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    return v14

    .line 277
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->getPlaybackDuration()I

    move-result v0

    .line 279
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    return v14

    .line 269
    .end local v0    # "_result":I
    :pswitch_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->getPlaybackProgress()I

    move-result v0

    .line 271
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    return v14

    .line 259
    .end local v0    # "_result":I
    :pswitch_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setPlaybackProgress(I)I

    move-result v1

    .line 263
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    return v14

    .line 251
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->getPlaybackRate()I

    move-result v0

    .line 253
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    return v14

    .line 241
    .end local v0    # "_result":I
    :pswitch_9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 244
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setPlaybackRate(I)I

    move-result v1

    .line 245
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    return v14

    .line 233
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->stopPlay()I

    move-result v0

    .line 235
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    return v14

    .line 217
    .end local v0    # "_result":I
    :pswitch_b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 225
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v15

    .line 226
    .local v15, "_arg3":D
    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startPlayAudio(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v0

    .line 227
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    return v14

    .line 201
    .end local v0    # "_result":I
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":D
    :pswitch_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 205
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 207
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 209
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v15

    .line 210
    .restart local v15    # "_arg3":D
    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startPlayVideo(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result v0

    .line 211
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    return v14

    .line 193
    .end local v0    # "_result":I
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":D
    :pswitch_d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->stopSlideshow()I

    move-result v0

    .line 195
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    return v14

    .line 181
    .end local v0    # "_result":I
    :pswitch_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v14

    nop

    .line 186
    .local v0, "_arg1":Z
    :cond_1
    invoke-virtual {v9, v1, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startSlideshow(IZ)I

    move-result v2

    .line 187
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return v14

    .line 173
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->stopShow()I

    move-result v0

    .line 175
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    return v14

    .line 149
    .end local v0    # "_result":I
    :pswitch_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 153
    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 155
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 157
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 159
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 161
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 163
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 165
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    .line 166
    .local v22, "_arg7":F
    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/milink/api/v1/aidl/IMcs$Stub;->zoomPhoto(Ljava/lang/String;IIIIIIF)I

    move-result v0

    .line 167
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    return v14

    .line 139
    .end local v0    # "_result":I
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":F
    :pswitch_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->show(Ljava/lang/String;)I

    move-result v1

    .line 143
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return v14

    .line 131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_12
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->startShow()I

    move-result v0

    .line 133
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return v14

    .line 123
    .end local v0    # "_result":I
    :pswitch_13
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->disconnect()I

    move-result v0

    .line 125
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return v14

    .line 111
    .end local v0    # "_result":I
    :pswitch_14
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/milink/api/v1/aidl/IMcs$Stub;->connect(Ljava/lang/String;I)I

    move-result v2

    .line 117
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return v14

    .line 102
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_15
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setDeviceName(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    return v14

    .line 93
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDelegate;

    move-result-object v0

    .line 96
    .local v0, "_arg0":Lcom/milink/api/v1/aidl/IMcsDelegate;
    invoke-virtual {v9, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->unsetDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    return v14

    .line 84
    .end local v0    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDelegate;
    :pswitch_17
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDelegate;

    move-result-object v0

    .line 87
    .restart local v0    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDelegate;
    invoke-virtual {v9, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v14

    .line 75
    .end local v0    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDelegate;
    :pswitch_18
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDataSource;

    move-result-object v0

    .line 78
    .local v0, "_arg0":Lcom/milink/api/v1/aidl/IMcsDataSource;
    invoke-virtual {v9, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->unsetDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v14

    .line 66
    .end local v0    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDataSource;
    :pswitch_19
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDataSource;

    move-result-object v0

    .line 69
    .restart local v0    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDataSource;
    invoke-virtual {v9, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v14

    .line 57
    .end local v0    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDataSource;
    :pswitch_1a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/milink/api/v1/aidl/IMcsDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDeviceListener;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Lcom/milink/api/v1/aidl/IMcsDeviceListener;
    invoke-virtual {v9, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->unsetDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v14

    .line 48
    .end local v0    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDeviceListener;
    :pswitch_1b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/milink/api/v1/aidl/IMcsDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDeviceListener;

    move-result-object v0

    .line 51
    .restart local v0    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDeviceListener;
    invoke-virtual {v9, v0}, Lcom/milink/api/v1/aidl/IMcs$Stub;->setDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v14

    .line 43
    .end local v0    # "_arg0":Lcom/milink/api/v1/aidl/IMcsDeviceListener;
    :cond_2
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
