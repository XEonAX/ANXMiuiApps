.class public Lcom/xiaomi/xmpush/thrift/Wifi;
.super Ljava/lang/Object;
.source "Wifi.java"

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
        "Lcom/xiaomi/xmpush/thrift/Wifi;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAC_ADDRESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final SIGNAL_STRENGTH_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final SSID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public macAddress:Ljava/lang/String;

.field public signalStrength:I

.field public ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "Wifi"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Wifi;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Wifi;->MAC_ADDRESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Wifi;->SIGNAL_STRENGTH_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/Wifi;->SSID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->__isset_bit_vector:Ljava/util/BitSet;

    .line 47
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/Wifi;)I
    .locals 4
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/Wifi;

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
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

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    const/4 v0, 0x0

    .line 211
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 213
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/Wifi;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetMacAddress()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetMacAddress()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 214
    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetMacAddress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->macAddress:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/Wifi;->macAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 219
    if-nez v0, :cond_0

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetSignalStrength()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetSignalStrength()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 224
    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 228
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->signalStrength:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/Wifi;->signalStrength:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 233
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetSsid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetSsid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 234
    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetSsid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/Wifi;->ssid:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 239
    if-nez v0, :cond_0

    .line 243
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/xiaomi/xmpush/thrift/Wifi;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/Wifi;->compareTo(Lcom/xiaomi/xmpush/thrift/Wifi;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/Wifi;)Z
    .locals 9
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/Wifi;

    .prologue
    const/4 v6, 0x0

    .line 167
    if-nez p1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v6

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetMacAddress()Z

    move-result v3

    .line 171
    .local v3, "this_present_macAddress":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetMacAddress()Z

    move-result v0

    .line 172
    .local v0, "that_present_macAddress":Z
    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 173
    :cond_2
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 175
    iget-object v7, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->macAddress:Ljava/lang/String;

    iget-object v8, p1, Lcom/xiaomi/xmpush/thrift/Wifi;->macAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 179
    :cond_3
    const/4 v4, 0x1

    .line 180
    .local v4, "this_present_signalStrength":Z
    const/4 v1, 0x1

    .line 181
    .local v1, "that_present_signalStrength":Z
    if-nez v4, :cond_4

    if-eqz v1, :cond_5

    .line 182
    :cond_4
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 184
    iget v7, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->signalStrength:I

    iget v8, p1, Lcom/xiaomi/xmpush/thrift/Wifi;->signalStrength:I

    if-ne v7, v8, :cond_0

    .line 188
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetSsid()Z

    move-result v5

    .line 189
    .local v5, "this_present_ssid":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetSsid()Z

    move-result v2

    .line 190
    .local v2, "that_present_ssid":Z
    if-nez v5, :cond_6

    if-eqz v2, :cond_7

    .line 191
    :cond_6
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 193
    iget-object v7, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->ssid:Ljava/lang/String;

    iget-object v8, p1, Lcom/xiaomi/xmpush/thrift/Wifi;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 197
    :cond_7
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 159
    if-nez p1, :cond_1

    .line 163
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 161
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/Wifi;

    if-eqz v1, :cond_0

    .line 162
    check-cast p1, Lcom/xiaomi/xmpush/thrift/Wifi;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/Wifi;->equals(Lcom/xiaomi/xmpush/thrift/Wifi;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public isSetMacAddress()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->macAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetSignalStrength()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetSsid()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 4
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xb

    .line 248
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 251
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 252
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 283
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 286
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetSignalStrength()Z

    move-result v1

    if-nez v1, :cond_4

    .line 287
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'signalStrength\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 279
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 281
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 257
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_1

    .line 258
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->macAddress:Ljava/lang/String;

    goto :goto_1

    .line 260
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 264
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 265
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->signalStrength:I

    .line 266
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/xmpush/thrift/Wifi;->setSignalStrengthIsSet(Z)V

    goto :goto_1

    .line 268
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 272
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_3

    .line 273
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->ssid:Ljava/lang/String;

    goto :goto_1

    .line 275
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 289
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->validate()V

    .line 290
    return-void

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMacAddress(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/Wifi;
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->macAddress:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public setSignalStrength(I)Lcom/xiaomi/xmpush/thrift/Wifi;
    .locals 1
    .param p1, "signalStrength"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->signalStrength:I

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/Wifi;->setSignalStrengthIsSet(Z)V

    .line 117
    return-object p0
.end method

.method public setSignalStrengthIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 131
    return-void
.end method

.method public setSsid(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/Wifi;
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->ssid:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wifi("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 320
    .local v0, "first":Z
    const-string v2, "macAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->macAddress:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 322
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :goto_0
    const/4 v0, 0x0

    .line 327
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_0
    const-string/jumbo v2, "signalStrength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->signalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetSsid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_1
    const-string/jumbo v2, "ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->ssid:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 335
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :goto_1
    const/4 v0, 0x0

    .line 341
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 324
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 337
    :cond_4
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->ssid:Ljava/lang/String;

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
    .line 347
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->macAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'macAddress\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 1
    .param p1, "oprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->validate()V

    .line 295
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Wifi;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 296
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->macAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Wifi;->MAC_ADDRESS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 298
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 301
    :cond_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Wifi;->SIGNAL_STRENGTH_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 302
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->signalStrength:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 303
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 304
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/Wifi;->isSetSsid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    sget-object v0, Lcom/xiaomi/xmpush/thrift/Wifi;->SSID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 307
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/Wifi;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 311
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 312
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 313
    return-void
.end method
