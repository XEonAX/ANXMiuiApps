.class public Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;
.super Ljava/lang/Object;
.source "OptionalCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    .line 24
    const-class v2, Ljava/util/OptionalInt;

    if-ne p2, v2, :cond_1

    .line 25
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    .local v0, "obj":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 27
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 28
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v2

    .line 61
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_0
    return-object v2

    .line 30
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v2

    goto :goto_0

    .line 34
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Integer;
    :cond_1
    const-class v2, Ljava/util/OptionalLong;

    if-ne p2, v2, :cond_3

    .line 35
    const-class v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    .restart local v0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    .line 37
    .local v1, "value":Ljava/lang/Long;
    if-nez v1, :cond_2

    .line 38
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v2

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object v2

    goto :goto_0

    .line 44
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Long;
    :cond_3
    const-class v2, Ljava/util/OptionalDouble;

    if-ne p2, v2, :cond_5

    .line 45
    const-class v2, Ljava/lang/Double;

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .restart local v0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    .line 47
    .local v1, "value":Ljava/lang/Double;
    if-nez v1, :cond_4

    .line 48
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v2

    goto :goto_0

    .line 50
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v2

    goto :goto_0

    .line 54
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Double;
    :cond_5
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->unwrapOptional(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_6

    .line 58
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    goto :goto_0

    .line 61
    :cond_6
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0xc

    return v0
.end method

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
    .line 71
    if-nez p2, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 113
    :goto_0
    return-void

    .line 76
    :cond_0
    instance-of v4, p2, Ljava/util/Optional;

    if-eqz v4, :cond_2

    move-object v1, p2

    .line 77
    check-cast v1, Ljava/util/Optional;

    .line 78
    .local v1, "optional":Ljava/util/Optional;, "Ljava/util/Optional<*>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "value":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 83
    .end local v1    # "optional":Ljava/util/Optional;, "Ljava/util/Optional<*>;"
    :cond_2
    instance-of v4, p2, Ljava/util/OptionalDouble;

    if-eqz v4, :cond_4

    move-object v0, p2

    .line 84
    check-cast v0, Ljava/util/OptionalDouble;

    .line 85
    .local v0, "optional":Ljava/util/OptionalDouble;
    invoke-virtual {v0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {v0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v2

    .line 87
    .local v2, "value":D
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    .end local v2    # "value":D
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    goto :goto_0

    .line 94
    .end local v0    # "optional":Ljava/util/OptionalDouble;
    :cond_4
    instance-of v4, p2, Ljava/util/OptionalInt;

    if-eqz v4, :cond_6

    move-object v0, p2

    .line 95
    check-cast v0, Ljava/util/OptionalInt;

    .line 96
    .local v0, "optional":Ljava/util/OptionalInt;
    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v2

    .line 98
    .local v2, "value":I
    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v2    # "value":I
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    goto :goto_0

    .line 105
    .end local v0    # "optional":Ljava/util/OptionalInt;
    :cond_6
    instance-of v4, p2, Ljava/util/OptionalLong;

    if-eqz v4, :cond_8

    move-object v0, p2

    .line 106
    check-cast v0, Ljava/util/OptionalLong;

    .line 107
    .local v0, "optional":Ljava/util/OptionalLong;
    invoke-virtual {v0}, Ljava/util/OptionalLong;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 108
    invoke-virtual {v0}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v2

    .line 109
    .local v2, "value":J
    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_0

    .line 111
    .end local v2    # "value":J
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    goto :goto_0

    .line 116
    .end local v0    # "optional":Ljava/util/OptionalLong;
    :cond_8
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support optional : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
