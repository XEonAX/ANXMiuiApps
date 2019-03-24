.class public Lcom/miui/internal/vip/utils/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# static fields
.field private static final sCompatibleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final sPrimToBoxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    .line 20
    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Short;

    aput-object v4, v3, v5

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const-class v6, Ljava/lang/Integer;

    aput-object v6, v4, v2

    const-class v6, Ljava/lang/Long;

    const/4 v7, 0x2

    aput-object v6, v4, v7

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const-class v6, Ljava/lang/Float;

    aput-object v6, v4, v2

    const-class v6, Ljava/lang/Double;

    aput-object v6, v4, v7

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sCompatibleMap:Ljava/util/Map;

    .line 27
    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sCompatibleMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const-class v6, Ljava/lang/Integer;

    aput-object v6, v4, v2

    const-class v6, Ljava/lang/Long;

    aput-object v6, v4, v7

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sCompatibleMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Float;

    aput-object v4, v3, v2

    const-class v2, Ljava/lang/Double;

    aput-object v2, v3, v7

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 12
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .line 309
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 310
    return v0

    .line 312
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 315
    :cond_1
    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_6

    .line 316
    aget-object v3, p0, v2

    .line 317
    .local v3, "a1":Ljava/lang/Object;
    aget-object v4, p1, v2

    .line 318
    .local v4, "a2":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 319
    .local v5, "c1":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 320
    .local v6, "c2":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 321
    .local v7, "equal":Z
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 322
    invoke-static {v3}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/internal/vip/utils/ReflectionUtils;->arrayEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    goto :goto_3

    .line 324
    :cond_2
    const/4 v8, 0x2

    if-eq v5, v6, :cond_4

    invoke-static {v5, v6}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isTypeMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 334
    :cond_3
    const-string v9, "arrayEquals, class not matched, c1 = %s, c2 = %s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v1

    aput-object v6, v8, v0

    invoke-static {v9, v8}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 326
    :cond_4
    :goto_1
    :try_start_0
    invoke-static {v4, v5}, Lcom/miui/internal/vip/utils/ReflectionUtils;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 327
    .local v9, "ac2":Ljava/lang/Object;
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v10

    .end local v9    # "ac2":Ljava/lang/Object;
    goto :goto_2

    .line 328
    :catch_0
    move-exception v9

    .line 329
    .local v9, "e":Ljava/lang/Exception;
    const-string v10, "arrayEquals, convert failed, a2 = %s, c1 = %s, c2 = %s, %s"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v1

    aput-object v5, v11, v0

    aput-object v6, v11, v8

    const/4 v8, 0x3

    aput-object v9, v11, v8

    invoke-static {v10, v11}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    const/4 v7, 0x0

    .line 332
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 337
    :goto_3
    if-nez v7, :cond_5

    .line 338
    return v1

    .line 315
    .end local v3    # "a1":Ljava/lang/Object;
    .end local v4    # "a2":Ljava/lang/Object;
    .end local v5    # "c1":Ljava/lang/Class;
    .end local v6    # "c2":Ljava/lang/Class;
    .end local v7    # "equal":Z
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "i":I
    :cond_6
    return v0

    .line 313
    :cond_7
    :goto_4
    return v1
.end method

