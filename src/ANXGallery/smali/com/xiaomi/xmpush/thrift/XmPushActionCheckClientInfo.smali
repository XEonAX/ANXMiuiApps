.class public Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;
.super Ljava/lang/Object;
.source "XmPushActionCheckClientInfo.java"

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
        "Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final MISC_CONFIG_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PLUGIN_CONFIG_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public miscConfigVersion:I

.field public pluginConfigVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "XmPushActionCheckClientInfo"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->MISC_CONFIG_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->PLUGIN_CONFIG_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->__isset_bit_vector:Ljava/util/BitSet;

    .line 42
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;)I
    .locals 4
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
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

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    const/4 v0, 0x0

    .line 168
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 170
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->isSetMiscConfigVersion()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->isSetMiscConfigVersion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->isSetMiscConfigVersion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->miscConfigVersion:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->miscConfigVersion:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 176
    if-nez v0, :cond_0

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->isSetPluginConfigVersion()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->isSetPluginConfigVersion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 181
    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->isSetPluginConfigVersion()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->pluginConfigVersion:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->pluginConfigVersion:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 186
    if-nez v0, :cond_0

    .line 190
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->compareTo(Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;)Z
    .locals 7
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;

    .prologue
    const/4 v4, 0x0

    .line 133
    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v4

    .line 136
    :cond_1
    const/4 v2, 0x1

    .line 137
    .local v2, "this_present_miscConfigVersion":Z
    const/4 v0, 0x1

    .line 138
    .local v0, "that_present_miscConfigVersion":Z
    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    .line 139
    :cond_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 141
    iget v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->miscConfigVersion:I

    iget v6, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->miscConfigVersion:I

    if-ne v5, v6, :cond_0

    .line 145
    :cond_3
    const/4 v3, 0x1

    .line 146
    .local v3, "this_present_pluginConfigVersion":Z
    const/4 v1, 0x1

    .line 147
    .local v1, "that_present_pluginConfigVersion":Z
    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    .line 148
    :cond_4
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 150
    iget v5, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->pluginConfigVersion:I

    iget v6, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->pluginConfigVersion:I

    if-ne v5, v6, :cond_0

    .line 154
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 125
    if-nez p1, :cond_1

    .line 129
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 127
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;

    if-eqz v1, :cond_0

    .line 128
    check-cast p1, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->equals(Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public isSetMiscConfigVersion()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetPluginConfigVersion()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
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
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 195
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 198
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 199
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 227
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->isSetMiscConfigVersion()Z

    move-result v1

    if-nez v1, :cond_3

    .line 228
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'miscConfigVersion\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 220
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 222
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 204
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_1

    .line 205
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->miscConfigVersion:I

    .line 206
    invoke-virtual {p0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->setMiscConfigVersionIsSet(Z)V

    goto :goto_1

    .line 208
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 212
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 213
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->pluginConfigVersion:I

    .line 214
    invoke-virtual {p0, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->setPluginConfigVersionIsSet(Z)V

    goto :goto_1

    .line 216
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->isSetPluginConfigVersion()Z

    move-result v1

    if-nez v1, :cond_4

    .line 231
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'pluginConfigVersion\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->validate()V

    .line 234
    return-void

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMiscConfigVersion(I)Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;
    .locals 1
    .param p1, "miscConfigVersion"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->miscConfigVersion:I

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->setMiscConfigVersionIsSet(Z)V

    .line 84
    return-object p0
.end method

.method public setMiscConfigVersionIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 98
    return-void
.end method

.method public setPluginConfigVersion(I)Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;
    .locals 1
    .param p1, "pluginConfigVersion"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->pluginConfigVersion:I

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->setPluginConfigVersionIsSet(Z)V

    .line 107
    return-object p0
.end method

.method public setPluginConfigVersionIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XmPushActionCheckClientInfo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 255
    .local v0, "first":Z
    const-string v2, "miscConfigVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->miscConfigVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    const/4 v0, 0x0

    .line 258
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    const-string v2, "pluginConfigVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->pluginConfigVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    const/4 v0, 0x0

    .line 262
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
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
    .line 270
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
    .line 237
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->validate()V

    .line 239
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 240
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->MISC_CONFIG_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 241
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->miscConfigVersion:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 242
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 243
    sget-object v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->PLUGIN_CONFIG_VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 244
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/XmPushActionCheckClientInfo;->pluginConfigVersion:I

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 245
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 246
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 247
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 248
    return-void
.end method
