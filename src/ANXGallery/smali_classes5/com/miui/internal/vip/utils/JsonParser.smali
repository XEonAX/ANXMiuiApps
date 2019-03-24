.class public Lcom/miui/internal/vip/utils/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# static fields
.field private static final ARRAY_END:Ljava/lang/String; = "]"

.field private static final ARRAY_START:Ljava/lang/String; = "["

.field private static final D_QUOTE:Ljava/lang/String; = "\""

.field public static final EMPTY_ARRAY:Ljava/lang/String; = "[]"

.field public static final EMPTY_OBJECT:Ljava/lang/String; = "{}"

.field static final ENCODE_END:Ljava/lang/String; = "\\\""

.field static final ENCODE_START:Ljava/lang/String; = "\\\""

.field private static final TAG:Ljava/lang/String; = "JsonParser"

.field private static final sCachedFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/internal/vip/utils/JsonParser;->sCachedFields:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildInToJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 453
    if-nez p0, :cond_0

    .line 454
    const-string v0, ""

    return-object v0

    .line 456
    :cond_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/vip/utils/JsonParser;->encodeStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 456
    :goto_0
    return-object v0
.end method

.method public static decodeStringData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 472
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string v0, "\\\""

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\""

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static encodeStringData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 461
    move-object v0, p0

    .line 462
    .local v0, "value":Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->isJsonValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 465
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static fieldToJson(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 505
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 506
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 507
    const/4 v1, 0x0

    return-object v1

    .line 509
    :cond_0
    invoke-static {v0}, Lcom/miui/internal/vip/utils/JsonParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized getClassFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 3
    .param p0, "cls"    # Ljava/lang/Class;

    const-class v0, Lcom/miui/internal/vip/utils/JsonParser;

    monitor-enter v0

    .line 155
    :try_start_0
    sget-object v1, Lcom/miui/internal/vip/utils/JsonParser;->sCachedFields:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    .line 156
    .local v1, "fields":[Ljava/lang/reflect/Field;
    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v1, v2

    .line 158
    sget-object v2, Lcom/miui/internal/vip/utils/JsonParser;->sCachedFields:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit v0

    return-object v1

    .line 154
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local p0    # "cls":Ljava/lang/Class;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getValue(Lorg/json/JSONArray;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 336
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-class v0, Ljava/lang/Integer;

    .line 337
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 338
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-class v0, Ljava/lang/Short;

    .line 339
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 345
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-class v0, Ljava/lang/Long;

    .line 346
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 348
    :cond_1
    const-class v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/vip/utils/JsonParser;->decodeStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 350
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-class v0, Ljava/lang/Boolean;

    .line 351
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 353
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-class v0, Ljava/lang/Float;

    .line 354
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 355
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-class v0, Ljava/lang/Double;

    .line 356
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 363
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 357
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 358
    .local v0, "value":Ljava/lang/Double;
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-class v1, Ljava/lang/Float;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 361
    :cond_6
    return-object v0

    .line 359
    :cond_7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 352
    .end local v0    # "value":Ljava/lang/Double;
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 347
    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 340
    :cond_a
    :goto_4
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 341
    .local v0, "value":Ljava/lang/Integer;
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-class v1, Ljava/lang/Short;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    .line 344
    :cond_b
    return-object v0

    .line 342
    :cond_c
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1
.end method

.method private static getValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "jobj"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 305
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-class v0, Ljava/lang/Integer;

    .line 306
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 307
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-class v0, Ljava/lang/Short;

    .line 308
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 314
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-class v0, Ljava/lang/Long;

    .line 315
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 317
    :cond_1
    const-class v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/vip/utils/JsonParser;->decodeStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 319
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-class v0, Ljava/lang/Boolean;

    .line 320
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 322
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-class v0, Ljava/lang/Float;

    .line 323
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 324
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-class v0, Ljava/lang/Double;

    .line 325
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 332
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 326
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 327
    .local v0, "value":Ljava/lang/Double;
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-class v1, Ljava/lang/Float;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 330
    :cond_6
    return-object v0

    .line 328
    :cond_7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 321
    .end local v0    # "value":Ljava/lang/Double;
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 316
    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 309
    :cond_a
    :goto_4
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 310
    .local v0, "value":Ljava/lang/Integer;
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-class v1, Ljava/lang/Short;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    .line 313
    :cond_b
    return-object v0

    .line 311
    :cond_c
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1
.end method

.method public static isEmptyJson(Ljava/lang/String;)Z
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "{}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isIgnoredField(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "f"    # Ljava/lang/reflect/Field;

    .line 476
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 477
    .local v0, "modifiers":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isJsonArray(Ljava/lang/String;)Z
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method public static isJsonValid(Ljava/lang/String;)Z
    .locals 6
    .param p0, "json"    # Ljava/lang/String;

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 53
    :try_start_0
    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->isJsonArray(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "%s, isJsonValid fail, e = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "JsonParser"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/miui/internal/vip/utils/Utils;->logV(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return v5

    .line 63
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    return v1
.end method

.method public static parseJsonArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "jsonArray"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 67
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->isJsonArray(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "jarray":Lorg/json/JSONArray;
    invoke-static {v0, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArray(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 71
    .end local v0    # "jarray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "%s, parseJsonArray, json fail, %s, cls = %s, jsonArray = %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "JsonParser"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseJsonArray(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "tArray":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 82
    .local v1, "emptyItems":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "emptyItems":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 83
    invoke-static {p1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    .line 85
    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/miui/internal/vip/utils/JsonParser;->getValue(Lorg/json/JSONArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v4

    .line 87
    .local v4, "e":Ljava/lang/ClassCastException;
    const-string v8, "%s, Failed to parse json %s as cls %s, %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "JsonParser"

    aput-object v10, v9, v2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v7

    aput-object p1, v9, v6

    aput-object v4, v9, v5

    invoke-static {v8, v9}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :goto_1
    goto :goto_3

    .line 90
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 91
    .local v4, "obj":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 92
    .local v8, "jobj":Lorg/json/JSONObject;
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 93
    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/miui/internal/vip/utils/JsonParser;->tryStrToObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_2

    .line 94
    :cond_1
    instance-of v9, v4, Lorg/json/JSONObject;

    if-eqz v9, :cond_2

    .line 95
    move-object v8, v4

    check-cast v8, Lorg/json/JSONObject;

    .line 97
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    .line 98
    invoke-static {v8, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v1

    goto :goto_3

    .line 100
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 101
    .local v9, "objCls":Ljava/lang/Class;
    invoke-static {p1, v9}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isTypeMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 102
    aput-object v4, v0, v1

    goto :goto_3

    .line 104
    :cond_4
    const-string v10, "parseJsonArray for item %d failed, type mismatched, cls = %s, item class = %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v2

    aput-object p1, v5, v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    .line 104
    invoke-static {v10, v5}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v8    # "jobj":Lorg/json/JSONObject;
    .end local v9    # "objCls":Ljava/lang/Class;
    :goto_3
    aget-object v4, v0, v1

    if-nez v4, :cond_5

    .line 110
    add-int/lit8 v3, v3, 0x1

    .line 82
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_6
    if-lez v3, :cond_a

    .line 114
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int/2addr v1, v3

    .line 115
    .local v1, "newCount":I
    if-lez v1, :cond_9

    .line 116
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {p1, v4}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v4

    .line 117
    .local v4, "noEmptyArray":[Ljava/lang/Object;, "[TT;"
    const/4 v5, 0x0

    .line 118
    .local v5, "j":I
    nop

    .local v2, "i":I
    :goto_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 119
    aget-object v6, v0, v2

    if-eqz v6, :cond_7

    .line 120
    aget-object v6, v0, v2

    aput-object v6, v4, v5

    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 118
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 124
    .end local v2    # "i":I
    :cond_8
    move-object v0, v4

    .line 125
    .end local v4    # "noEmptyArray":[Ljava/lang/Object;, "[TT;"
    .end local v5    # "j":I
    goto :goto_5

    .line 126
    :cond_9
    const/4 v0, 0x0

    .line 129
    .end local v1    # "newCount":I
    :cond_a
    :goto_5
    invoke-static {v0, p1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->convertArray([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static parseJsonArrayAsList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .param p0, "jsonArray"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 42
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    goto :goto_0

    .line 45
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 47
    .restart local v0    # "array":[Ljava/lang/Object;, "[TT;"
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/miui/internal/vip/utils/Utils;->toArrayList([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static parseJsonMap(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "valueType"    # Ljava/lang/Class;

    .line 177
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonMap(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "parseJsonMap failed, json = %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseJsonMap(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/util/Map;
    .locals 5
    .param p0, "jobj"    # Lorg/json/JSONObject;
    .param p1, "valueType"    # Ljava/lang/Class;

    .line 186
    :try_start_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 187
    .local v0, "map":Ljava/util/Map;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 188
    .local v1, "keyItor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 191
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 194
    :cond_0
    if-eqz p1, :cond_3

    .line 195
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 196
    move-object v4, v3

    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 197
    .local v4, "parseValue":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 198
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    goto :goto_0

    .line 201
    .end local v4    # "parseValue":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    .line 202
    move-object v4, v3

    check-cast v4, Lorg/json/JSONArray;

    invoke-static {v4, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArray(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 203
    .local v4, "array":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 204
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    goto :goto_0

    .line 209
    .end local v4    # "array":Ljava/lang/Object;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_2
    goto :goto_0

    .line 212
    :cond_4
    return-object v0

    .line 213
    .end local v0    # "map":Ljava/util/Map;
    .end local v1    # "keyItor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "parseJsonMap failed, jobj = %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseJsonObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 143
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->isEmptyJson(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "jobj":Lorg/json/JSONObject;
    invoke-static {v0, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 147
    .end local v0    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "parseJsonObject fail, %s, cls = %s, json = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logV(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "jobj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 164
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/miui/internal/vip/utils/JsonParser;->getClassFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 166
    .local v1, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 167
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-static {v4}, Lcom/miui/internal/vip/utils/JsonParser;->isIgnoredField(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    goto :goto_1

    .line 170
    :cond_0
    invoke-static {v0, v4, p0}, Lcom/miui/internal/vip/utils/JsonParser;->setField(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/json/JSONObject;)V

    .line 166
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_1
    return-object v0
.end method

.method private static setCollectionField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 7
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 256
    const-class v0, Lcom/miui/internal/vip/utils/ElementClass;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/vip/utils/ElementClass;

    .line 257
    .local v0, "classAn":Lcom/miui/internal/vip/utils/ElementClass;
    if-nez v0, :cond_0

    .line 258
    return-void

    .line 260
    :cond_0
    const/4 v1, 0x0

    .line 262
    .local v1, "fieldClass":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0}, Lcom/miui/internal/vip/utils/ElementClass;->className()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 266
    goto :goto_0

    .line 263
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "loadClass %s failed for %s.%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Lcom/miui/internal/vip/utils/ElementClass;->className()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    .line 264
    invoke-static {v3, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v1, :cond_1

    .line 268
    return-void

    .line 270
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 271
    .local v2, "col":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 272
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArrayAsList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 273
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    :cond_2
    return-void
.end method

.method private static setField(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/json/JSONObject;)V
    .locals 8
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "jobj"    # Lorg/json/JSONObject;

    .line 221
    const-class v0, Lcom/miui/internal/vip/utils/ProtocolField;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-class v0, Lcom/miui/internal/vip/utils/ProtocolField;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/vip/utils/ProtocolField;

    .line 223
    .local v0, "fieldAn":Lcom/miui/internal/vip/utils/ProtocolField;
    invoke-interface {v0}, Lcom/miui/internal/vip/utils/ProtocolField;->name()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 227
    .restart local v0    # "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 229
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 231
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 232
    .local v5, "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 233
    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_1

    .line 234
    move-object v6, v5

    check-cast v6, Lorg/json/JSONArray;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArray(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 236
    :cond_1
    const-string v6, "obj is array but not JSONArray, %s, %s"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v3

    aput-object v1, v7, v2

    invoke-static {v6, v7}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 238
    :cond_2
    const-class v6, Ljava/util/Map;

    invoke-static {v6, v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isTypeMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    .line 239
    invoke-static {p0, p1, v5}, Lcom/miui/internal/vip/utils/JsonParser;->setMapField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_1

    .line 240
    :cond_3
    const-class v6, Ljava/util/Collection;

    invoke-static {v6, v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isTypeMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_4

    .line 241
    invoke-static {p0, p1, v5}, Lcom/miui/internal/vip/utils/JsonParser;->setCollectionField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_1

    .line 243
    :cond_4
    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 244
    invoke-static {p2, v0, v1}, Lcom/miui/internal/vip/utils/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 246
    :cond_5
    invoke-static {p0, p1, v5, v1}, Lcom/miui/internal/vip/utils/JsonParser;->setProtocolField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_1
    goto :goto_2

    .line 249
    .end local v5    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 250
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "%s.%s(%s), setField failed, %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v3

    aput-object v0, v7, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    const/4 v2, 0x3

    aput-object v5, v7, v2

    invoke-static {v6, v7}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    return-void
.end method

.method private static setMapField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 7
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "valueType":Ljava/lang/Class;
    const-class v1, Lcom/miui/internal/vip/utils/ElementClass;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const-class v1, Lcom/miui/internal/vip/utils/ElementClass;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/vip/utils/ElementClass;

    invoke-interface {v1}, Lcom/miui/internal/vip/utils/ElementClass;->className()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 286
    goto :goto_0

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setField, get map value type failed, t.class = %s, f = %s, className = %s, %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 284
    invoke-static {v3, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    move-object v1, p2

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonMap(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method private static setProtocolField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "jsonObj":Lorg/json/JSONObject;
    instance-of v1, p2, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 295
    move-object v0, p2

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    .line 296
    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 297
    new-instance v1, Lorg/json/JSONObject;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 299
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 300
    invoke-static {v0, p3}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    :cond_2
    return-void
.end method

.method private static toJSONCompatible(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;

    .line 404
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 405
    return-object v0

    .line 407
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    return-object p0

    .line 410
    :cond_1
    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 413
    :try_start_0
    invoke-static {v1}, Lcom/miui/internal/vip/utils/JsonParser;->isJsonArray(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 416
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 418
    :catch_0
    move-exception v2

    .line 419
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "json %s to JSONObject failed, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    return-object v0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 368
    if-nez p0, :cond_0

    .line 369
    :try_start_0
    const-string v0, "{}"

    return-object v0

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->buildInToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 372
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 373
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/vip/utils/JsonParser;->toJsonArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 374
    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 375
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/miui/internal/vip/utils/JsonParser;->toJsonMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 376
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 377
    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->toJsonArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 379
    :cond_4
    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->toJsonObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 381
    :goto_0
    nop

    .line 382
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "toJson failed, %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    const/4 v1, 0x0

    return-object v1
.end method

.method public static toJsonArray(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "arrayObj"    # Ljava/lang/Object;

    .line 427
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 428
    .local v1, "array":[Ljava/lang/Object;
    if-eqz v1, :cond_5

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_2

    .line 431
    :cond_0
    const/4 v2, 0x0

    .line 432
    .local v2, "hasContent":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .local v3, "json":Ljava/lang/StringBuilder;
    move v4, v2

    move v2, v0

    .local v2, "i":I
    .local v4, "hasContent":Z
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 434
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 435
    aget-object v5, v1, v2

    invoke-static {v5}, Lcom/miui/internal/vip/utils/JsonParser;->buildInToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    aget-object v5, v1, v2

    invoke-static {v5}, Lcom/miui/internal/vip/utils/JsonParser;->toJsonObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "itemJson":Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 437
    if-eqz v4, :cond_2

    .line 438
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_2
    const/4 v4, 0x1

    .line 441
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .end local v5    # "itemJson":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    .end local v2    # "i":I
    :cond_4
    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 429
    .end local v3    # "json":Ljava/lang/StringBuilder;
    .end local v4    # "hasContent":Z
    :cond_5
    :goto_2
    const-string v2, "[]"
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 446
    .end local v1    # "array":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "toJson failed, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toJsonMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p0, "map"    # Ljava/util/Map;

    .line 389
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 390
    .local v0, "jobj":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 391
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/internal/vip/utils/JsonParser;->toJSONCompatible(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 392
    .local v3, "jsonValue":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 393
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "jsonValue":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 397
    .end local v0    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "toJsonMap failed, %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toJsonObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p0, "t"    # Ljava/lang/Object;

    .line 481
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 482
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 483
    .local v1, "fields":[Ljava/lang/reflect/Field;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .local v2, "json":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 485
    .local v3, "initLength":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_3

    .line 486
    aget-object v6, v1, v5

    .line 487
    .local v6, "f":Ljava/lang/reflect/Field;
    invoke-static {v6}, Lcom/miui/internal/vip/utils/JsonParser;->isIgnoredField(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 488
    goto :goto_2

    .line 491
    :cond_0
    :try_start_0
    invoke-static {p0, v6}, Lcom/miui/internal/vip/utils/JsonParser;->fieldToJson(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    .line 492
    .local v7, "valueJson":Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/internal/vip/utils/JsonParser;->isEmptyJson(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 493
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v3, :cond_1

    const-string v8, ","

    goto :goto_1

    :cond_1
    const-string v8, ""

    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v7    # "valueJson":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 496
    :catch_0
    move-exception v7

    .line 497
    .local v7, "e":Ljava/lang/IllegalAccessException;
    const-string v8, "toJsonObject, %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v4

    invoke-static {v8, v9}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    .end local v6    # "f":Ljava/lang/reflect/Field;
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 500
    .end local v5    # "i":I
    :cond_3
    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static tryStrToObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "jstr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 135
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .local v0, "jobj":Lorg/json/JSONObject;
    goto :goto_0

    .line 136
    .end local v0    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    .line 139
    .local v0, "jobj":Lorg/json/JSONObject;
    :goto_0
    return-object v0
.end method
