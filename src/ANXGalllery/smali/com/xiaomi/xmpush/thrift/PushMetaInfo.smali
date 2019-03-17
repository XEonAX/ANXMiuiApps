.class public Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
.super Ljava/lang/Object;
.source "PushMetaInfo.java"

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
        "Lcom/xiaomi/xmpush/thrift/PushMetaInfo;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final APS_PROPER_FIELDS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final DESCRIPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final IGNORE_REG_INFO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final INTERNAL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final MESSAGE_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final NOTIFY_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final NOTIFY_TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final PASS_THROUGH_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

.field private static final TITLE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

.field private static final URL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;


# instance fields
.field private __isset_bit_vector:Ljava/util/BitSet;

.field public apsProperFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public ignoreRegInfo:Z

.field public internal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public messageTs:J

.field public notifyId:I

.field public notifyType:I

.field public passThrough:I

.field public title:Ljava/lang/String;

.field public topic:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/16 v5, 0xd

    const/16 v4, 0x8

    const/16 v3, 0xb

    .line 30
    new-instance v0, Lorg/apache/thrift/protocol/TStruct;

    const-string v1, "PushMetaInfo"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    .line 32
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 33
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v7, v6}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->MESSAGE_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 34
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 35
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->TITLE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 36
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->DESCRIPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 37
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->NOTIFY_TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 38
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->URL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 39
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->PASS_THROUGH_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 40
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->NOTIFY_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 41
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v5, v7}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 42
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v5, v3}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->INTERNAL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 43
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    const/16 v2, 0xc

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->IGNORE_REG_INFO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    .line 44
    new-instance v0, Lorg/apache/thrift/protocol/TField;

    const-string v1, ""

    invoke-direct {v0, v1, v5, v5}, Lorg/apache/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->APS_PROPER_FIELDS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V
    .locals 14
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v12, Ljava/util/BitSet;

    const/4 v13, 0x5

    invoke-direct {v12, v13}, Ljava/util/BitSet;-><init>(I)V

    iput-object v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    .line 88
    iget-object v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    invoke-virtual {v12}, Ljava/util/BitSet;->clear()V

    .line 89
    iget-object v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    iget-object v13, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 90
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetId()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 91
    iget-object v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    iput-object v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    .line 93
    :cond_0
    iget-wide v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    iput-wide v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    .line 94
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTopic()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 95
    iget-object v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    iput-object v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTitle()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 98
    iget-object v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    iput-object v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetDescription()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 101
    iget-object v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    iput-object v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    .line 103
    :cond_3
    iget v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    iput v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    .line 104
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetUrl()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 105
    iget-object v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    iput-object v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    .line 107
    :cond_4
    iget v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    iput v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    .line 108
    iget v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    iput v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    .line 109
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetExtra()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 110
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v3, "__this__extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 113
    .local v9, "other_element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 114
    .local v10, "other_element_key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 116
    .local v11, "other_element_value":Ljava/lang/String;
    move-object v4, v10

    .line 118
    .local v4, "__this__extra_copy_key":Ljava/lang/String;
    move-object v5, v11

    .line 120
    .local v5, "__this__extra_copy_value":Ljava/lang/String;
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    .end local v4    # "__this__extra_copy_key":Ljava/lang/String;
    .end local v5    # "__this__extra_copy_value":Ljava/lang/String;
    .end local v9    # "other_element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "other_element_key":Ljava/lang/String;
    .end local v11    # "other_element_value":Ljava/lang/String;
    :cond_5
    iput-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    .line 124
    .end local v3    # "__this__extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetInternal()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 125
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v6, "__this__internal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 128
    .restart local v9    # "other_element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 129
    .restart local v10    # "other_element_key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 131
    .restart local v11    # "other_element_value":Ljava/lang/String;
    move-object v7, v10

    .line 133
    .local v7, "__this__internal_copy_key":Ljava/lang/String;
    move-object v8, v11

    .line 135
    .local v8, "__this__internal_copy_value":Ljava/lang/String;
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 137
    .end local v7    # "__this__internal_copy_key":Ljava/lang/String;
    .end local v8    # "__this__internal_copy_value":Ljava/lang/String;
    .end local v9    # "other_element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "other_element_key":Ljava/lang/String;
    .end local v11    # "other_element_value":Ljava/lang/String;
    :cond_7
    iput-object v6, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    .line 139
    .end local v6    # "__this__internal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    iget-boolean v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    iput-boolean v12, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    .line 140
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetApsProperFields()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "__this__apsProperFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v12, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 144
    .restart local v9    # "other_element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 145
    .restart local v10    # "other_element_key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 147
    .restart local v11    # "other_element_value":Ljava/lang/String;
    move-object v1, v10

    .line 149
    .local v1, "__this__apsProperFields_copy_key":Ljava/lang/String;
    move-object v2, v11

    .line 151
    .local v2, "__this__apsProperFields_copy_value":Ljava/lang/String;
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 153
    .end local v1    # "__this__apsProperFields_copy_key":Ljava/lang/String;
    .end local v2    # "__this__apsProperFields_copy_value":Ljava/lang/String;
    .end local v9    # "other_element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "other_element_key":Ljava/lang/String;
    .end local v11    # "other_element_value":Ljava/lang/String;
    :cond_9
    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    .line 155
    .end local v0    # "__this__apsProperFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)I
    .locals 6
    .param p1, "other"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .prologue
    .line 662
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 663
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

    .line 799
    :cond_0
    :goto_0
    return v0

    .line 666
    :cond_1
    const/4 v0, 0x0

    .line 667
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 669
    .local v1, "typedOther":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 670
    if-nez v0, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 674
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 675
    if-nez v0, :cond_0

    .line 679
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetMessageTs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetMessageTs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 680
    if-nez v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetMessageTs()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 684
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    invoke-static {v2, v3, v4, v5}, Lorg/apache/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 685
    if-nez v0, :cond_0

    .line 689
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTopic()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTopic()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 690
    if-nez v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTopic()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 694
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 695
    if-nez v0, :cond_0

    .line 699
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTitle()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTitle()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 700
    if-nez v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTitle()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 704
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 705
    if-nez v0, :cond_0

    .line 709
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetDescription()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetDescription()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 710
    if-nez v0, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetDescription()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 714
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 715
    if-nez v0, :cond_0

    .line 719
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyType()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyType()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 720
    if-nez v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 724
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 725
    if-nez v0, :cond_0

    .line 729
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetUrl()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetUrl()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 730
    if-nez v0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetUrl()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 734
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 735
    if-nez v0, :cond_0

    .line 739
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetPassThrough()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetPassThrough()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 740
    if-nez v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetPassThrough()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 744
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 745
    if-nez v0, :cond_0

    .line 749
    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 750
    if-nez v0, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyId()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 754
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    iget v3, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 755
    if-nez v0, :cond_0

    .line 759
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetExtra()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetExtra()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 760
    if-nez v0, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetExtra()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 764
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 765
    if-nez v0, :cond_0

    .line 769
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetInternal()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetInternal()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 770
    if-nez v0, :cond_0

    .line 773
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetInternal()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 774
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 775
    if-nez v0, :cond_0

    .line 779
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetIgnoreRegInfo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetIgnoreRegInfo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 780
    if-nez v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetIgnoreRegInfo()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 784
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    iget-boolean v3, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 785
    if-nez v0, :cond_0

    .line 789
    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetApsProperFields()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetApsProperFields()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 790
    if-nez v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetApsProperFields()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 794
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    invoke-static {v2, v3}, Lorg/apache/thrift/TBaseHelper;->compareTo(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    .line 795
    if-nez v0, :cond_0

    .line 799
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->compareTo(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-direct {v0, p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;-><init>(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    return-object v0
.end method

.method public equals(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z
    .locals 32
    .param p1, "that"    # Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .prologue
    .line 533
    if-nez p1, :cond_0

    .line 534
    const/16 v28, 0x0

    .line 653
    :goto_0
    return v28

    .line 536
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetId()Z

    move-result v18

    .line 537
    .local v18, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetId()Z

    move-result v5

    .line 538
    .local v5, "that_present_id":Z
    if-nez v18, :cond_1

    if-eqz v5, :cond_4

    .line 539
    :cond_1
    if-eqz v18, :cond_2

    if-nez v5, :cond_3

    .line 540
    :cond_2
    const/16 v28, 0x0

    goto :goto_0

    .line 541
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 542
    const/16 v28, 0x0

    goto :goto_0

    .line 545
    :cond_4
    const/16 v21, 0x1

    .line 546
    .local v21, "this_present_messageTs":Z
    const/4 v8, 0x1

    .line 547
    .local v8, "that_present_messageTs":Z
    if-nez v21, :cond_5

    if-eqz v8, :cond_8

    .line 548
    :cond_5
    if-eqz v21, :cond_6

    if-nez v8, :cond_7

    .line 549
    :cond_6
    const/16 v28, 0x0

    goto :goto_0

    .line 550
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    move-wide/from16 v30, v0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_8

    .line 551
    const/16 v28, 0x0

    goto :goto_0

    .line 554
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTopic()Z

    move-result v26

    .line 555
    .local v26, "this_present_topic":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTopic()Z

    move-result v13

    .line 556
    .local v13, "that_present_topic":Z
    if-nez v26, :cond_9

    if-eqz v13, :cond_c

    .line 557
    :cond_9
    if-eqz v26, :cond_a

    if-nez v13, :cond_b

    .line 558
    :cond_a
    const/16 v28, 0x0

    goto :goto_0

    .line 559
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_c

    .line 560
    const/16 v28, 0x0

    goto :goto_0

    .line 563
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTitle()Z

    move-result v25

    .line 564
    .local v25, "this_present_title":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTitle()Z

    move-result v12

    .line 565
    .local v12, "that_present_title":Z
    if-nez v25, :cond_d

    if-eqz v12, :cond_10

    .line 566
    :cond_d
    if-eqz v25, :cond_e

    if-nez v12, :cond_f

    .line 567
    :cond_e
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 568
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_10

    .line 569
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 572
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetDescription()Z

    move-result v16

    .line 573
    .local v16, "this_present_description":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetDescription()Z

    move-result v3

    .line 574
    .local v3, "that_present_description":Z
    if-nez v16, :cond_11

    if-eqz v3, :cond_14

    .line 575
    :cond_11
    if-eqz v16, :cond_12

    if-nez v3, :cond_13

    .line 576
    :cond_12
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 577
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_14

    .line 578
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 581
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyType()Z

    move-result v23

    .line 582
    .local v23, "this_present_notifyType":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyType()Z

    move-result v10

    .line 583
    .local v10, "that_present_notifyType":Z
    if-nez v23, :cond_15

    if-eqz v10, :cond_18

    .line 584
    :cond_15
    if-eqz v23, :cond_16

    if-nez v10, :cond_17

    .line 585
    :cond_16
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 586
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_18

    .line 587
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 590
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetUrl()Z

    move-result v27

    .line 591
    .local v27, "this_present_url":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetUrl()Z

    move-result v14

    .line 592
    .local v14, "that_present_url":Z
    if-nez v27, :cond_19

    if-eqz v14, :cond_1c

    .line 593
    :cond_19
    if-eqz v27, :cond_1a

    if-nez v14, :cond_1b

    .line 594
    :cond_1a
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 595
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1c

    .line 596
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 599
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetPassThrough()Z

    move-result v24

    .line 600
    .local v24, "this_present_passThrough":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetPassThrough()Z

    move-result v11

    .line 601
    .local v11, "that_present_passThrough":Z
    if-nez v24, :cond_1d

    if-eqz v11, :cond_20

    .line 602
    :cond_1d
    if-eqz v24, :cond_1e

    if-nez v11, :cond_1f

    .line 603
    :cond_1e
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 604
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_20

    .line 605
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 608
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyId()Z

    move-result v22

    .line 609
    .local v22, "this_present_notifyId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyId()Z

    move-result v9

    .line 610
    .local v9, "that_present_notifyId":Z
    if-nez v22, :cond_21

    if-eqz v9, :cond_24

    .line 611
    :cond_21
    if-eqz v22, :cond_22

    if-nez v9, :cond_23

    .line 612
    :cond_22
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 613
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_24

    .line 614
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 617
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetExtra()Z

    move-result v17

    .line 618
    .local v17, "this_present_extra":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetExtra()Z

    move-result v4

    .line 619
    .local v4, "that_present_extra":Z
    if-nez v17, :cond_25

    if-eqz v4, :cond_28

    .line 620
    :cond_25
    if-eqz v17, :cond_26

    if-nez v4, :cond_27

    .line 621
    :cond_26
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 622
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_28

    .line 623
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 626
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetInternal()Z

    move-result v20

    .line 627
    .local v20, "this_present_internal":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetInternal()Z

    move-result v7

    .line 628
    .local v7, "that_present_internal":Z
    if-nez v20, :cond_29

    if-eqz v7, :cond_2c

    .line 629
    :cond_29
    if-eqz v20, :cond_2a

    if-nez v7, :cond_2b

    .line 630
    :cond_2a
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 631
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2c

    .line 632
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 635
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetIgnoreRegInfo()Z

    move-result v19

    .line 636
    .local v19, "this_present_ignoreRegInfo":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetIgnoreRegInfo()Z

    move-result v6

    .line 637
    .local v6, "that_present_ignoreRegInfo":Z
    if-nez v19, :cond_2d

    if-eqz v6, :cond_30

    .line 638
    :cond_2d
    if-eqz v19, :cond_2e

    if-nez v6, :cond_2f

    .line 639
    :cond_2e
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 640
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_30

    .line 641
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 644
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetApsProperFields()Z

    move-result v15

    .line 645
    .local v15, "this_present_apsProperFields":Z
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetApsProperFields()Z

    move-result v2

    .line 646
    .local v2, "that_present_apsProperFields":Z
    if-nez v15, :cond_31

    if-eqz v2, :cond_34

    .line 647
    :cond_31
    if-eqz v15, :cond_32

    if-nez v2, :cond_33

    .line 648
    :cond_32
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 649
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_34

    .line 650
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 653
    :cond_34
    const/16 v28, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 525
    if-nez p1, :cond_1

    .line 529
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 527
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    if-eqz v1, :cond_0

    .line 528
    check-cast p1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->equals(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInternal()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    return-object v0
.end method

.method public getMessageTs()J
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    return-wide v0
.end method

.method public getNotifyId()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    return v0
.end method

.method public getNotifyType()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    return v0
.end method

.method public getPassThrough()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnoreRegInfo()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    return v0
.end method

.method public isSetApsProperFields()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetDescription()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetExtra()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetId()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetIgnoreRegInfo()Z
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetInternal()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetMessageTs()Z
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetNotifyId()Z
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetNotifyType()Z
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetPassThrough()Z
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSetTitle()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetTopic()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUrl()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putToExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    return-void
.end method

.method public putToInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    return-void
.end method

.method public read(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 20
    .param p1, "iprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructBegin()Lorg/apache/thrift/protocol/TStruct;

    .line 807
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldBegin()Lorg/apache/thrift/protocol/TField;

    move-result-object v16

    .line 808
    .local v16, "field":Lorg/apache/thrift/protocol/TField;
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 949
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readStructEnd()V

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetMessageTs()Z

    move-result v17

    if-nez v17, :cond_11

    .line 953
    new-instance v17, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Required field \'messageTs\' was not found in serialized data! Struct: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 811
    :cond_0
    move-object/from16 v0, v16

    iget-short v0, v0, Lorg/apache/thrift/protocol/TField;->id:S

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 945
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    .line 947
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 813
    :pswitch_0
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 814
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    goto :goto_1

    .line 816
    :cond_1
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 820
    :pswitch_1
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 821
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    .line 822
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setMessageTsIsSet(Z)V

    goto :goto_1

    .line 824
    :cond_2
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 828
    :pswitch_2
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 829
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    goto :goto_1

    .line 831
    :cond_3
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 835
    :pswitch_3
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 836
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 838
    :cond_4
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 842
    :pswitch_4
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 843
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    goto/16 :goto_1

    .line 845
    :cond_5
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 849
    :pswitch_5
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 850
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    .line 851
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setNotifyTypeIsSet(Z)V

    goto/16 :goto_1

    .line 853
    :cond_6
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 857
    :pswitch_6
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 858
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    goto/16 :goto_1

    .line 860
    :cond_7
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 864
    :pswitch_7
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 865
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    .line 866
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setPassThroughIsSet(Z)V

    goto/16 :goto_1

    .line 868
    :cond_8
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 872
    :pswitch_8
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 873
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readI32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    .line 874
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setNotifyIdIsSet(Z)V

    goto/16 :goto_1

    .line 876
    :cond_9
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 880
    :pswitch_9
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 882
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapBegin()Lorg/apache/thrift/protocol/TMap;

    move-result-object v10

    .line 883
    .local v10, "_map25":Lorg/apache/thrift/protocol/TMap;
    new-instance v17, Ljava/util/HashMap;

    iget v0, v10, Lorg/apache/thrift/protocol/TMap;->size:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    invoke-direct/range {v17 .. v18}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    .line 884
    const/4 v4, 0x0

    .local v4, "_i26":I
    :goto_2
    iget v0, v10, Lorg/apache/thrift/protocol/TMap;->size:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_a

    .line 888
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v7

    .line 889
    .local v7, "_key27":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v13

    .line 890
    .local v13, "_val28":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 892
    .end local v7    # "_key27":Ljava/lang/String;
    .end local v13    # "_val28":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapEnd()V

    goto/16 :goto_1

    .line 895
    .end local v4    # "_i26":I
    .end local v10    # "_map25":Lorg/apache/thrift/protocol/TMap;
    :cond_b
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 899
    :pswitch_a
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 901
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapBegin()Lorg/apache/thrift/protocol/TMap;

    move-result-object v11

    .line 902
    .local v11, "_map29":Lorg/apache/thrift/protocol/TMap;
    new-instance v17, Ljava/util/HashMap;

    iget v0, v11, Lorg/apache/thrift/protocol/TMap;->size:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    invoke-direct/range {v17 .. v18}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    .line 903
    const/4 v5, 0x0

    .local v5, "_i30":I
    :goto_3
    iget v0, v11, Lorg/apache/thrift/protocol/TMap;->size:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_c

    .line 907
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v8

    .line 908
    .local v8, "_key31":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v14

    .line 909
    .local v14, "_val32":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 911
    .end local v8    # "_key31":Ljava/lang/String;
    .end local v14    # "_val32":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapEnd()V

    goto/16 :goto_1

    .line 914
    .end local v5    # "_i30":I
    .end local v11    # "_map29":Lorg/apache/thrift/protocol/TMap;
    :cond_d
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 918
    :pswitch_b
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 919
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readBool()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    .line 920
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setIgnoreRegInfoIsSet(Z)V

    goto/16 :goto_1

    .line 922
    :cond_e
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 926
    :pswitch_c
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 928
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapBegin()Lorg/apache/thrift/protocol/TMap;

    move-result-object v12

    .line 929
    .local v12, "_map33":Lorg/apache/thrift/protocol/TMap;
    new-instance v17, Ljava/util/HashMap;

    iget v0, v12, Lorg/apache/thrift/protocol/TMap;->size:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    invoke-direct/range {v17 .. v18}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    .line 930
    const/4 v6, 0x0

    .local v6, "_i34":I
    :goto_4
    iget v0, v12, Lorg/apache/thrift/protocol/TMap;->size:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_f

    .line 934
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v9

    .line 935
    .local v9, "_key35":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v15

    .line 936
    .local v15, "_val36":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 938
    .end local v9    # "_key35":Ljava/lang/String;
    .end local v15    # "_val36":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/thrift/protocol/TProtocol;->readMapEnd()V

    goto/16 :goto_1

    .line 941
    .end local v6    # "_i34":I
    .end local v12    # "_map33":Lorg/apache/thrift/protocol/TMap;
    :cond_10
    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/apache/thrift/protocol/TField;->type:B

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/thrift/protocol/TProtocolUtil;->skip(Lorg/apache/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 955
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->validate()V

    .line 956
    return-void

    .line 811
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public setDescription(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    .line 284
    return-object p0
.end method

.method public setExtra(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/xmpush/thrift/PushMetaInfo;"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    .line 412
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public setIgnoreRegInfoIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 485
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 486
    return-void
.end method

.method public setMessageTsIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 228
    return-void
.end method

.method public setNotifyId(I)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .locals 1
    .param p1, "notifyId"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setNotifyIdIsSet(Z)V

    .line 379
    return-object p0
.end method

.method public setNotifyIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 392
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 393
    return-void
.end method

.method public setNotifyType(I)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .locals 1
    .param p1, "notifyType"    # I

    .prologue
    .line 307
    iput p1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setNotifyTypeIsSet(Z)V

    .line 309
    return-object p0
.end method

.method public setNotifyTypeIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 323
    return-void
.end method

.method public setPassThrough(I)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .locals 1
    .param p1, "passThrough"    # I

    .prologue
    .line 354
    iput p1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    .line 355
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setPassThroughIsSet(Z)V

    .line 356
    return-object p0
.end method

.method public setPassThroughIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->__isset_bit_vector:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    .line 370
    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method public setTopic(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PushMetaInfo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1072
    .local v0, "first":Z
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 1074
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :goto_0
    const/4 v0, 0x0

    .line 1079
    if-nez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    :cond_0
    const-string v2, "messageTs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1082
    const/4 v0, 0x0

    .line 1083
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTopic()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1084
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    :cond_1
    const-string/jumbo v2, "topic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 1087
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    :goto_1
    const/4 v0, 0x0

    .line 1093
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTitle()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1094
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    :cond_3
    const-string/jumbo v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 1097
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    :goto_2
    const/4 v0, 0x0

    .line 1103
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetDescription()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1104
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    :cond_5
    const-string v2, "description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 1107
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    :goto_3
    const/4 v0, 0x0

    .line 1113
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyType()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1114
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    :cond_7
    const-string v2, "notifyType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1117
    const/4 v0, 0x0

    .line 1119
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetUrl()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1120
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    :cond_9
    const-string/jumbo v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 1123
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    :goto_4
    const/4 v0, 0x0

    .line 1129
    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetPassThrough()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1130
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    :cond_b
    const-string v2, "passThrough:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1133
    const/4 v0, 0x0

    .line 1135
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyId()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1136
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    :cond_d
    const-string v2, "notifyId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    iget v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1139
    const/4 v0, 0x0

    .line 1141
    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetExtra()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1142
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    :cond_f
    const-string v2, "extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    if-nez v2, :cond_1c

    .line 1145
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    :goto_5
    const/4 v0, 0x0

    .line 1151
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetInternal()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1152
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    :cond_11
    const-string v2, "internal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    if-nez v2, :cond_1d

    .line 1155
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    :goto_6
    const/4 v0, 0x0

    .line 1161
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetIgnoreRegInfo()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1162
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    :cond_13
    const-string v2, "ignoreRegInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    iget-boolean v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1165
    const/4 v0, 0x0

    .line 1167
    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetApsProperFields()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1168
    if-nez v0, :cond_15

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    :cond_15
    const-string v2, "apsProperFields:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    if-nez v2, :cond_1e

    .line 1171
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    :goto_7
    const/4 v0, 0x0

    .line 1177
    :cond_16
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1076
    :cond_17
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1089
    :cond_18
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1099
    :cond_19
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1109
    :cond_1a
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1125
    :cond_1b
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1147
    :cond_1c
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1157
    :cond_1d
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1173
    :cond_1e
    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1184
    new-instance v0, Lorg/apache/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_0
    return-void
.end method

.method public write(Lorg/apache/thrift/protocol/TProtocol;)V
    .locals 7
    .param p1, "oprot"    # Lorg/apache/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xb

    .line 959
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->validate()V

    .line 961
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->STRUCT_DESC:Lorg/apache/thrift/protocol/TStruct;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeStructBegin(Lorg/apache/thrift/protocol/TStruct;)V

    .line 962
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 963
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 964
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 967
    :cond_0
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->MESSAGE_TS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 968
    iget-wide v4, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->messageTs:J

    invoke-virtual {p1, v4, v5}, Lorg/apache/thrift/protocol/TProtocol;->writeI64(J)V

    .line 969
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 970
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 971
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTopic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 972
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->TOPIC_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 973
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->topic:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 977
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 978
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetTitle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 979
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->TITLE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 980
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 984
    :cond_2
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 985
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetDescription()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 986
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->DESCRIPTION_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 987
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 988
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 991
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyType()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 992
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->NOTIFY_TYPE_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 993
    iget v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyType:I

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 994
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 996
    :cond_4
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 997
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetUrl()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 998
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->URL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 999
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1003
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetPassThrough()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1004
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->PASS_THROUGH_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1005
    iget v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->passThrough:I

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1006
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1008
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetNotifyId()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1009
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->NOTIFY_ID_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1010
    iget v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->notifyId:I

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeI32(I)V

    .line 1011
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1013
    :cond_7
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    if-eqz v3, :cond_9

    .line 1014
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetExtra()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1015
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->EXTRA_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1017
    new-instance v3, Lorg/apache/thrift/protocol/TMap;

    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v6, v6, v4}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeMapBegin(Lorg/apache/thrift/protocol/TMap;)V

    .line 1018
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->extra:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1020
    .local v0, "_iter37":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1021
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1023
    .end local v0    # "_iter37":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapEnd()V

    .line 1025
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1028
    :cond_9
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    if-eqz v3, :cond_b

    .line 1029
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetInternal()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1030
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->INTERNAL_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1032
    new-instance v3, Lorg/apache/thrift/protocol/TMap;

    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v6, v6, v4}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeMapBegin(Lorg/apache/thrift/protocol/TMap;)V

    .line 1033
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->internal:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1035
    .local v1, "_iter38":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1036
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 1038
    .end local v1    # "_iter38":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapEnd()V

    .line 1040
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1043
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetIgnoreRegInfo()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1044
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->IGNORE_REG_INFO_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1045
    iget-boolean v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->ignoreRegInfo:Z

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 1046
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1048
    :cond_c
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    if-eqz v3, :cond_e

    .line 1049
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->isSetApsProperFields()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1050
    sget-object v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->APS_PROPER_FIELDS_FIELD_DESC:Lorg/apache/thrift/protocol/TField;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldBegin(Lorg/apache/thrift/protocol/TField;)V

    .line 1052
    new-instance v3, Lorg/apache/thrift/protocol/TMap;

    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v6, v6, v4}, Lorg/apache/thrift/protocol/TMap;-><init>(BBI)V

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeMapBegin(Lorg/apache/thrift/protocol/TMap;)V

    .line 1053
    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->apsProperFields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1055
    .local v2, "_iter39":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 1056
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/apache/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 1058
    .end local v2    # "_iter39":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeMapEnd()V

    .line 1060
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 1063
    :cond_e
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 1064
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 1065
    return-void
.end method
