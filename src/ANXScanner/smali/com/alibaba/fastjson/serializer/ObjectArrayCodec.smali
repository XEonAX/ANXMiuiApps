.class public Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;
.super Ljava/lang/Object;
.source "ObjectArrayCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .locals 11
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "array"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_0

    .line 191
    const/4 v3, 0x0

    .line 242
    :goto_0
    return-object v3

    .line 194
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 196
    .local v4, "size":I
    invoke-static {p2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 197
    .local v3, "objArray":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_8

    .line 198
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 200
    .local v5, "value":Ljava/lang/Object;
    if-ne v5, p3, :cond_1

    .line 201
    invoke-static {v3, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 197
    .end local v5    # "value":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 207
    invoke-virtual {p2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 208
    move-object v1, v5

    .line 213
    .end local v5    # "value":Ljava/lang/Object;
    .local v1, "element":Ljava/lang/Object;
    :goto_3
    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 210
    .end local v1    # "element":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_2
    check-cast v5, Lcom/alibaba/fastjson/JSONArray;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, v5}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "element":Ljava/lang/Object;
    goto :goto_3

    .line 215
    .end local v1    # "element":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    .line 216
    .restart local v1    # "element":Ljava/lang/Object;
    instance-of v10, v5, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v10, :cond_6

    .line 217
    const/4 v0, 0x0

    .local v0, "contains":Z
    move-object v6, v5

    .line 218
    check-cast v6, Lcom/alibaba/fastjson/JSONArray;

    .line 219
    .local v6, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    .line 220
    .local v7, "valueArraySize":I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_4
    if-ge v9, v7, :cond_5

    .line 221
    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 222
    .local v8, "valueItem":Ljava/lang/Object;
    if-ne v8, p3, :cond_4

    .line 223
    invoke-virtual {v6, v2, v3}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/4 v0, 0x1

    .line 220
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 227
    .end local v8    # "valueItem":Ljava/lang/Object;
    :cond_5
    if-eqz v0, :cond_6

    .line 228
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 232
    .end local v0    # "contains":Z
    .end local v1    # "element":Ljava/lang/Object;
    .end local v6    # "valueArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "valueArraySize":I
    .end local v9    # "y":I
    :cond_6
    if-nez v1, :cond_7

    .line 233
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v10

    invoke-static {v5, p2, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    .line 235
    :cond_7
    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 240
    .end local v5    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 129
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 130
    .local v9, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    .line 131
    .local v14, "token":I
    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    .line 132
    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-interface {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 133
    const/4 v4, 0x0

    .line 185
    :cond_0
    :goto_0
    return-object v4

    .line 136
    :cond_1
    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    const/16 v16, 0x1a

    move/from16 v0, v16

    if-ne v14, v0, :cond_3

    .line 137
    :cond_2
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v4

    .line 138
    .local v4, "bytes":[B
    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-interface {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 140
    array-length v0, v4

    move/from16 v16, v0

    if-nez v16, :cond_0

    const-class v16, [B

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 141
    const/4 v4, 0x0

    goto :goto_0

    .line 149
    .end local v4    # "bytes":[B
    :cond_3
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v5, p2

    .line 150
    check-cast v5, Ljava/lang/reflect/GenericArrayType;

    .line 151
    .local v5, "clazz":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v5}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 152
    .local v7, "componentType":Ljava/lang/reflect/Type;
    instance-of v0, v7, Ljava/lang/reflect/TypeVariable;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    move-object v15, v7

    .line 153
    check-cast v15, Ljava/lang/reflect/TypeVariable;

    .line 154
    .local v15, "typeVar":Ljava/lang/reflect/TypeVariable;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/ParseContext;->type:Ljava/lang/reflect/Type;

    .line 155
    .local v12, "objType":Ljava/lang/reflect/Type;
    instance-of v0, v12, Ljava/lang/reflect/ParameterizedType;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    move-object v10, v12

    .line 156
    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 157
    .local v10, "objParamType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 158
    .local v11, "objRawType":Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .line 159
    .local v2, "actualType":Ljava/lang/reflect/Type;
    instance-of v0, v11, Ljava/lang/Class;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 160
    check-cast v11, Ljava/lang/Class;

    .end local v11    # "objRawType":Ljava/lang/reflect/Type;
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v13

    .line 161
    .local v13, "objTypeParams":[Ljava/lang/reflect/TypeVariable;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_5

    .line 162
    aget-object v16, v13, v8

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v15}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 163
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    aget-object v2, v16, v8

    .line 161
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 167
    .end local v8    # "i":I
    .end local v13    # "objTypeParams":[Ljava/lang/reflect/TypeVariable;
    :cond_5
    instance-of v0, v2, Ljava/lang/Class;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object v6, v2

    .line 168
    check-cast v6, Ljava/lang/Class;

    .line 182
    .end local v2    # "actualType":Ljava/lang/reflect/Type;
    .end local v5    # "clazz":Ljava/lang/reflect/GenericArrayType;
    .end local v10    # "objParamType":Ljava/lang/reflect/ParameterizedType;
    .end local v12    # "objType":Ljava/lang/reflect/Type;
    .end local v15    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .local v6, "componentClass":Ljava/lang/Class;
    :goto_2
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 183
    .local v3, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v7, v3, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v3}, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 170
    .end local v3    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v6    # "componentClass":Ljava/lang/Class;
    .restart local v2    # "actualType":Ljava/lang/reflect/Type;
    .restart local v5    # "clazz":Ljava/lang/reflect/GenericArrayType;
    .restart local v10    # "objParamType":Ljava/lang/reflect/ParameterizedType;
    .restart local v12    # "objType":Ljava/lang/reflect/Type;
    .restart local v15    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_6
    const-class v6, Ljava/lang/Object;

    .restart local v6    # "componentClass":Ljava/lang/Class;
    goto :goto_2

    .line 173
    .end local v2    # "actualType":Ljava/lang/reflect/Type;
    .end local v6    # "componentClass":Ljava/lang/Class;
    .end local v10    # "objParamType":Ljava/lang/reflect/ParameterizedType;
    :cond_7
    invoke-interface {v15}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .restart local v6    # "componentClass":Ljava/lang/Class;
    goto :goto_2

    .line 176
    .end local v6    # "componentClass":Ljava/lang/Class;
    .end local v12    # "objType":Ljava/lang/reflect/Type;
    .end local v15    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_8
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .restart local v6    # "componentClass":Ljava/lang/Class;
    goto :goto_2

    .end local v5    # "clazz":Ljava/lang/reflect/GenericArrayType;
    .end local v6    # "componentClass":Ljava/lang/Class;
    .end local v7    # "componentType":Ljava/lang/reflect/Type;
    :cond_9
    move-object/from16 v5, p2

    .line 179
    check-cast v5, Ljava/lang/Class;

    .line 180
    .local v5, "clazz":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    .restart local v6    # "componentClass":Ljava/lang/Class;
    move-object v7, v6

    .restart local v7    # "componentType":Ljava/lang/reflect/Type;
    goto :goto_2
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0xe

    return v0
.end method

.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 17
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
    .line 44
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .local v14, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    move-object/from16 v4, p2

    .line 46
    check-cast v4, [Ljava/lang/Object;

    move-object v9, v4

    check-cast v9, [Ljava/lang/Object;

    .line 48
    .local v9, "array":[Ljava/lang/Object;
    if-nez p2, :cond_0

    .line 49
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 125
    :goto_0
    return-void

    .line 53
    :cond_0
    array-length v0, v9

    move/from16 v16, v0

    .line 55
    .local v16, "size":I
    add-int/lit8 v12, v16, -0x1

    .line 57
    .local v12, "end":I
    const/4 v4, -0x1

    if-ne v12, v4, :cond_1

    .line 58
    const-string v4, "[]"

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_0

    .line 62
    :cond_1
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 63
    .local v11, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 66
    const/4 v15, 0x0

    .line 67
    .local v15, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 68
    .local v3, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/16 v4, 0x5b

    :try_start_0
    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 70
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 73
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    .line 74
    if-eqz v13, :cond_2

    .line 75
    const/16 v4, 0x2c

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 78
    :cond_2
    aget-object v4, v9, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 73
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 82
    const/16 v4, 0x5d

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_0

    .line 86
    .end local v13    # "i":I
    :cond_4
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    if-ge v13, v12, :cond_8

    .line 87
    :try_start_1
    aget-object v5, v9, v13

    .line 89
    .local v5, "item":Ljava/lang/Object;
    if-nez v5, :cond_5

    .line 90
    const-string v4, "null,"

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 86
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 92
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 93
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 106
    :goto_4
    const/16 v4, 0x2c

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 123
    .end local v5    # "item":Ljava/lang/Object;
    .end local v13    # "i":I
    :catchall_0
    move-exception v4

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v4

    .line 95
    .restart local v5    # "item":Ljava/lang/Object;
    .restart local v13    # "i":I
    :cond_6
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 97
    .local v10, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v10, v15, :cond_7

    .line 98
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_4

    .line 100
    :cond_7
    move-object v15, v10

    .line 101
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .line 103
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_4

    .line 110
    .end local v5    # "item":Ljava/lang/Object;
    .end local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    aget-object v5, v9, v12

    .line 112
    .restart local v5    # "item":Ljava/lang/Object;
    if-nez v5, :cond_9

    .line 113
    const-string v4, "null]"

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :goto_5
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_0

    .line 115
    :cond_9
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 116
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 120
    :goto_6
    const/16 v4, 0x5d

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_5

    .line 118
    :cond_a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method
