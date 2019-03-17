.class public Lcom/alibaba/fastjson/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPath$Filter;,
        Lcom/alibaba/fastjson/JSONPath$FilterSegement;,
        Lcom/alibaba/fastjson/JSONPath$Operator;,
        Lcom/alibaba/fastjson/JSONPath$StringOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$RlikeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntInSegement;,
        Lcom/alibaba/fastjson/JSONPath$ValueSegment;,
        Lcom/alibaba/fastjson/JSONPath$NullSegement;,
        Lcom/alibaba/fastjson/JSONPath$NotNullSegement;,
        Lcom/alibaba/fastjson/JSONPath$RangeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;,
        Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;,
        Lcom/alibaba/fastjson/JSONPath$WildCardSegement;,
        Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;,
        Lcom/alibaba/fastjson/JSONPath$PropertySegement;,
        Lcom/alibaba/fastjson/JSONPath$SizeSegement;,
        Lcom/alibaba/fastjson/JSONPath$Segement;,
        Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    }
.end annotation


# static fields
.field static final SIZE:J = 0x4dea9618e618ae3cL

.field private static pathCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private final path:Ljava/lang/String;

.field private segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x80

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "serializeConfig"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p3, "parserConfig"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    const-string v1, "json-path can not be null or empty"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 55
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 56
    return-void
.end method

