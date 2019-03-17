.class public Lcom/xiaomi/xmpush/thrift/GPS;
.super Ljava/lang/Object;
.source "GPS.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/TBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/thrift/TBase",
        "<",
        "Lcom/xiaomi/xmpush/thrift/GPS;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCURACY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final LOCATION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PERIOD_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PROVIDER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public accuracy:D

.field public location:Lcom/xiaomi/xmpush/thrift/Location;

.field public period:J

.field public provider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "GPS"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GPS;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GPS;->LOCATION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xb

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GPS;->PROVIDER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xa

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GPS;->PERIOD_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/GPS;->ACCURACY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->__isset_bit_vector:Ljava/util/BitSet;

    .line 50
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/GPS;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/GPS;

    .prologue
    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    const/4 v0, 0x0

    .line 246
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 248
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/GPS;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetLocation()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetLocation()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 249
    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetLocation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 254
    if-nez v0, :cond_0

    .line 258
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetProvider()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetProvider()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 259
    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetProvider()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 263
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GPS;->provider:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/GPS;->provider:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 264
    if-nez v0, :cond_0

    .line 268
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetPeriod()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetPeriod()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 269
    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetPeriod()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 273
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GPS;->period:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/GPS;->period:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 274
    if-nez v0, :cond_0

    .line 278
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetAccuracy()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetAccuracy()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 279
    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetAccuracy()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 283
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GPS;->accuracy:D

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/GPS;->accuracy:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    .line 284
    if-nez v0, :cond_0

    .line 288
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/xiaomi/xmpush/thrift/GPS;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/GPS;->compareTo(Lcom/xiaomi/xmpush/thrift/GPS;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/GPS;)Z
    .locals 14
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/GPS;

    .prologue
    const/4 v8, 0x0

    .line 193
    if-nez p1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v8

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetLocation()Z

    move-result v5

    .line 197
    .local v5, "this_present_location":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetLocation()Z

    move-result v1

    .line 198
    .local v1, "that_present_location":Z
    if-nez v5, :cond_2

    if-eqz v1, :cond_3

    .line 199
    :cond_2
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 201
    iget-object v9, p0, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    iget-object v10, p1, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {v9, v10}, Lcom/xiaomi/xmpush/thrift/Location;->equals(Lcom/xiaomi/xmpush/thrift/Location;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 205
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetProvider()Z

    move-result v7

    .line 206
    .local v7, "this_present_provider":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetProvider()Z

    move-result v3

    .line 207
    .local v3, "that_present_provider":Z
    if-nez v7, :cond_4

    if-eqz v3, :cond_5

    .line 208
    :cond_4
    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 210
    iget-object v9, p0, Lcom/xiaomi/xmpush/thrift/GPS;->provider:Ljava/lang/String;

    iget-object v10, p1, Lcom/xiaomi/xmpush/thrift/GPS;->provider:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 214
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetPeriod()Z

    move-result v6

    .line 215
    .local v6, "this_present_period":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetPeriod()Z

    move-result v2

    .line 216
    .local v2, "that_present_period":Z
    if-nez v6, :cond_6

    if-eqz v2, :cond_7

    .line 217
    :cond_6
    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 219
    iget-wide v10, p0, Lcom/xiaomi/xmpush/thrift/GPS;->period:J

    iget-wide v12, p1, Lcom/xiaomi/xmpush/thrift/GPS;->period:J

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    .line 223
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetAccuracy()Z

    move-result v4

    .line 224
    .local v4, "this_present_accuracy":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetAccuracy()Z

    move-result v0

    .line 225
    .local v0, "that_present_accuracy":Z
    if-nez v4, :cond_8

    if-eqz v0, :cond_9

    .line 226
    :cond_8
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 228
    iget-wide v10, p0, Lcom/xiaomi/xmpush/thrift/GPS;->accuracy:D

    iget-wide v12, p1, Lcom/xiaomi/xmpush/thrift/GPS;->accuracy:D

    cmpl-double v9, v10, v12

    if-nez v9, :cond_0

    .line 232
    :cond_9
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 185
    if-nez p1, :cond_1

    .line 189
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 187
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/GPS;

    if-eqz v1, :cond_0

    .line 188
    check-cast p1, Lcom/xiaomi/xmpush/thrift/GPS;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/GPS;->equals(Lcom/xiaomi/xmpush/thrift/GPS;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public isSetAccuracy()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetLocation()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPeriod()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetProvider()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->provider:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 5
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 293
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 296
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 297
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 337
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 340
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->validate()V

    .line 341
    return-void

    .line 300
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 333
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 335
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 302
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 303
    new-instance v1, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/Location;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    .line 304
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/Location;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_1

    .line 306
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 310
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 311
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/GPS;->provider:Ljava/lang/String;

    goto :goto_1

    .line 313
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 317
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 318
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GPS;->period:J

    .line 319
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/GPS;->setPeriodIsSet(Z)V

    goto :goto_1

    .line 321
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 325
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 326
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GPS;->accuracy:D

    .line 327
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/GPS;->setAccuracyIsSet(Z)V

    goto :goto_1

    .line 329
    :cond_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAccuracy(D)Lcom/xiaomi/xmpush/thrift/GPS;
    .locals 1
    .param p1, "accuracy"    # D

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/GPS;->accuracy:D

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/GPS;->setAccuracyIsSet(Z)V

    .line 167
    return-object p0
.end method

.method public setAccuracyIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 181
    return-void
.end method

.method public setLocation(Lcom/xiaomi/xmpush/thrift/Location;)Lcom/xiaomi/xmpush/thrift/GPS;
    .locals 0
    .param p1, "location"    # Lcom/xiaomi/xmpush/thrift/Location;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    .line 95
    return-object p0
.end method

.method public setPeriod(J)Lcom/xiaomi/xmpush/thrift/GPS;
    .locals 1
    .param p1, "period"    # J

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/GPS;->period:J

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/GPS;->setPeriodIsSet(Z)V

    .line 144
    return-object p0
.end method

.method public setPeriodIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 158
    return-void
.end method

.method public setProvider(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/GPS;
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/GPS;->provider:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GPS("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 378
    .local v0, "first":Z
    const-string v2, "location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    if-nez v2, :cond_6

    .line 380
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :goto_0
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetProvider()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_0
    const-string v2, "provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GPS;->provider:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 389
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :goto_1
    const/4 v0, 0x0

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetPeriod()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 396
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_2
    const-string v2, "period:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GPS;->period:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 399
    const/4 v0, 0x0

    .line 401
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetAccuracy()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 402
    if-nez v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_4
    const-string v2, "accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/GPS;->accuracy:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 405
    const/4 v0, 0x0

    .line 407
    :cond_5
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 382
    :cond_6
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 391
    :cond_7
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/GPS;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'location\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_0
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 2
    .param p1, "oprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->validate()V

    .line 346
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GPS;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 347
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GPS;->LOCATION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 349
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->location:Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/Location;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 350
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->provider:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetProvider()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GPS;->PROVIDER_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 355
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetPeriod()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GPS;->PERIOD_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 361
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->period:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 362
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 364
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/GPS;->isSetAccuracy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    sget-object v0, Lcom/xiaomi/xmpush/thrift/GPS;->ACCURACY_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 366
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/GPS;->accuracy:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeDouble(D)V

    .line 367
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 369
    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 370
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 371
    return-void
.end method