.method public static convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x0

    const-string v1, "valueOf"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v0, p1, v1, v3, v2}, Lcom/miui/internal/vip/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convertArray([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "clz"    # Ljava/lang/Class;

    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 108
    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toIntArray([Ljava/lang/Object;)[I

    move-result-object v0

    return-object v0

    .line 109
    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 110
    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toLongArray([Ljava/lang/Object;)[J

    move-result-object v0

    return-object v0

    .line 111
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 112
    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toFloatArray([Ljava/lang/Object;)[F

    move-result-object v0

    return-object v0

    .line 113
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 114
    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toDoubleArray([Ljava/lang/Object;)[D

    move-result-object v0

    return-object v0

    .line 115
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 116
    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toShorteArray([Ljava/lang/Object;)[S

    move-result-object v0

    return-object v0

    .line 117
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 118
    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toByteArray([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 119
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 120
    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toCharArray([Ljava/lang/Object;)[C

    move-result-object v0

    return-object v0

    .line 123
    :cond_7
    return-object p0
.end method

.method public static createArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "I)[TT;"
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static createInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 35
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 36
    .local v1, "cstr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 37
    .end local v1    # "cstr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "createInstance for %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 45
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 46
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 47
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getUnboxedClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "clz"    # Ljava/lang/Class;

    .line 239
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_0

    .line 240
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 241
    :cond_0
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_1

    .line 242
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 243
    :cond_1
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_2

    .line 244
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 245
    :cond_2
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_3

    .line 246
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 247
    :cond_3
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_4

    .line 248
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 249
    :cond_4
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_5

    .line 250
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 251
    :cond_5
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_6

    .line 252
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 254
    :cond_6
    return-object p0
.end method

.method private static getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "clz"    # Ljava/lang/Class;

    .line 258
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 259
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 260
    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 261
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 262
    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 263
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 264
    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 265
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 266
    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 267
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 268
    const-class v0, Ljava/lang/Short;

    return-object v0

    .line 269
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 270
    const-class v0, Ljava/lang/Byte;

    return-object v0

    .line 271
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 272
    const-class v0, Ljava/lang/Character;

    return-object v0

    .line 275
    :cond_6
    return-object p0
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "funcName"    # Ljava/lang/String;
    .param p3, "argsType"    # [Ljava/lang/Class;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 54
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 55
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {v4, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 61
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 62
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "ReflectionUtils.invokeMethod failed, funcName = %s, args = %s, %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 63
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    aput-object v4, v3, v0

    .line 62
    invoke-static {v5, v3}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 58
    :catch_1
    move-exception v4

    .line 59
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "ReflectionUtils.invokeMethod failed, funcName = %s, args = %s, %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 60
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    aput-object v1, v3, v0

    .line 59
    invoke-static {v5, v3}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    nop

    .line 65
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isBuiltIn(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 345
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    .line 346
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 347
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Long;

    .line 348
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 349
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    .line 350
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 351
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Short;

    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 353
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Float;

    .line 354
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 355
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Double;

    .line 356
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 357
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 345
    :goto_1
    return v0
.end method

.method public static isCompatibleClass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "paramCls"    # Ljava/lang/Class;
    .param p1, "reqCls"    # Ljava/lang/Class;

    .line 298
    sget-object v0, Lcom/miui/internal/vip/utils/ReflectionUtils;->sCompatibleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/miui/internal/vip/utils/Utils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInnerClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 69
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTypeMatched(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 279
    .local p0, "paramCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "reqCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 280
    invoke-static {p0, p1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isCompatibleClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 282
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 294
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 285
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    move-object v0, p0

    .line 287
    .local v0, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 289
    .end local v0    # "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    move-object v0, p1

    .line 290
    .restart local v0    # "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p0

    .line 292
    .restart local v1    # "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    sget-object v2, Lcom/miui/internal/vip/utils/ReflectionUtils;->sPrimToBoxMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 281
    .end local v0    # "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method private static toByteArray([Ljava/lang/Object;)[B
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .line 223
    const/4 v0, 0x0

    array-length v1, p0

    new-array v1, v1, [B

    .line 224
    .local v1, "ret":[B
    nop

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 225
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method private static toCharArray([Ljava/lang/Object;)[C
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .line 231
    const/4 v0, 0x0

    array-length v1, p0

    new-array v1, v1, [C

    .line 232
    .local v1, "ret":[C
    nop

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 233
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method private static toDoubleArray([Ljava/lang/Object;)[D
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .line 215
    const/4 v0, 0x0

    array-length v1, p0

    new-array v1, v1, [D

    .line 216
    .local v1, "ret":[D
    nop

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 217
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method private static toFloatArray([Ljava/lang/Object;)[F
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .line 199
    const/4 v0, 0x0

    array-length v1, p0

    new-array v1, v1, [F

    .line 200
    .local v1, "ret":[F
    nop

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 201
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method private static toIntArray([Ljava/lang/Object;)[I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    array-length v1, p0

    new-array v1, v1, [I

    .line 184
    .local v1, "ret":[I
    nop

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 185
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method private static toLongArray([Ljava/lang/Object;)[J
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .line 191
    const/4 v0, 0x0

    array-length v1, p0

    new-array v1, v1, [J

    .line 192
    .local v1, "ret":[J
    nop

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 193
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public static toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;

    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 81
    .local v0, "ct":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 82
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 83
    move-object v1, p0

    check-cast v1, [I

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([I)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 84
    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 85
    move-object v1, p0

    check-cast v1, [J

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([J)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 86
    :cond_2
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 87
    move-object v1, p0

    check-cast v1, [F

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([F)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 88
    :cond_3
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 89
    move-object v1, p0

    check-cast v1, [D

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([D)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 90
    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 91
    move-object v1, p0

    check-cast v1, [S

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([S)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 92
    :cond_5
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 93
    move-object v1, p0

    check-cast v1, [B

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([B)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 94
    :cond_6
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 95
    move-object v1, p0

    check-cast v1, [C

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray([C)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 98
    :cond_7
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method private static toObjectArray([B)[Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # [B

    .line 167
    const-class v0, Ljava/lang/Byte;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 168
    .local v0, "objArray":[Ljava/lang/Object;
    nop

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 169
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static toObjectArray([C)[Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # [C

    .line 175
    const-class v0, Ljava/lang/Character;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "objArray":[Ljava/lang/Object;
    nop

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 177
    aget-char v2, p0, v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static toObjectArray([D)[Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # [D

    .line 151
    const-class v0, Ljava/lang/Double;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "objArray":[Ljava/lang/Object;
    nop

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 153
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static toObjectArray([F)[Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # [F

    .line 143
    const-class v0, Ljava/lang/Float;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, "objArray":[Ljava/lang/Object;
    nop

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 145
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static toObjectArray([I)[Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # [I

    .line 127
    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "objArray":[Ljava/lang/Object;
    nop

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 129
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static toObjectArray([J)[Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # [J

    .line 135
    const-class v0, Ljava/lang/Long;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "objArray":[Ljava/lang/Object;
    nop

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 137
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static toObjectArray([S)[Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # [S

    .line 159
    const-class v0, Ljava/lang/Short;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, v2}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "objArray":[Ljava/lang/Object;
    nop

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 161
    aget-short v2, p0, v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static toShorteArray([Ljava/lang/Object;)[S
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .line 207
    const/4 v0, 0x0

    array-length v1, p0

    new-array v1, v1, [S

    .line 208
    .local v1, "ret":[S
    nop

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 209
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
