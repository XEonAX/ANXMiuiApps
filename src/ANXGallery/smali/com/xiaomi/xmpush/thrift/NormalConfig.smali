.class public Lcom/xiaomi/xmpush/thrift/NormalConfig;
.super Ljava/lang/Object;
.source "NormalConfig.java"

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
        "Lcom/xiaomi/xmpush/thrift/NormalConfig;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONFIG_ITEMS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public configItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "NormalConfig"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xf

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->CONFIG_ITEMS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

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

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->__isset_bit_vector:Ljava/util/BitSet;

    .line 47
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/NormalConfig;)I
    .locals 4
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/NormalConfig;

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
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

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    const/4 v0, 0x0

    .line 238
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 240
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/NormalConfig;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetVersion()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetVersion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 241
    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetVersion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 246
    if-nez v0, :cond_0

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetConfigItems()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetConfigItems()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 251
    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetConfigItems()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 256
    if-nez v0, :cond_0

    .line 260
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetType()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetType()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 261
    if-nez v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 266
    if-nez v0, :cond_0

    .line 270
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->compareTo(Lcom/xiaomi/xmpush/thrift/NormalConfig;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/NormalConfig;)Z
    .locals 9
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/NormalConfig;

    .prologue
    const/4 v6, 0x0

    .line 194
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v6

    .line 197
    :cond_1
    const/4 v5, 0x1

    .line 198
    .local v5, "this_present_version":Z
    const/4 v2, 0x1

    .line 199
    .local v2, "that_present_version":Z
    if-nez v5, :cond_2

    if-eqz v2, :cond_3

    .line 200
    :cond_2
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 202
    iget v7, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    iget v8, p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    if-ne v7, v8, :cond_0

    .line 206
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetConfigItems()Z

    move-result v3

    .line 207
    .local v3, "this_present_configItems":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetConfigItems()Z

    move-result v0

    .line 208
    .local v0, "that_present_configItems":Z
    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    .line 209
    :cond_4
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 211
    iget-object v7, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    iget-object v8, p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 215
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetType()Z

    move-result v4

    .line 216
    .local v4, "this_present_type":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetType()Z

    move-result v1

    .line 217
    .local v1, "that_present_type":Z
    if-nez v4, :cond_6

    if-eqz v1, :cond_7

    .line 218
    :cond_6
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 220
    iget-object v7, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    iget-object v8, p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    invoke-virtual {v7, v8}, Lcom/xiaomi/xmpush/thrift/ConfigListType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 224
    :cond_7
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 186
    if-nez p1, :cond_1

    .line 190
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 188
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;

    if-eqz v1, :cond_0

    .line 189
    check-cast p1, Lcom/xiaomi/xmpush/thrift/NormalConfig;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->equals(Lcom/xiaomi/xmpush/thrift/NormalConfig;)Z

    move-result v0

    goto :goto_0
.end method

.method public getType()Lcom/xiaomi/xmpush/thrift/ConfigListType;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public isSetConfigItems()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetType()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetVersion()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 7
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 275
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 278
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v3

    .line 279
    .local v3, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 321
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 324
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetVersion()Z

    move-result v4

    if-nez v4, :cond_5

    .line 325
    new-instance v4, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 282
    :cond_0
    iget-short v4, v3, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 317
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 319
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 284
    :pswitch_0
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_1

    .line 285
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v4

    iput v4, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    .line 286
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->setVersionIsSet(Z)V

    goto :goto_1

    .line 288
    :cond_1
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 292
    :pswitch_1
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_3

    .line 294
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListBegin()Lorg/apache/thrift/protocol/TList;

    move-result-object v2

    .line 295
    .local v2, "_list21":Lorg/apache/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lorg/apache/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    .line 296
    const/4 v1, 0x0

    .local v1, "_i22":I
    :goto_2
    iget v4, v2, Lorg/apache/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_2

    .line 299
    new-instance v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;-><init>()V

    .line 300
    .local v0, "_elem23":Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 301
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 303
    .end local v0    # "_elem23":Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 306
    .end local v1    # "_i22":I
    .end local v2    # "_list21":Lorg/apache/thrift/protocol/TList;
    :cond_3
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 310
    :pswitch_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_4

    .line 311
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/xmpush/thrift/ConfigListType;->findByValue(I)Lcom/xiaomi/xmpush/thrift/ConfigListType;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    goto :goto_1

    .line 313
    :cond_4
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 327
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->validate()V

    .line 328
    return-void

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVersionIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NormalConfig("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 365
    .local v0, "first":Z
    const-string/jumbo v2, "version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    const/4 v0, 0x0

    .line 368
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_0
    const-string v2, "configItems:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    if-nez v2, :cond_3

    .line 371
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :goto_0
    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_1
    const-string/jumbo v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    if-nez v2, :cond_4

    .line 380
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :goto_1
    const/4 v0, 0x0

    .line 386
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 373
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 382
    :cond_4
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 393
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'configItems\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 4
    .param p1, "oprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->validate()V

    .line 333
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 334
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->VERSION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 335
    iget v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->version:I

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 336
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 337
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 338
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->CONFIG_ITEMS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 340
    new-instance v1, Lorg/apache/thrift/protocol/TList;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeListBegin(Lorg/apache/thrift/protocol/TList;)V

    .line 341
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->configItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;

    .line 343
    .local v0, "_iter24":Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 345
    .end local v0    # "_iter24":Lcom/xiaomi/xmpush/thrift/OnlineConfigItem;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeListEnd()V

    .line 347
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    if-eqz v1, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/NormalConfig;->isSetType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    sget-object v1, Lcom/xiaomi/xmpush/thrift/NormalConfig;->TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 352
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/NormalConfig;->type:Lcom/xiaomi/xmpush/thrift/ConfigListType;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ConfigListType;->getValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 353
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 356
    :cond_2
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 357
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 358
    return-void
.end method
