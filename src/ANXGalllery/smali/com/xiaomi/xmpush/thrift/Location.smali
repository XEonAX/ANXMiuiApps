.class public Lcom/xiaomi/xmpush/thrift/Location;
.super Ljava/lang/Object;
.source "Location.java"

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
        "Lcom/xiaomi/xmpush/thrift/Location;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final LATITUDE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final LONGITUDE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public latitude:D

.field public longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "Location"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Location;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Location;->LONGITUDE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Location;->LATITUDE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->__isset_bit_vector:Ljava/util/BitSet;

    .line 46
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/Location;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/Location;

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
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

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    const/4 v0, 0x0

    .line 172
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 174
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/Location;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->isSetLongitude()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Location;->isSetLongitude()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 175
    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->isSetLongitude()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    .line 180
    if-nez v0, :cond_0

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->isSetLatitude()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Location;->isSetLatitude()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 185
    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->isSetLatitude()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(DD)I

    move-result v0

    .line 190
    if-nez v0, :cond_0

    .line 194
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/xiaomi/xmpush/thrift/Location;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/Location;->compareTo(Lcom/xiaomi/xmpush/thrift/Location;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/Location;)Z
    .locals 10
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/Location;

    .prologue
    const/4 v4, 0x0

    .line 137
    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v4

    .line 140
    :cond_1
    const/4 v3, 0x1

    .line 141
    .local v3, "this_present_longitude":Z
    const/4 v1, 0x1

    .line 142
    .local v1, "that_present_longitude":Z
    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    .line 143
    :cond_2
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 145
    iget-wide v6, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    iget-wide v8, p1, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    cmpl-double v5, v6, v8

    if-nez v5, :cond_0

    .line 149
    :cond_3
    const/4 v2, 0x1

    .line 150
    .local v2, "this_present_latitude":Z
    const/4 v0, 0x1

    .line 151
    .local v0, "that_present_latitude":Z
    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    .line 152
    :cond_4
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 154
    iget-wide v6, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    iget-wide v8, p1, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    cmpl-double v5, v6, v8

    if-nez v5, :cond_0

    .line 158
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 129
    if-nez p1, :cond_1

    .line 133
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 131
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/Location;

    if-eqz v1, :cond_0

    .line 132
    check-cast p1, Lcom/xiaomi/xmpush/thrift/Location;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/Location;->equals(Lcom/xiaomi/xmpush/thrift/Location;)Z

    move-result v0

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public isSetLatitude()Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetLongitude()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 6
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 199
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 202
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 203
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 231
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->isSetLongitude()Z

    move-result v1

    if-nez v1, :cond_3

    .line 232
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'longitude\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 224
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 226
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 208
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_1

    .line 209
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    .line 210
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/Location;->setLongitudeIsSet(Z)V

    goto :goto_1

    .line 212
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 216
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_2

    .line 217
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    .line 218
    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/Location;->setLatitudeIsSet(Z)V

    goto :goto_1

    .line 220
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 234
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->isSetLatitude()Z

    move-result v1

    if-nez v1, :cond_4

    .line 235
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'latitude\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->validate()V

    .line 238
    return-void

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLatitude(D)Lcom/xiaomi/xmpush/thrift/Location;
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/Location;->setLatitudeIsSet(Z)V

    .line 111
    return-object p0
.end method

.method public setLatitudeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 125
    return-void
.end method

.method public setLongitude(D)Lcom/xiaomi/xmpush/thrift/Location;
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/Location;->setLongitudeIsSet(Z)V

    .line 88
    return-object p0
.end method

.method public setLongitudeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Location("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 259
    .local v0, "first":Z
    const-string v2, "longitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 261
    const/4 v0, 0x0

    .line 262
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    const-string v2, "latitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 265
    const/4 v0, 0x0

    .line 266
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 274
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
    .line 241
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Location;->validate()V

    .line 243
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Location;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 244
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Location;->LONGITUDE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 245
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->longitude:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeDouble(D)V

    .line 246
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 247
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Location;->LATITUDE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 248
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/Location;->latitude:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeDouble(D)V

    .line 249
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 250
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 251
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 252
    return-void
.end method