.method public static varargs arrayAdd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 386
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 387
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 401
    if-nez p0, :cond_0

    .line 402
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    const-string v2, "jsonpath can not be null"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .line 406
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    if-nez v0, :cond_1

    .line 407
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    .end local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    .line 408
    .restart local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    const/16 v2, 0x400

    if-ge v1, v2, :cond_1

    .line 409
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .line 413
    .restart local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    :cond_1
    return-object v0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 373
    const/4 v1, 0x0

    .line 377
    :goto_0
    return v1

    .line 376
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 377
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static containsValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 381
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 382
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 2115
    if-ne p0, p1, :cond_1

    .line 2116
    const/4 v0, 0x1

    .line 2135
    :cond_0
    :goto_0
    return v0

    .line 2119
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 2124
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2127
    :cond_2
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 2128
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2129
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    goto :goto_0

    .line 2135
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 14
    .param p0, "a"    # Ljava/lang/Number;
    .param p1, "b"    # Ljava/lang/Number;

    .prologue
    .line 2140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2141
    .local v2, "clazzA":Ljava/lang/Class;
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v7

    .line 2143
    .local v7, "isIntA":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 2144
    .local v3, "clazzB":Ljava/lang/Class;
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v8

    .line 2146
    .local v8, "isIntB":Z
    instance-of v9, p0, Ljava/math/BigDecimal;

    if-eqz v9, :cond_0

    move-object v4, p0

    .line 2147
    check-cast v4, Ljava/math/BigDecimal;

    .line 2149
    .local v4, "decimalA":Ljava/math/BigDecimal;
    if-eqz v8, :cond_0

    .line 2150
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2185
    .end local v4    # "decimalA":Ljava/math/BigDecimal;
    :goto_0
    return v9

    .line 2154
    :cond_0
    if-eqz v7, :cond_3

    .line 2155
    if-eqz v8, :cond_2

    .line 2156
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 2159
    :cond_2
    instance-of v9, p1, Ljava/math/BigInteger;

    if-eqz v9, :cond_3

    move-object v1, p0

    .line 2160
    check-cast v1, Ljava/math/BigInteger;

    .line 2161
    .local v1, "bigIntB":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 2163
    .local v0, "bigIntA":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0

    .line 2167
    .end local v0    # "bigIntA":Ljava/math/BigInteger;
    .end local v1    # "bigIntB":Ljava/math/BigInteger;
    :cond_3
    if-eqz v8, :cond_4

    .line 2168
    instance-of v9, p0, Ljava/math/BigInteger;

    if-eqz v9, :cond_4

    move-object v0, p0

    .line 2169
    check-cast v0, Ljava/math/BigInteger;

    .line 2170
    .restart local v0    # "bigIntA":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 2172
    .restart local v1    # "bigIntB":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0

    .line 2177
    .end local v0    # "bigIntA":Ljava/math/BigInteger;
    .end local v1    # "bigIntB":Ljava/math/BigInteger;
    :cond_4
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v5

    .line 2178
    .local v5, "isDoubleA":Z
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v6

    .line 2180
    .local v6, "isDoubleB":Z
    if-eqz v5, :cond_5

    if-nez v6, :cond_7

    :cond_5
    if-eqz v5, :cond_6

    if-nez v8, :cond_7

    :cond_6
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 2181
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    cmpl-double v9, v10, v12

    if-nez v9, :cond_8

    const/4 v9, 0x1

    goto :goto_0

    :cond_8
    const/4 v9, 0x0

    goto :goto_0

    .line 2185
    :cond_9
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 362
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected static isDouble(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2189
    .local p0, "clazzA":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isInt(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2193
    .local p0, "clazzA":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static paths(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;
    .locals 6
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 434
    .local v2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    const-string v3, "/"

    invoke-static {v2, v3, p0, p1}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 436
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v1, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 438
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method private static paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 22
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "javaObject"    # Ljava/lang/Object;
    .param p3, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 522
    :cond_0
    return-void

    .line 449
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 453
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v16, p2

    .line 456
    check-cast v16, Ljava/util/Map;

    .line 458
    .local v16, "map":Ljava/util/Map;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "entryObj":Ljava/lang/Object;
    move-object v7, v9

    .line 459
    check-cast v7, Ljava/util/Map$Entry;

    .line 460
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    .line 462
    .local v14, "key":Ljava/lang/Object;
    instance-of v0, v14, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 463
    const-string v20, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 464
    .local v17, "path":Ljava/lang/String;
    :goto_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    goto :goto_0

    .line 463
    .end local v17    # "path":Ljava/lang/String;
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 470
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "entryObj":Ljava/lang/Object;
    .end local v14    # "key":Ljava/lang/Object;
    .end local v16    # "map":Ljava/util/Map;
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v5, p2

    .line 471
    check-cast v5, Ljava/util/Collection;

    .line 473
    .local v5, "collection":Ljava/util/Collection;
    const/4 v11, 0x0

    .line 474
    .local v11, "i":I
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 475
    .local v12, "item":Ljava/lang/Object;
    const-string v20, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 476
    .restart local v17    # "path":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-static {v0, v1, v12, v2}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 477
    add-int/lit8 v11, v11, 0x1

    .line 478
    goto :goto_2

    .line 475
    .end local v17    # "path":Ljava/lang/String;
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 483
    .end local v5    # "collection":Ljava/util/Collection;
    .end local v11    # "i":I
    .end local v12    # "item":Ljava/lang/Object;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 485
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 486
    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v15

    .line 488
    .local v15, "len":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    if-ge v11, v15, :cond_0

    .line 489
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    .line 491
    .restart local v12    # "item":Ljava/lang/Object;
    const-string v19, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 492
    .restart local v17    # "path":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-static {v0, v1, v12, v2}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 488
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 491
    .end local v17    # "path":Ljava/lang/String;
    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    .line 498
    .end local v11    # "i":I
    .end local v12    # "item":Ljava/lang/Object;
    .end local v15    # "len":I
    :cond_8
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v19

    if-nez v19, :cond_0

    .line 502
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v18

    .line 503
    .local v18, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v13, v18

    .line 504
    check-cast v13, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 507
    .local v13, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    .line 508
    .local v10, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_9
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 509
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 511
    .local v14, "key":Ljava/lang/String;
    instance-of v0, v14, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 512
    const-string v20, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 513
    .restart local v17    # "path":Ljava/lang/String;
    :goto_7
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 516
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "path":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 517
    .local v6, "e":Ljava/lang/Exception;
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    const-string v20, "toJSON error"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 512
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v10    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v14    # "key":Ljava/lang/String;
    :cond_a
    :try_start_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    goto :goto_7
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 423
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 424
    .local v1, "object":Ljava/lang/Object;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 425
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "root"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 397
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 391
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 392
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static size(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 3
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 367
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 368
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public varargs arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 17
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 148
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v14, v0

    if-nez v14, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 158
    move-object/from16 v3, p1

    .line 159
    .local v3, "currentObject":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 160
    .local v9, "parentObject":Ljava/lang/Object;
    const/4 v5, 0x0

    .end local v9    # "parentObject":Ljava/lang/Object;
    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v14, v14

    if-ge v5, v14, :cond_3

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    if-ne v5, v14, :cond_2

    .line 162
    move-object v9, v3

    .line 164
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v14, v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v14, v0, v1, v3}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 167
    :cond_3
    move-object v11, v3

    .line 169
    .local v11, "result":Ljava/lang/Object;
    if-nez v11, :cond_4

    .line 170
    new-instance v14, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "value not found in path "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 173
    :cond_4
    instance-of v14, v11, Ljava/util/Collection;

    if-eqz v14, :cond_5

    move-object v2, v11

    .line 174
    check-cast v2, Ljava/util/Collection;

    .line 175
    .local v2, "collection":Ljava/util/Collection;
    move-object/from16 v0, p2

    array-length v15, v0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_0

    aget-object v13, p2, v14

    .line 176
    .local v13, "value":Ljava/lang/Object;
    invoke-interface {v2, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 181
    .end local v2    # "collection":Ljava/util/Collection;
    .end local v13    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 184
    .local v12, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 185
    invoke-static {v11}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    .line 186
    .local v7, "length":I
    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p2

    array-length v15, v0

    add-int/2addr v15, v7

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 188
    .local v4, "descArray":Ljava/lang/Object;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v11, v14, v4, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v5, v14, :cond_6

    .line 190
    add-int v14, v7, v5

    aget-object v15, p2, v5

    invoke-static {v4, v14, v15}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 189
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 193
    :cond_6
    move-object v8, v4

    .line 198
    .local v8, "newResult":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    aget-object v6, v14, v15

    .line 199
    .local v6, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v14, v6, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v14, :cond_8

    move-object v10, v6

    .line 200
    check-cast v10, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 201
    .local v10, "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v9, v8}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 195
    .end local v4    # "descArray":Ljava/lang/Object;
    .end local v6    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v7    # "length":I
    .end local v8    # "newResult":Ljava/lang/Object;
    .end local v10    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_7
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "unsupported array put operation. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 205
    .restart local v4    # "descArray":Ljava/lang/Object;
    .restart local v6    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .restart local v7    # "length":I
    .restart local v8    # "newResult":Ljava/lang/Object;
    :cond_8
    instance-of v14, v6, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v14, :cond_9

    .line 206
    check-cast v6, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .end local v6    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v9, v8}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 210
    .restart local v6    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_9
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v14}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v14
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "rootObject"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v2

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 93
    move-object v0, p1

    .line 94
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v3, v3, v1

    invoke-interface {v3, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "currentObject":Ljava/lang/Object;
    if-ne v0, p2, :cond_0

    .line 128
    .end local v0    # "currentObject":Ljava/lang/Object;
    :goto_0
    return v3

    .line 112
    .restart local v0    # "currentObject":Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_1

    move v3, v4

    .line 113
    goto :goto_0

    .line 116
    :cond_1
    instance-of v5, v0, Ljava/lang/Iterable;

    if-eqz v5, :cond_4

    .line 117
    check-cast v0, Ljava/lang/Iterable;

    .end local v0    # "currentObject":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 118
    .local v1, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 120
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v2, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v2    # "item":Ljava/lang/Object;
    :cond_3
    move v3, v4

    .line 125
    goto :goto_0

    .line 128
    .end local v1    # "it":Ljava/util/Iterator;
    .restart local v0    # "currentObject":Ljava/lang/Object;
    :cond_4
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method protected deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 15
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2297
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 2352
    :cond_0
    :goto_0
    return-void

    .line 2301
    :cond_1
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/util/Map;

    if-eqz v12, :cond_3

    move-object/from16 v10, p1

    .line 2302
    check-cast v10, Ljava/util/Map;

    .line 2304
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2305
    move-object/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2306
    .local v11, "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2310
    .end local v11    # "val":Ljava/lang/Object;
    :cond_2
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 2311
    .restart local v11    # "val":Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v11, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 2316
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v11    # "val":Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 2318
    .local v3, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v2

    .line 2319
    .local v2, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v2, :cond_5

    .line 2321
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 2322
    .local v6, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-eqz v6, :cond_4

    .line 2324
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2325
    .restart local v11    # "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2326
    .end local v11    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 2327
    .local v5, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getFieldValue error."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2338
    .end local v5    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v6    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_1
    move-exception v4

    .line 2339
    .local v4, "e":Ljava/lang/Exception;
    new-instance v12, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "jsonpath error, path "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", segement "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 2328
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_2
    move-exception v5

    .line 2329
    .local v5, "ex":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getFieldValue error."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 2333
    .end local v5    # "ex":Ljava/lang/IllegalAccessException;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 2334
    .local v7, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 2335
    .restart local v11    # "val":Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v11, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 2343
    .end local v6    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v7    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v11    # "val":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/util/List;

    if-eqz v12, :cond_0

    move-object/from16 v9, p1

    .line 2344
    check-cast v9, Ljava/util/List;

    .line 2346
    .local v9, "list":Ljava/util/List;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_0

    .line 2347
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 2348
    .restart local v11    # "val":Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v11, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 2346
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method protected deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 21
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyNameHash"    # J
    .param p5, "value"    # Ljava/lang/Object;

    .prologue
    .line 2355
    if-nez p1, :cond_1

    .line 2405
    :cond_0
    :goto_0
    return-void

    .line 2359
    :cond_1
    move-object/from16 v0, p1

    instance-of v5, v0, Ljava/util/Map;

    if-eqz v5, :cond_3

    move-object/from16 v18, p1

    .line 2360
    check-cast v18, Ljava/util/Map;

    .line 2362
    .local v18, "map":Ljava/util/Map;
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2363
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2364
    .local v6, "val":Ljava/lang/Object;
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2368
    .end local v6    # "val":Ljava/lang/Object;
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "val":Ljava/lang/Object;
    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    .line 2369
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_1

    .line 2374
    .end local v6    # "val":Ljava/lang/Object;
    .end local v18    # "map":Ljava/util/Map;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 2376
    .local v12, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v4

    .line 2377
    .local v4, "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v4, :cond_5

    .line 2379
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v14

    .line 2380
    .local v14, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v14, :cond_4

    .line 2381
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2391
    .end local v14    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :catch_0
    move-exception v13

    .line 2392
    .local v13, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jsonpath error, path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", segement "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v13}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2385
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v14    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v11

    .line 2386
    .local v11, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 2387
    .local v15, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "val":Ljava/lang/Object;
    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    .line 2388
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2396
    .end local v6    # "val":Ljava/lang/Object;
    .end local v11    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v14    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v15    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    move-object/from16 v0, p1

    instance-of v5, v0, Ljava/util/List;

    if-eqz v5, :cond_0

    move-object/from16 v17, p1

    .line 2397
    check-cast v17, Ljava/util/List;

    .line 2399
    .local v17, "list":Ljava/util/List;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v16

    if-ge v0, v5, :cond_0

    .line 2400
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "val":Ljava/lang/Object;
    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    .line 2401
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2399
    add-int/lit8 v16, v16, 0x1

    goto :goto_3
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "rootObject"    # Ljava/lang/Object;

    .prologue
    .line 72
    if-nez p1, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 83
    :cond_0
    return-object v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 78
    move-object v0, p1

    .line 79
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v2, v3, v1

    .line 81
    .local v2, "segement":Lcom/alibaba/fastjson/JSONPath$Segement;
    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method evalSize(Ljava/lang/Object;)I
    .locals 7
    .param p1, "currentObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 2495
    if-nez p1, :cond_1

    .line 2529
    .end local p1    # "currentObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 2499
    .restart local p1    # "currentObject":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Ljava/util/Collection;

    if-eqz v4, :cond_2

    .line 2500
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "currentObject":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    .line 2503
    .restart local p1    # "currentObject":Ljava/lang/Object;
    :cond_2
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 2504
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "currentObject":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    goto :goto_0

    .line 2507
    .restart local p1    # "currentObject":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2508
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 2511
    :cond_4
    instance-of v4, p1, Ljava/util/Map;

    if-eqz v4, :cond_6

    .line 2512
    const/4 v1, 0x0

    .line 2514
    .local v1, "count":I
    check-cast p1, Ljava/util/Map;

    .end local p1    # "currentObject":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2515
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_5

    .line 2516
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2522
    .end local v1    # "count":I
    .end local v3    # "value":Ljava/lang/Object;
    .restart local p1    # "currentObject":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 2524
    .local v0, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v0, :cond_0

    .line 2529
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getSize(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2530
    :catch_0
    move-exception v2

    .line 2531
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "evalSize error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 1975
    if-nez p1, :cond_1

    .line 2029
    :cond_0
    :goto_0
    return-object v6

    .line 1979
    :cond_1
    instance-of v7, p1, Ljava/util/List;

    if-eqz v7, :cond_3

    move-object v4, p1

    .line 1980
    check-cast v4, Ljava/util/List;

    .line 1982
    .local v4, "list":Ljava/util/List;
    if-ltz p2, :cond_2

    .line 1983
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge p2, v7, :cond_0

    .line 1984
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 1988
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-gt v7, v8, :cond_0

    .line 1989
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, p2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 1995
    .end local v4    # "list":Ljava/util/List;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1996
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 1998
    .local v0, "arrayLenth":I
    if-ltz p2, :cond_4

    .line 1999
    if-ge p2, v0, :cond_0

    .line 2000
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 2004
    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v0, :cond_0

    .line 2005
    add-int v7, v0, p2

    invoke-static {p1, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 2011
    .end local v0    # "arrayLenth":I
    :cond_5
    instance-of v7, p1, Ljava/util/Map;

    if-eqz v7, :cond_6

    move-object v5, p1

    .line 2012
    check-cast v5, Ljava/util/Map;

    .line 2013
    .local v5, "map":Ljava/util/Map;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2014
    .local v6, "value":Ljava/lang/Object;
    if-nez v6, :cond_0

    .line 2015
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 2020
    .end local v5    # "map":Ljava/util/Map;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v7, p1, Ljava/util/Collection;

    if-eqz v7, :cond_8

    move-object v1, p1

    .line 2021
    check-cast v1, Ljava/util/Collection;

    .line 2022
    .local v1, "collection":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 2023
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2024
    .local v3, "item":Ljava/lang/Object;
    if-ne v2, p2, :cond_7

    move-object v6, v3

    .line 2025
    goto :goto_0

    .line 2027
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 2028
    goto :goto_1

    .line 2032
    .end local v1    # "collection":Ljava/util/Collection;
    .end local v2    # "i":I
    .end local v3    # "item":Ljava/lang/Object;
    :cond_8
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7
.end method

.method protected getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;"
        }
    .end annotation

    .prologue
    .line 2483
    .local p1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 2485
    .local v0, "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 2486
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2487
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 2490
    :cond_0
    return-object v0
.end method

.method protected getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;"
        }
    .end annotation

    .prologue
    .line 2472
    .local p1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 2474
    .local v0, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 2475
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2476
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 2479
    :cond_0
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method protected getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 39
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyNameHash"    # J

    .prologue
    .line 2199
    if-nez p1, :cond_1

    .line 2200
    const/16 v37, 0x0

    .line 2291
    :cond_0
    :goto_0
    return-object v37

    .line 2203
    :cond_1
    move-object/from16 v0, p1

    instance-of v8, v0, Ljava/util/Map;

    if-eqz v8, :cond_2

    move-object/from16 v35, p1

    .line 2204
    check-cast v35, Ljava/util/Map;

    .line 2205
    .local v35, "map":Ljava/util/Map;
    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .line 2207
    .local v37, "val":Ljava/lang/Object;
    if-nez v37, :cond_0

    const-wide v8, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    cmp-long v8, v8, p3

    if-nez v8, :cond_0

    .line 2208
    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .local v37, "val":Ljava/lang/Integer;
    goto :goto_0

    .line 2214
    .end local v35    # "map":Ljava/util/Map;
    .end local v37    # "val":Ljava/lang/Integer;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 2216
    .local v13, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v7

    .line 2217
    .local v7, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v7, :cond_3

    .line 2219
    const/4 v12, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    :try_start_0
    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v37

    goto :goto_0

    .line 2220
    :catch_0
    move-exception v30

    .line 2221
    .local v30, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "jsonpath error, path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", segement "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v30

    invoke-direct {v8, v9, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 2225
    .end local v30    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p1

    instance-of v8, v0, Ljava/util/List;

    if-eqz v8, :cond_8

    move-object/from16 v34, p1

    .line 2226
    check-cast v34, Ljava/util/List;

    .line 2228
    .local v34, "list":Ljava/util/List;
    const-wide v8, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    cmp-long v8, v8, p3

    if-nez v8, :cond_4

    .line 2229
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    goto/16 :goto_0

    .line 2232
    :cond_4
    new-instance v31, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v8

    move-object/from16 v0, v31

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 2234
    .local v31, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_1
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v0, v32

    if-ge v0, v8, :cond_7

    .line 2235
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    .line 2236
    .local v36, "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v33

    .line 2237
    .local v33, "itemValue":Ljava/lang/Object;
    move-object/from16 v0, v33

    instance-of v8, v0, Ljava/util/Collection;

    if-eqz v8, :cond_6

    move-object/from16 v6, v33

    .line 2238
    check-cast v6, Ljava/util/Collection;

    .line 2239
    .local v6, "collection":Ljava/util/Collection;
    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2234
    .end local v6    # "collection":Ljava/util/Collection;
    :cond_5
    :goto_2
    add-int/lit8 v32, v32, 0x1

    goto :goto_1

    .line 2240
    :cond_6
    if-eqz v33, :cond_5

    .line 2241
    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v33    # "itemValue":Ljava/lang/Object;
    .end local v36    # "obj":Ljava/lang/Object;
    :cond_7
    move-object/from16 v37, v31

    .line 2245
    goto/16 :goto_0

    .line 2248
    .end local v31    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v32    # "i":I
    .end local v34    # "list":Ljava/util/List;
    :cond_8
    move-object/from16 v0, p1

    instance-of v8, v0, Ljava/lang/Enum;

    if-eqz v8, :cond_a

    .line 2249
    const-wide v22, -0x3b435245719ce47aL    # -1.3543099103600943E23

    .line 2250
    .local v22, "NAME":J
    const-wide v24, -0xe14383dfcdd03deL    # -5.788733405278088E240

    .local v24, "ORDINAL":J
    move-object/from16 v30, p1

    .line 2252
    check-cast v30, Ljava/lang/Enum;

    .line 2253
    .local v30, "e":Ljava/lang/Enum;
    const-wide v8, -0x3b435245719ce47aL    # -1.3543099103600943E23

    cmp-long v8, v8, p3

    if-nez v8, :cond_9

    .line 2254
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_0

    .line 2257
    :cond_9
    const-wide v8, -0xe14383dfcdd03deL    # -5.788733405278088E240

    cmp-long v8, v8, p3

    if-nez v8, :cond_a

    .line 2258
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    goto/16 :goto_0

    .line 2262
    .end local v22    # "NAME":J
    .end local v24    # "ORDINAL":J
    .end local v30    # "e":Ljava/lang/Enum;
    :cond_a
    move-object/from16 v0, p1

    instance-of v8, v0, Ljava/util/Calendar;

    if-eqz v8, :cond_10

    .line 2263
    const-wide v28, 0x7c64634977425edcL

    .line 2264
    .local v28, "YEAR":J
    const-wide v20, -0xb423c6c9050a95bL

    .line 2265
    .local v20, "MONTH":J
    const-wide v14, -0x3572c6e70ba870e3L    # -1.3667045267075351E51

    .line 2266
    .local v14, "DAY":J
    const-wide v16, 0x407efecc7eb5764fL    # 495.924925526463

    .line 2267
    .local v16, "HOUR":J
    const-wide v18, 0x5bb2f9bdf2fad1e9L    # 5.387565597711505E133

    .line 2268
    .local v18, "MINUTE":J
    const-wide v26, -0x5b667a10b311df43L

    .local v26, "SECOND":J
    move-object/from16 v30, p1

    .line 2270
    check-cast v30, Ljava/util/Calendar;

    .line 2271
    .local v30, "e":Ljava/util/Calendar;
    const-wide v8, 0x7c64634977425edcL

    cmp-long v8, v8, p3

    if-nez v8, :cond_b

    .line 2272
    const/4 v8, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    goto/16 :goto_0

    .line 2274
    :cond_b
    const-wide v8, -0xb423c6c9050a95bL

    cmp-long v8, v8, p3

    if-nez v8, :cond_c

    .line 2275
    const/4 v8, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    goto/16 :goto_0

    .line 2277
    :cond_c
    const-wide v8, -0x3572c6e70ba870e3L    # -1.3667045267075351E51

    cmp-long v8, v8, p3

    if-nez v8, :cond_d

    .line 2278
    const/4 v8, 0x5

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    goto/16 :goto_0

    .line 2280
    :cond_d
    const-wide v8, 0x407efecc7eb5764fL    # 495.924925526463

    cmp-long v8, v8, p3

    if-nez v8, :cond_e

    .line 2281
    const/16 v8, 0xb

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    goto/16 :goto_0

    .line 2283
    :cond_e
    const-wide v8, 0x5bb2f9bdf2fad1e9L    # 5.387565597711505E133

    cmp-long v8, v8, p3

    if-nez v8, :cond_f

    .line 2284
    const/16 v8, 0xc

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    goto/16 :goto_0

    .line 2286
    :cond_f
    const-wide v8, -0x5b667a10b311df43L

    cmp-long v8, v8, p3

    if-nez v8, :cond_10

    .line 2287
    const/16 v8, 0xd

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    goto/16 :goto_0

    .line 2291
    .end local v14    # "DAY":J
    .end local v16    # "HOUR":J
    .end local v18    # "MINUTE":J
    .end local v20    # "MONTH":J
    .end local v26    # "SECOND":J
    .end local v28    # "YEAR":J
    .end local v30    # "e":Ljava/util/Calendar;
    :cond_10
    const/16 v37, 0x0

    goto/16 :goto_0
.end method

.method protected getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 7
    .param p1, "currentObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2094
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2096
    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 2098
    .local v0, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v0, :cond_0

    .line 2100
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2108
    :goto_0
    return-object v4

    .line 2101
    :catch_0
    move-exception v2

    .line 2102
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jsonpath error, path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2106
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    instance-of v4, p1, Ljava/util/Map;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 2107
    check-cast v3, Ljava/util/Map;

    .line 2108
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    goto :goto_0

    .line 2111
    .end local v3    # "map":Ljava/util/Map;
    :cond_1
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 59
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    if-eqz v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v1, "*"

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson/JSONPath$Segement;

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "parser":Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->explain()[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "rootObject"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 214
    if-nez p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v9

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 220
    move-object v1, p1

    .line 221
    .local v1, "currentObject":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 222
    .local v5, "parentObject":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v10, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v10, v10

    if-ge v2, v10, :cond_2

    .line 223
    iget-object v10, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    if-ne v2, v10, :cond_5

    .line 224
    move-object v5, v1

    .line 233
    .end local v5    # "parentObject":Ljava/lang/Object;
    :cond_2
    if-eqz v5, :cond_0

    .line 237
    iget-object v10, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    iget-object v11, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-object v4, v10, v11

    .line 238
    .local v4, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v10, v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v10, :cond_7

    move-object v7, v4

    .line 239
    check-cast v7, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 241
    .local v7, "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    instance-of v10, v5, Ljava/util/Collection;

    if-eqz v10, :cond_6

    .line 242
    iget-object v10, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v10, v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_6

    .line 243
    iget-object v10, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    iget-object v11, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x2

    aget-object v6, v10, v11

    .line 244
    .local v6, "parentSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v10, v6, Lcom/alibaba/fastjson/JSONPath$RangeSegement;

    if-nez v10, :cond_3

    instance-of v10, v6, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;

    if-eqz v10, :cond_6

    :cond_3
    move-object v0, v5

    .line 245
    check-cast v0, Ljava/util/Collection;

    .line 246
    .local v0, "collection":Ljava/util/Collection;
    const/4 v9, 0x0

    .line 247
    .local v9, "removedOnce":Z
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 248
    .local v3, "item":Ljava/lang/Object;
    invoke-virtual {v7, p0, v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v8

    .line 249
    .local v8, "removed":Z
    if-eqz v8, :cond_4

    .line 250
    const/4 v9, 0x1

    goto :goto_2

    .line 227
    .end local v0    # "collection":Ljava/util/Collection;
    .end local v3    # "item":Ljava/lang/Object;
    .end local v4    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v6    # "parentSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v7    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    .end local v8    # "removed":Z
    .end local v9    # "removedOnce":Z
    .restart local v5    # "parentObject":Ljava/lang/Object;
    :cond_5
    iget-object v10, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v10, v10, v2

    invoke-interface {v10, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_2

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 257
    .end local v5    # "parentObject":Ljava/lang/Object;
    .restart local v4    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .restart local v7    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_6
    invoke-virtual {v7, p0, v5}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0

    .line 260
    .end local v7    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_7
    instance-of v10, v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v10, :cond_8

    .line 261
    check-cast v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .end local v4    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    invoke-virtual {v4, p0, v5}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0

    .line 264
    .restart local v4    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_8
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v10}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v10
.end method

.method public removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z
    .locals 6
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "currentObject"    # Ljava/lang/Object;
    .param p3, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 2069
    instance-of v4, p2, Ljava/util/List;

    if-eqz v4, :cond_3

    move-object v1, p2

    .line 2070
    check-cast v1, Ljava/util/List;

    .line 2071
    .local v1, "list":Ljava/util/List;
    if-ltz p3, :cond_2

    .line 2072
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt p3, v4, :cond_1

    .line 2085
    :cond_0
    :goto_0
    return v3

    .line 2075
    :cond_1
    invoke-interface {v1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2085
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2077
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int v2, v4, p3

    .line 2079
    .local v2, "newIndex":I
    if-ltz v2, :cond_0

    .line 2083
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2088
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "newIndex":I
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2089
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported set operation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected removePropertyValue(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 8
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2446
    instance-of v6, p1, Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 2447
    check-cast p1, Ljava/util/Map;

    .end local p1    # "parent":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2448
    .local v3, "origin":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 2465
    .end local v3    # "origin":Ljava/lang/Object;
    :goto_0
    return v4

    .restart local v3    # "origin":Ljava/lang/Object;
    :cond_0
    move v4, v5

    .line 2448
    goto :goto_0

    .line 2451
    .end local v3    # "origin":Ljava/lang/Object;
    .restart local p1    # "parent":Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 2453
    .local v1, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v0, 0x0

    .line 2454
    .local v0, "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    instance-of v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v6, :cond_2

    move-object v0, v1

    .line 2455
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 2458
    :cond_2
    if-eqz v0, :cond_4

    .line 2459
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    .line 2460
    .local v2, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v2, :cond_3

    move v4, v5

    .line 2461
    goto :goto_0

    .line 2464
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2468
    .end local v2    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_4
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 22
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "p"    # Z

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 273
    const/16 v20, 0x0

    .line 354
    :goto_0
    return v20

    .line 276
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 278
    move-object/from16 v5, p1

    .line 279
    .local v5, "currentObject":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 280
    .local v15, "parentObject":Ljava/lang/Object;
    const/4 v9, 0x0

    .end local v15    # "parentObject":Ljava/lang/Object;
    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_8

    .line 286
    move-object v15, v5

    .line 287
    .restart local v15    # "parentObject":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-object/from16 v20, v0

    aget-object v19, v20, v9

    .line 288
    .local v19, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v5}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 289
    if-nez v5, :cond_3

    .line 290
    const/4 v12, 0x0

    .line 291
    .local v12, "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v9, v0, :cond_1

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-object/from16 v20, v0

    add-int/lit8 v21, v9, 0x1

    aget-object v12, v20, v21

    .line 295
    :cond_1
    const/4 v11, 0x0

    .line 296
    .local v11, "newObj":Ljava/lang/Object;
    instance-of v0, v12, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 297
    const/4 v4, 0x0

    .line 298
    .local v4, "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    const/4 v7, 0x0

    .line 299
    .local v7, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v20, v19

    .line 300
    check-cast v20, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->access$000(Lcom/alibaba/fastjson/JSONPath$PropertySegement;)Ljava/lang/String;

    move-result-object v17

    .line 301
    .local v17, "propertyName":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 302
    .local v14, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v13

    .line 303
    .local v13, "parentBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v13, :cond_2

    .line 304
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v8

    .line 305
    .local v8, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 306
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v4

    .line 310
    .end local v8    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v13    # "parentBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v14    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "propertyName":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_5

    .line 312
    iget-object v0, v4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 313
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "newObj":Ljava/lang/Object;
    :goto_2
    move-object v6, v11

    .line 324
    .end local v4    # "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    if-eqz v6, :cond_8

    .line 325
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v16, v19

    .line 326
    check-cast v16, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 327
    .local v16, "propSegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v15, v6}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v5    # "currentObject":Ljava/lang/Object;
    .local v6, "currentObject":Ljava/lang/Object;
    move-object v5, v6

    .line 280
    .end local v6    # "currentObject":Ljava/lang/Object;
    .end local v12    # "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v16    # "propSegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    .restart local v5    # "currentObject":Ljava/lang/Object;
    :cond_3
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 315
    .restart local v4    # "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .restart local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "newObj":Ljava/lang/Object;
    .restart local v12    # "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 318
    :cond_5
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    .end local v11    # "newObj":Ljava/lang/Object;
    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .local v11, "newObj":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_2

    .line 320
    .end local v4    # "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v11, "newObj":Ljava/lang/Object;
    :cond_6
    instance-of v0, v12, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 321
    new-instance v11, Lcom/alibaba/fastjson/JSONArray;

    .end local v11    # "newObj":Ljava/lang/Object;
    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .local v11, "newObj":Lcom/alibaba/fastjson/JSONArray;
    move-object v6, v11

    goto :goto_3

    .line 330
    .end local v11    # "newObj":Lcom/alibaba/fastjson/JSONArray;
    :cond_7
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v3, v19

    .line 331
    check-cast v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .line 332
    .local v3, "arrayAccessSegement":Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v15, v6}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    .end local v5    # "currentObject":Ljava/lang/Object;
    .restart local v6    # "currentObject":Ljava/lang/Object;
    move-object v5, v6

    .line 334
    .end local v6    # "currentObject":Ljava/lang/Object;
    .restart local v5    # "currentObject":Ljava/lang/Object;
    goto :goto_4

    .line 342
    .end local v3    # "arrayAccessSegement":Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;
    .end local v12    # "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v15    # "parentObject":Ljava/lang/Object;
    .end local v19    # "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_8
    if-nez v15, :cond_9

    .line 343
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 346
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v10, v20, v21

    .line 347
    .local v10, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v0, v10, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v18, v10

    .line 348
    check-cast v18, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 349
    .local v18, "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v15, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 353
    .end local v18    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_a
    instance-of v0, v10, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 354
    check-cast v10, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .end local v10    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v15, v1}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    goto/16 :goto_0

    .line 357
    .restart local v10    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_b
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v20

    .end local v10    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .local v11, "newObj":Ljava/lang/Object;
    .restart local v12    # "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .restart local v15    # "parentObject":Ljava/lang/Object;
    .restart local v19    # "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_c
    move-object v6, v11

    goto/16 :goto_3
.end method

.method public setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 6
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "currentObject"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 2037
    instance-of v3, p2, Ljava/util/List;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 2038
    check-cast v2, Ljava/util/List;

    .line 2039
    .local v2, "list":Ljava/util/List;
    if-ltz p3, :cond_1

    .line 2040
    invoke-interface {v2, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2061
    .end local v2    # "list":Ljava/util/List;
    :cond_0
    :goto_0
    return v4

    .line 2042
    .restart local v2    # "list":Ljava/util/List;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, p3

    invoke-interface {v2, v3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2047
    .end local v2    # "list":Ljava/util/List;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2048
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2049
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 2051
    .local v0, "arrayLenth":I
    if-ltz p3, :cond_3

    .line 2052
    if-ge p3, v0, :cond_0

    .line 2053
    invoke-static {p2, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 2056
    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v0, :cond_0

    .line 2057
    add-int v3, v0, p3

    invoke-static {p2, v3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 2064
    .end local v0    # "arrayLenth":I
    :cond_4
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported set operation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z
    .locals 13
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "propertyNameHash"    # J
    .param p5, "value"    # Ljava/lang/Object;

    .prologue
    .line 2409
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 2410
    check-cast p1, Ljava/util/Map;

    .end local p1    # "parent":Ljava/lang/Object;
    move-object/from16 v0, p5

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    const/4 v3, 0x1

    .line 2438
    :goto_0
    return v3

    .line 2414
    .restart local p1    # "parent":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 2415
    check-cast p1, Ljava/util/List;

    .end local p1    # "parent":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2416
    .local v4, "element":Ljava/lang/Object;
    if-eqz v4, :cond_1

    move-object v3, p0

    move-object v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    .line 2419
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z

    goto :goto_1

    .line 2421
    .end local v4    # "element":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 2424
    .restart local p1    # "parent":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    .line 2426
    .local v9, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v2, 0x0

    .line 2427
    .local v2, "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    instance-of v3, v9, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v3, :cond_4

    move-object v2, v9

    .line 2428
    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 2431
    :cond_4
    if-eqz v2, :cond_6

    .line 2432
    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v10

    .line 2433
    .local v10, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v10, :cond_5

    .line 2434
    const/4 v3, 0x0

    goto :goto_0

    .line 2437
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v10, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2438
    const/4 v3, 0x1

    goto :goto_0

    .line 2441
    .end local v10    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_6
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public size(Ljava/lang/Object;)I
    .locals 3
    .param p1, "rootObject"    # Ljava/lang/Object;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const/4 v2, -0x1

    .line 143
    :goto_0
    return v2

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 138
    move-object v0, p1

    .line 139
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v2, v2, v1

    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
