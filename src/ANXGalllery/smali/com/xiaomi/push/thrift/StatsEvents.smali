.class public Lcom/xiaomi/push/thrift/StatsEvents;
.super Ljava/lang/Object;
.source "StatsEvents.java"

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
        "Lcom/xiaomi/push/thrift/StatsEvents;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENTS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final OPERATOR_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final UUID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field public events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/push/thrift/StatsEvent;",
            ">;"
        }
    .end annotation
.end field

.field public operator:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 27
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "StatsEvents"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 29
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->UUID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->OPERATOR_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 31
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xf

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/push/thrift/StatsEvents;->EVENTS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

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

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/push/thrift/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/push/thrift/StatsEvent;>;"
    invoke-direct {p0}, Lcom/xiaomi/push/thrift/StatsEvents;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/push/thrift/StatsEvents;)I
    .locals 4
    .param p1, "other"    # Lcom/xiaomi/push/thrift/StatsEvents;

    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
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

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    const/4 v0, 0x0

    .line 223
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 225
    .local v1, "typedOther":Lcom/xiaomi/push/thrift/StatsEvents;
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetUuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetUuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 226
    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetUuid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 231
    if-nez v0, :cond_0

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetOperator()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetOperator()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 236
    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetOperator()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 241
    if-nez v0, :cond_0

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetEvents()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetEvents()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 246
    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetEvents()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    iget-object v3, v1, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 251
    if-nez v0, :cond_0

    .line 255
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/xiaomi/push/thrift/StatsEvents;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/thrift/StatsEvents;->compareTo(Lcom/xiaomi/push/thrift/StatsEvents;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/xiaomi/push/thrift/StatsEvents;)Z
    .locals 9
    .param p1, "that"    # Lcom/xiaomi/push/thrift/StatsEvents;

    .prologue
    const/4 v6, 0x0

    .line 179
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v6

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetUuid()Z

    move-result v5

    .line 183
    .local v5, "this_present_uuid":Z
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetUuid()Z

    move-result v2

    .line 184
    .local v2, "that_present_uuid":Z
    if-nez v5, :cond_2

    if-eqz v2, :cond_3

    .line 185
    :cond_2
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 187
    iget-object v7, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    iget-object v8, p1, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 191
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetOperator()Z

    move-result v4

    .line 192
    .local v4, "this_present_operator":Z
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetOperator()Z

    move-result v1

    .line 193
    .local v1, "that_present_operator":Z
    if-nez v4, :cond_4

    if-eqz v1, :cond_5

    .line 194
    :cond_4
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 196
    iget-object v7, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    iget-object v8, p1, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 200
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetEvents()Z

    move-result v3

    .line 201
    .local v3, "this_present_events":Z
    invoke-virtual {p1}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetEvents()Z

    move-result v0

    .line 202
    .local v0, "that_present_events":Z
    if-nez v3, :cond_6

    if-eqz v0, :cond_7

    .line 203
    :cond_6
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 205
    iget-object v7, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    iget-object v8, p1, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 209
    :cond_7
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 171
    if-nez p1, :cond_1

    .line 175
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 173
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/push/thrift/StatsEvents;

    if-eqz v1, :cond_0

    .line 174
    check-cast p1, Lcom/xiaomi/push/thrift/StatsEvents;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/thrift/StatsEvents;->equals(Lcom/xiaomi/push/thrift/StatsEvents;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public isSetEvents()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetOperator()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUuid()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    const/16 v6, 0xb

    .line 260
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 263
    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v3

    .line 264
    .local v3, "field":Lorg/apache/thrift/protocol/TField;
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-nez v4, :cond_0

    .line 305
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 308
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->validate()V

    .line 309
    return-void

    .line 267
    :cond_0
    iget-short v4, v3, Lorg/apache/thrift/protocol/TField;->id:S

    packed-switch v4, :pswitch_data_0

    .line 301
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 303
    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 269
    :pswitch_0
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_1

    .line 270
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    goto :goto_1

    .line 272
    :cond_1
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 276
    :pswitch_1
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    if-ne v4, v6, :cond_2

    .line 277
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    goto :goto_1

    .line 279
    :cond_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 283
    :pswitch_2
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    const/16 v5, 0xf

    if-ne v4, v5, :cond_4

    .line 285
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListBegin()Lorg/apache/thrift/protocol/TList;

    move-result-object v2

    .line 286
    .local v2, "_list0":Lorg/apache/thrift/protocol/TList;
    new-instance v4, Ljava/util/ArrayList;

    iget v5, v2, Lorg/apache/thrift/protocol/TList;->size:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    .line 287
    const/4 v1, 0x0

    .local v1, "_i1":I
    :goto_2
    iget v4, v2, Lorg/apache/thrift/protocol/TList;->size:I

    if-ge v1, v4, :cond_3

    .line 290
    new-instance v0, Lcom/xiaomi/push/thrift/StatsEvent;

    invoke-direct {v0}, Lcom/xiaomi/push/thrift/StatsEvent;-><init>()V

    .line 291
    .local v0, "_elem2":Lcom/xiaomi/push/thrift/StatsEvent;
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->read(Lorg/apache/thrift/protocol/TProtocol;)V

    .line 292
    iget-object v4, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 294
    .end local v0    # "_elem2":Lcom/xiaomi/push/thrift/StatsEvent;
    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->readListEnd()V

    goto :goto_1

    .line 297
    .end local v1    # "_i1":I
    .end local v2    # "_list0":Lorg/apache/thrift/protocol/TList;
    :cond_4
    iget-byte v4, v3, Lorg/apache/thrift/protocol/TField;->type:B

    invoke-static {p1, v4}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOperator(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvents;
    .locals 0
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StatsEvents("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 348
    .local v0, "first":Z
    const-string/jumbo v2, "uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 350
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :goto_0
    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetOperator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_0
    const-string v2, "operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 359
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :goto_1
    const/4 v0, 0x0

    .line 365
    :cond_1
    if-nez v0, :cond_2

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_2
    const-string v2, "events:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    if-nez v2, :cond_5

    .line 368
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :goto_2
    const/4 v0, 0x0

    .line 373
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 352
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 361
    :cond_4
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 370
    :cond_5
    iget-object v2, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'uuid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    if-nez v0, :cond_1

    .line 383
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'events\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_1
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
    .line 312
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->validate()V

    .line 314
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvents;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 315
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 316
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvents;->UUID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 317
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/xiaomi/push/thrift/StatsEvents;->isSetOperator()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvents;->OPERATOR_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 323
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->operator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 328
    sget-object v1, Lcom/xiaomi/push/thrift/StatsEvents;->EVENTS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 330
    new-instance v1, Lorg/apache/thrift/protocol/TList;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/thrift/protocol/TList;-><init>(BI)V

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/TProtocol;->writeListBegin(Lorg/apache/thrift/protocol/TList;)V

    .line 331
    iget-object v1, p0, Lcom/xiaomi/push/thrift/StatsEvents;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/thrift/StatsEvent;

    .line 333
    .local v0, "_iter3":Lcom/xiaomi/push/thrift/StatsEvent;
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/thrift/StatsEvent;->write(Lorg/apache/thrift/protocol/TProtocol;)V

    goto :goto_0

    .line 335
    .end local v0    # "_iter3":Lcom/xiaomi/push/thrift/StatsEvent;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeListEnd()V

    .line 337
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 339
    :cond_3
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 340
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 341
    return-void
.end method
