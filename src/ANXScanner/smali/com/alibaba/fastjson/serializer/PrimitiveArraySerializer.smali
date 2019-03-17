.class public Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;
.super Ljava/lang/Object;
.source "PrimitiveArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 10
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
    const/16 v9, 0x5d

    const/16 v7, 0x5b

    const/16 v8, 0x2c

    .line 29
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 31
    .local v3, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 32
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 135
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 36
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v6, p2, [I

    if-eqz v6, :cond_3

    .line 37
    check-cast p2, [I

    .end local p2    # "object":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [I

    .line 38
    .local v0, "array":[I
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 39
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 43
    :cond_1
    aget v6, v0, v2

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 49
    .end local v0    # "array":[I
    .end local v2    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v6, p2, [S

    if-eqz v6, :cond_6

    .line 50
    check-cast p2, [S

    .end local p2    # "object":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [S

    .line 51
    .local v0, "array":[S
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 52
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_5

    .line 53
    if-eqz v2, :cond_4

    .line 54
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 56
    :cond_4
    aget-short v6, v0, v2

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 58
    :cond_5
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 62
    .end local v0    # "array":[S
    .end local v2    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v6, p2, [J

    if-eqz v6, :cond_9

    .line 63
    check-cast p2, [J

    .end local p2    # "object":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [J

    .line 65
    .local v0, "array":[J
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 66
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v6, v0

    if-ge v2, v6, :cond_8

    .line 67
    if-eqz v2, :cond_7

    .line 68
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 70
    :cond_7
    aget-wide v6, v0, v2

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 72
    :cond_8
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 76
    .end local v0    # "array":[J
    .end local v2    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_9
    instance-of v6, p2, [Z

    if-eqz v6, :cond_c

    .line 77
    check-cast p2, [Z

    .end local p2    # "object":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [Z

    .line 78
    .local v0, "array":[Z
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 79
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    array-length v6, v0

    if-ge v2, v6, :cond_b

    .line 80
    if-eqz v2, :cond_a

    .line 81
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 83
    :cond_a
    aget-boolean v6, v0, v2

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 85
    :cond_b
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 89
    .end local v0    # "array":[Z
    .end local v2    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_c
    instance-of v6, p2, [F

    if-eqz v6, :cond_10

    .line 90
    check-cast p2, [F

    .end local p2    # "object":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [F

    .line 91
    .local v0, "array":[F
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 92
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    array-length v6, v0

    if-ge v2, v6, :cond_f

    .line 93
    if-eqz v2, :cond_d

    .line 94
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 97
    :cond_d
    aget v4, v0, v2

    .line 98
    .local v4, "item":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 99
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 92
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 101
    :cond_e
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_6

    .line 104
    .end local v4    # "item":F
    :cond_f
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 108
    .end local v0    # "array":[F
    .end local v2    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_10
    instance-of v6, p2, [D

    if-eqz v6, :cond_14

    .line 109
    check-cast p2, [D

    .end local p2    # "object":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [D

    .line 110
    .local v0, "array":[D
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 111
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    array-length v6, v0

    if-ge v2, v6, :cond_13

    .line 112
    if-eqz v2, :cond_11

    .line 113
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 116
    :cond_11
    aget-wide v4, v0, v2

    .line 117
    .local v4, "item":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 118
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 111
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 120
    :cond_12
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_8

    .line 123
    .end local v4    # "item":D
    :cond_13
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 127
    .end local v0    # "array":[D
    .end local v2    # "i":I
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_14
    instance-of v6, p2, [B

    if-eqz v6, :cond_15

    .line 128
    check-cast p2, [B

    .end local p2    # "object":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    .line 129
    .local v0, "array":[B
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    goto/16 :goto_0

    .line 133
    .end local v0    # "array":[B
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_15
    check-cast p2, [C

    .end local p2    # "object":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [C

    .line 134
    .local v1, "chars":[C
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
