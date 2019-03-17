.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field private static final NON_STRINGKEY_AS_STRING:I

.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 44
    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .locals 36
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .param p6, "unwrapped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v28, v0

    .line 55
    .local v28, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_1

    .line 56
    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 267
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v22, p2

    .line 60
    check-cast v22, Ljava/util/Map;

    .line 61
    .local v22, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v25, v0

    .line 62
    .local v25, "mapSortFieldMask":I
    move-object/from16 v0, v28

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v4, v4, v25

    if-nez v4, :cond_2

    and-int v4, p5, v25

    if-eqz v4, :cond_3

    .line 63
    :cond_2
    move-object/from16 v0, v22

    instance-of v4, v0, Ljava/util/SortedMap;

    if-nez v4, :cond_3

    move-object/from16 v0, v22

    instance-of v4, v0, Ljava/util/LinkedHashMap;

    if-nez v4, :cond_3

    .line 65
    :try_start_0
    new-instance v23, Ljava/util/TreeMap;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v22    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v23, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v22, v23

    .line 72
    .end local v23    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v22    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v29, v0

    .line 78
    .local v29, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 80
    if-nez p6, :cond_5

    .line 81
    const/16 v4, 0x7b

    :try_start_1
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 84
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 86
    const/16 v30, 0x0

    .line 87
    .local v30, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    .line 89
    .local v10, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/16 v20, 0x1

    .line 91
    .local v20, "first":Z
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 92
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v0, v4, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 93
    .local v34, "typeKey":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    .line 94
    .local v24, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_6

    const-class v4, Ljava/util/HashMap;

    move-object/from16 v0, v24

    if-eq v0, v4, :cond_6

    const-class v4, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_19

    .line 95
    :cond_6
    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/16 v17, 0x1

    .line 96
    .local v17, "containsKey":Z
    :goto_2
    if-nez v17, :cond_7

    .line 97
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 99
    const/16 v20, 0x0

    .line 103
    .end local v17    # "containsKey":Z
    .end local v24    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "typeKey":Ljava/lang/String;
    :cond_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_8
    :goto_3
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 104
    .local v18, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 106
    .local v9, "value":Ljava/lang/Object;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    .line 109
    .local v19, "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    move-object/from16 v31, v0

    .line 110
    .local v31, "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-eqz v31, :cond_a

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 111
    if-eqz v19, :cond_9

    move-object/from16 v0, v19

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1a

    .line 112
    :cond_9
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 124
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyPreFilters:Ljava/util/List;

    move-object/from16 v31, v0

    .line 125
    if-eqz v31, :cond_c

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 126
    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1c

    .line 127
    :cond_b
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 140
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    move-object/from16 v32, v0

    .line 141
    .local v32, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v32, :cond_e

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 142
    if-eqz v19, :cond_d

    move-object/from16 v0, v19

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1e

    .line 143
    :cond_d
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 155
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyFilters:Ljava/util/List;

    move-object/from16 v32, v0

    .line 156
    if-eqz v32, :cond_10

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 157
    if-eqz v19, :cond_f

    move-object/from16 v0, v19

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_20

    .line 158
    :cond_f
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 171
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    move-object/from16 v26, v0

    .line 172
    .local v26, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v26, :cond_12

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 173
    if-eqz v19, :cond_11

    move-object/from16 v0, v19

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_22

    .line 174
    :cond_11
    check-cast v19, Ljava/lang/String;

    .end local v19    # "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 182
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->nameFilters:Ljava/util/List;

    move-object/from16 v26, v0

    .line 183
    if-eqz v26, :cond_30

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_30

    .line 184
    if-eqz v19, :cond_13

    move-object/from16 v0, v19

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_24

    .line 185
    :cond_13
    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .local v19, "entryKey":Ljava/lang/String;
    move-object/from16 v13, v19

    .line 194
    .end local v19    # "entryKey":Ljava/lang/String;
    :goto_5
    if-eqz v13, :cond_14

    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_26

    .line 195
    :cond_14
    const/4 v6, 0x0

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 205
    :cond_15
    :goto_6
    if-nez v9, :cond_16

    .line 206
    sget v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 211
    :cond_16
    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_29

    .line 212
    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    .line 214
    .local v21, "key":Ljava/lang/String;
    if-nez v20, :cond_17

    .line 215
    const/16 v4, 0x2c

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 218
    :cond_17
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 221
    :cond_18
    const/4 v4, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 237
    .end local v21    # "key":Ljava/lang/String;
    :goto_7
    const/16 v20, 0x0

    .line 239
    if-nez v9, :cond_2c

    .line 240
    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 256
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v18    # "entry":Ljava/util/Map$Entry;
    .end local v20    # "first":Z
    .end local v26    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v30    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v31    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v32    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :catchall_0
    move-exception v4

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v4

    .line 95
    .restart local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v20    # "first":Z
    .restart local v24    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v30    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v34    # "typeKey":Ljava/lang/String;
    :cond_19
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 115
    .end local v24    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "typeKey":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/Object;
    .restart local v18    # "entry":Ljava/util/Map$Entry;
    .local v19, "entryKey":Ljava/lang/Object;
    .restart local v31    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :cond_1a
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1b

    move-object/from16 v0, v19

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_a

    .line 116
    :cond_1b
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_3

    .line 130
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, v19

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_c

    .line 131
    :cond_1d
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_3

    .line 146
    .end local v8    # "strKey":Ljava/lang/String;
    .restart local v32    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_1e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, v19

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_e

    .line 147
    :cond_1f
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 148
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_3

    .line 161
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_20
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_21

    move-object/from16 v0, v19

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_10

    .line 162
    :cond_21
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 163
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_3

    .line 175
    .end local v8    # "strKey":Ljava/lang/String;
    .restart local v26    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    :cond_22
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 v0, v19

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_12

    .line 176
    :cond_23
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 177
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .local v19, "entryKey":Ljava/lang/String;
    goto/16 :goto_4

    .line 186
    .end local v8    # "strKey":Ljava/lang/String;
    .end local v19    # "entryKey":Ljava/lang/String;
    :cond_24
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_25

    move-object/from16 v0, v19

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_30

    .line 187
    :cond_25
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 188
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "entryKey":Ljava/lang/String;
    move-object/from16 v13, v19

    goto/16 :goto_5

    .line 197
    .end local v8    # "strKey":Ljava/lang/String;
    .end local v19    # "entryKey":Ljava/lang/String;
    :cond_26
    instance-of v4, v13, Ljava/util/Map;

    if-nez v4, :cond_27

    instance-of v4, v13, Ljava/util/Collection;

    if-eqz v4, :cond_28

    :cond_27
    const/16 v27, 0x1

    .line 198
    .local v27, "objectOrArray":Z
    :goto_8
    if-nez v27, :cond_15

    .line 199
    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 200
    .restart local v8    # "strKey":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_6

    .line 197
    .end local v8    # "strKey":Ljava/lang/String;
    .end local v27    # "objectOrArray":Z
    :cond_28
    const/16 v27, 0x0

    goto :goto_8

    .line 223
    :cond_29
    if-nez v20, :cond_2a

    .line 224
    const/16 v4, 0x2c

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 227
    :cond_2a
    sget v4, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    instance-of v4, v13, Ljava/lang/Enum;

    if-nez v4, :cond_2b

    .line 228
    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    .line 229
    .local v33, "strEntryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 234
    .end local v33    # "strEntryKey":Ljava/lang/String;
    :goto_9
    const/16 v4, 0x3a

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_7

    .line 231
    :cond_2b
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_9

    .line 244
    :cond_2c
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 246
    .local v16, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_2d

    .line 247
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p1

    move-object v12, v9

    invoke-interface/range {v10 .. v15}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto/16 :goto_3

    .line 249
    :cond_2d
    move-object/from16 v30, v16

    .line 250
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v10

    .line 252
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p1

    move-object v12, v9

    invoke-interface/range {v10 .. v15}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 256
    .end local v9    # "value":Ljava/lang/Object;
    .end local v16    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "entry":Ljava/util/Map$Entry;
    .end local v26    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v31    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v32    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_2e
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 260
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2f

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 264
    :cond_2f
    if-nez p6, :cond_0

    .line 265
    const/16 v4, 0x7d

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 66
    .end local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v20    # "first":Z
    .end local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v30    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .restart local v9    # "value":Ljava/lang/Object;
    .restart local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v18    # "entry":Ljava/util/Map$Entry;
    .restart local v20    # "first":Z
    .restart local v26    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v29    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v30    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v31    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v32    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_30
    move-object/from16 v13, v19

    goto/16 :goto_5
.end method
