.class public Lcom/alibaba/fastjson/serializer/CharArrayCodec;
.super Ljava/lang/Object;
.source "CharArrayCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .locals 13
    .param p0, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x10

    .line 24
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 25
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 26
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v8

    .line 27
    .local v8, "val":Ljava/lang/String;
    invoke-interface {v5, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 28
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 69
    .end local v8    # "val":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 31
    :cond_1
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 32
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v8

    .line 33
    .local v8, "val":Ljava/lang/Number;
    invoke-interface {v5, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 34
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    .line 37
    .end local v8    # "val":Ljava/lang/Number;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v9

    .line 39
    .local v9, "value":Ljava/lang/Object;
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 40
    check-cast v9, Ljava/lang/String;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    .line 43
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_7

    move-object v2, v9

    .line 44
    check-cast v2, Ljava/util/Collection;

    .line 46
    .local v2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    .line 47
    .local v0, "accept":Z
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 48
    .local v3, "item":Ljava/lang/Object;
    instance-of v11, v3, Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 49
    check-cast v3, Ljava/lang/String;

    .end local v3    # "item":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 50
    .local v4, "itemLength":I
    const/4 v11, 0x1

    if-eq v4, v11, :cond_4

    .line 51
    const/4 v0, 0x0

    .line 57
    .end local v4    # "itemLength":I
    :cond_5
    if-nez v0, :cond_6

    .line 58
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "can not cast to char[]"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 61
    :cond_6
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v10

    new-array v1, v10, [C

    .line 62
    .local v1, "chars":[C
    const/4 v6, 0x0

    .line 63
    .local v6, "pos":I
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 64
    .restart local v3    # "item":Ljava/lang/Object;
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .local v7, "pos":I
    check-cast v3, Ljava/lang/String;

    .end local v3    # "item":Ljava/lang/Object;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aput-char v11, v1, v6

    move v6, v7

    .line 65
    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    goto :goto_1

    .line 69
    .end local v0    # "accept":Z
    .end local v1    # "chars":[C
    .end local v2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v6    # "pos":I
    :cond_7
    if-nez v9, :cond_8

    const/4 v10, 0x0

    :goto_2
    move-object v1, v10

    goto :goto_0

    .line 71
    :cond_8
    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    goto :goto_2
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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
    .line 19
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/CharArrayCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x4

    return v0
.end method
