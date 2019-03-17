.class public Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;
.super Ljava/lang/Object;
.source "RegisteredGeoFencing.java"

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
        "Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final GEO_FENCINGS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;


# instance fields
.field public geoFencings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/xiaomi/xmpush/thrift/GeoFencing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "RegisteredGeoFencing"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->GEO_FENCINGS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;)I
    .locals 4
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
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

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    const/4 v0, 0x0

    .line 147
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 149
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->isSetGeoFencings()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->isSetGeoFencings()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 150
    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->isSetGeoFencings()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    .line 155
    if-nez v0, :cond_0

    .line 159
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->compareTo(Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;)Z
    .locals 5
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    .prologue
    const/4 v2, 0x0

    .line 121
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->isSetGeoFencings()Z

    move-result v1

    .line 125
    .local v1, "this_present_geoFencings":Z
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->isSetGeoFencings()Z

    move-result v0

    .line 126
    .local v0, "that_present_geoFencings":Z
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 127
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 129
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    iget-object v4, p1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 113
    if-nez p1, :cond_1

    .line 117
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 115
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    if-eqz v1, :cond_0

    .line 116
    check-cast p1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->equals(Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;)Z

    move-result v0

    goto :goto_0
.end method

.method public getGeoFencings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/xiaomi/xmpush/thrift/GeoFencing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public isSetGeoFencings()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 164
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 167
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v3

    .line 168
    .local v3, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 195
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 198
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->validate()V

    .line 199
    return-void

    .line 171
    :cond_0
    iget-short v4, v3, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 191
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 193
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 173
    :pswitch_0
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xe

    if-ne v4, v5, :cond_2

    .line 175
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readSetBegin()Lorg/apache/thrift/protocol/TSet;

    move-result-object v2

    .line 176
    .local v2, "_set40":Lorg/apache/thrift/protocol/TSet;
    new-instance v4, Ljava/util/HashSet;

    iget v5, v2, Lorg/apache/thrift/protocol/TSet;->size:I

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    .line 177
    const/4 v1, 0x0

    .local v1, "_i41":I
    :goto_2
    iget v4, v2, Lorg/apache/thrift/protocol/TSet;->size:I

    if-ge v1, v4, :cond_1

    .line 180
    new-instance v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/GeoFencing;-><init>()V

    .line 181
    .local v0, "_elem42":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 182
    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 184
    .end local v0    # "_elem42":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readSetEnd()V

    goto :goto_1

    .line 187
    .end local v1    # "_i41":I
    .end local v2    # "_set40":Lorg/apache/thrift/protocol/TSet;
    :cond_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setGeoFencings(Ljava/util/Set;)Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/xiaomi/xmpush/thrift/GeoFencing;",
            ">;)",
            "Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "geoFencings":Ljava/util/Set;, "Ljava/util/Set<Lcom/xiaomi/xmpush/thrift/GeoFencing;>;"
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    .line 93
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RegisteredGeoFencing("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 226
    .local v0, "first":Z
    const-string v2, "geoFencings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 228
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :goto_0
    const/4 v0, 0x0

    .line 233
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'geoFencings\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
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
    .line 202
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->validate()V

    .line 204
    sget-object v1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 205
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 206
    sget-object v1, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->GEO_FENCINGS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 208
    new-instance v1, Lorg/apache/thrift/protocol/TSet;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/thrift/protocol/TSet;-><init>(BI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeSetBegin(Lorg/apache/thrift/protocol/TSet;)V

    .line 209
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/RegisteredGeoFencing;->geoFencings:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/GeoFencing;

    .line 211
    .local v0, "_iter43":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/GeoFencing;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 213
    .end local v0    # "_iter43":Lcom/xiaomi/xmpush/thrift/GeoFencing;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeSetEnd()V

    .line 215
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 217
    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 218
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 219
    return-void
.end method
