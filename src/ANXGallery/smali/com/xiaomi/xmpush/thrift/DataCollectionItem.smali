.class public Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
.super Ljava/lang/Object;
.source "DataCollectionItem.java"

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
        "Lcom/xiaomi/xmpush/thrift/DataCollectionItem;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLLECTED_AT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final COLLECTION_TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final CONTENT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public collectedAt:J

.field public collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

.field public content:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "DataCollectionItem"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->COLLECTED_AT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->COLLECTION_TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xb

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->CONTENT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

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

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->__isset_bit_vector:Ljava/util/BitSet;

    .line 47
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/DataCollectionItem;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .prologue
    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
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

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    const/4 v0, 0x0

    .line 221
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 223
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetCollectedAt()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetCollectedAt()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 224
    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetCollectedAt()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectedAt:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectedAt:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetCollectionType()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetCollectionType()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 234
    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetCollectionType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 239
    if-nez v0, :cond_0

    .line 243
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetContent()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetContent()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 244
    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetContent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 249
    if-nez v0, :cond_0

    .line 253
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->compareTo(Lcom/xiaomi/xmpush/thrift/DataCollectionItem;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/DataCollectionItem;)Z
    .locals 12
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .prologue
    const/4 v6, 0x0

    .line 177
    if-nez p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v6

    .line 180
    :cond_1
    const/4 v3, 0x1

    .line 181
    .local v3, "this_present_collectedAt":Z
    const/4 v0, 0x1

    .line 182
    .local v0, "that_present_collectedAt":Z
    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 183
    :cond_2
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 185
    iget-wide v8, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectedAt:J

    iget-wide v10, p1, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectedAt:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetCollectionType()Z

    move-result v4

    .line 190
    .local v4, "this_present_collectionType":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetCollectionType()Z

    move-result v1

    .line 191
    .local v1, "that_present_collectionType":Z
    if-nez v4, :cond_4

    if-eqz v1, :cond_5

    .line 192
    :cond_4
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 194
    iget-object v7, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    iget-object v8, p1, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    invoke-virtual {v7, v8}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 198
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetContent()Z

    move-result v5

    .line 199
    .local v5, "this_present_content":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetContent()Z

    move-result v2

    .line 200
    .local v2, "that_present_content":Z
    if-nez v5, :cond_6

    if-eqz v2, :cond_7

    .line 201
    :cond_6
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 203
    iget-object v7, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

    iget-object v8, p1, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    :cond_7
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 169
    if-nez p1, :cond_1

    .line 173
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 171
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    if-eqz v1, :cond_0

    .line 172
    check-cast p1, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->equals(Lcom/xiaomi/xmpush/thrift/DataCollectionItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isSetCollectedAt()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetCollectionType()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetContent()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

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
    .line 258
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 261
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v0

    .line 262
    .local v0, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 296
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->isSetCollectedAt()Z

    move-result v1

    if-nez v1, :cond_4

    .line 297
    new-instance v1, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required field \'collectedAt\' was not found in serialized data! Struct: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 289
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 291
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 267
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 268
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectedAt:J

    .line 269
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->setCollectedAtIsSet(Z)V

    goto :goto_1

    .line 271
    :cond_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 275
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 276
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->findByValue(I)Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    goto :goto_1

    .line 278
    :cond_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 282
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 283
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

    goto :goto_1

    .line 285
    :cond_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 299
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->validate()V

    .line 300
    return-void

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCollectedAt(J)Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
    .locals 1
    .param p1, "collectedAt"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectedAt:J

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->setCollectedAtIsSet(Z)V

    .line 95
    return-object p0
.end method

.method public setCollectedAtIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 109
    return-void
.end method

.method public setCollectionType(Lcom/xiaomi/xmpush/thrift/ClientCollectionType;)Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
    .locals 0
    .param p1, "collectionType"    # Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    .line 125
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataCollectionItem("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 328
    .local v0, "first":Z
    const-string v2, "collectedAt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectedAt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    const/4 v0, 0x0

    .line 331
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_0
    const-string v2, "collectionType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    if-nez v2, :cond_2

    .line 334
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :goto_0
    const/4 v0, 0x0

    .line 339
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_1
    const-string v2, "content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 342
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :goto_1
    const/4 v0, 0x0

    .line 347
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 336
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 344
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

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
    .line 354
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'collectionType\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 358
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'content\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
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
    .line 303
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->validate()V

    .line 305
    sget-object v0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 306
    sget-object v0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->COLLECTED_AT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 307
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectedAt:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 308
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 309
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->COLLECTION_TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 311
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->collectionType:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 312
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 315
    sget-object v0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->CONTENT_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 316
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 319
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 320
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 321
    return-void
.end method
