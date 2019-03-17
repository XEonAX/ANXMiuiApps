.class public final Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ResolveFieldDeserializer.java"


# instance fields
.field private final collection:Ljava/util/Collection;

.field private final index:I

.field private final key:Ljava/lang/Object;

.field private final list:Ljava/util/List;

.field private final map:Ljava/util/Map;

.field private final parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "list"    # Ljava/util/List;
    .param p3, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 27
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .line 28
    iput p3, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    .line 29
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    .line 34
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v1, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 53
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    .line 55
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    .line 57
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    .line 58
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "index"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, v1, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 40
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    .line 42
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    .line 47
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    .line 48
    return-void
.end method


# virtual methods
.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 65
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 66
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    if-eqz v4, :cond_2

    .line 71
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    invoke-interface {v4, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    iget v5, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    invoke-interface {v4, v5, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    instance-of v4, v4, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_0

    .line 78
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    check-cast v3, Lcom/alibaba/fastjson/JSONArray;

    .line 79
    .local v3, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->getRelatedArray()Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "array":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 82
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 84
    .local v1, "arrayLength":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    if-le v1, v4, :cond_0

    .line 86
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 87
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    .line 91
    .local v2, "item":Ljava/lang/Object;
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    invoke-static {v0, v4, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 89
    .end local v2    # "item":Ljava/lang/Object;
    :cond_3
    move-object v2, p2

    .restart local v2    # "item":Ljava/lang/Object;
    goto :goto_1
.end method
