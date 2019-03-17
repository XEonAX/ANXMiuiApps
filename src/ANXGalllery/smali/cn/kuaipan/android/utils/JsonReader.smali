.class public final Lcn/kuaipan/android/utils/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final buffer:[C

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/kuaipan/android/utils/JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private final stringPool:Lcn/kuaipan/android/utils/StringPool;

.field private token:Lcn/kuaipan/android/utils/JsonToken;

.field private value:Ljava/lang/String;

.field private valueLength:I

.field private valuePos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Lcn/kuaipan/android/utils/StringPool;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/StringPool;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->stringPool:Lcn/kuaipan/android/utils/StringPool;

    .line 192
    iput-boolean v1, p0, Lcn/kuaipan/android/utils/JsonReader;->lenient:Z

    .line 200
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    .line 201
    iput v1, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 202
    iput v1, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    .line 207
    iput v2, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartLine:I

    .line 208
    iput v2, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartColumn:I

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->stack:Ljava/util/List;

    .line 212
    sget-object v0, Lcn/kuaipan/android/utils/JsonScope;->EMPTY_DOCUMENT:Lcn/kuaipan/android/utils/JsonScope;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->push(Lcn/kuaipan/android/utils/JsonScope;)V

    .line 233
    iput-boolean v1, p0, Lcn/kuaipan/android/utils/JsonReader;->skipping:Z

    .line 239
    if-nez p1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iput-object p1, p0, Lcn/kuaipan/android/utils/JsonReader;->in:Ljava/io/Reader;

    .line 243
    return-void
.end method

.method private advance()Lcn/kuaipan/android/utils/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    .line 378
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    .line 379
    .local v0, "result":Lcn/kuaipan/android/utils/JsonToken;
    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    .line 380
    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    .line 381
    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->name:Ljava/lang/String;

    .line 382
    return-object v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    iget-boolean v0, p0, Lcn/kuaipan/android/utils/JsonReader;->lenient:Z

    if-nez v0, :cond_0

    .line 842
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 844
    :cond_0
    return-void
.end method

.method private decodeLiteral()Lcn/kuaipan/android/utils/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x55

    const/16 v6, 0x45

    const/4 v5, 0x4

    const/16 v4, 0x6c

    const/16 v3, 0x4c

    .line 1073
    iget v0, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1075
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 1097
    :goto_0
    return-object v0

    .line 1076
    :cond_0
    iget v0, p0, Lcn/kuaipan/android/utils/JsonReader;->valueLength:I

    if-ne v0, v5, :cond_5

    const/16 v0, 0x6e

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_1

    const/16 v0, 0x4e

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_5

    :cond_1
    const/16 v0, 0x75

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    if-ne v7, v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_3

    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_4

    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_5

    .line 1080
    :cond_4
    const-string v0, "null"

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    .line 1081
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->NULL:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_0

    .line 1082
    :cond_5
    iget v0, p0, Lcn/kuaipan/android/utils/JsonReader;->valueLength:I

    if-ne v0, v5, :cond_a

    const/16 v0, 0x74

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_6

    const/16 v0, 0x54

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_a

    :cond_6
    const/16 v0, 0x72

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_7

    const/16 v0, 0x52

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_a

    :cond_7
    const/16 v0, 0x75

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v7, v0, :cond_a

    :cond_8
    const/16 v0, 0x65

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_a

    .line 1086
    :cond_9
    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    .line 1087
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    goto/16 :goto_0

    .line 1088
    :cond_a
    iget v0, p0, Lcn/kuaipan/android/utils/JsonReader;->valueLength:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const/16 v0, 0x66

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_b

    const/16 v0, 0x46

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_b
    const/16 v0, 0x61

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_c

    const/16 v0, 0x41

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_c
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_d

    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_10

    :cond_d
    const/16 v0, 0x73

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_e

    const/16 v0, 0x53

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_e
    const/16 v0, 0x65

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x4

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_10

    .line 1093
    :cond_f
    const-string v0, "false"

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    .line 1094
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    goto/16 :goto_0

    .line 1096
    :cond_10
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->stringPool:Lcn/kuaipan/android/utils/StringPool;

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->valueLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcn/kuaipan/android/utils/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    .line 1097
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->valueLength:I

    invoke-direct {p0, v0, v1, v2}, Lcn/kuaipan/android/utils/JsonReader;->decodeNumber([CII)Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private decodeNumber([CII)Lcn/kuaipan/android/utils/JsonToken;
    .locals 6
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 1108
    move v1, p2

    .line 1109
    .local v1, "i":I
    aget-char v0, p1, v1

    .line 1111
    .local v0, "c":I
    if-ne v0, v5, :cond_0

    .line 1112
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1115
    :cond_0
    if-ne v0, v3, :cond_2

    .line 1116
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1126
    :cond_1
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_4

    .line 1127
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1128
    :goto_0
    if-lt v0, v3, :cond_4

    if-gt v0, v4, :cond_4

    .line 1129
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_0

    .line 1117
    :cond_2
    const/16 v2, 0x31

    if-lt v0, v2, :cond_3

    if-gt v0, v4, :cond_3

    .line 1118
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1119
    :goto_1
    if-lt v0, v3, :cond_1

    if-gt v0, v4, :cond_1

    .line 1120
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_1

    .line 1123
    :cond_3
    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 1151
    :goto_2
    return-object v2

    .line 1133
    :cond_4
    const/16 v2, 0x65

    if-eq v0, v2, :cond_5

    const/16 v2, 0x45

    if-ne v0, v2, :cond_9

    .line 1134
    :cond_5
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1135
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_6

    if-ne v0, v5, :cond_7

    .line 1136
    :cond_6
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1138
    :cond_7
    if-lt v0, v3, :cond_8

    if-gt v0, v4, :cond_8

    .line 1139
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1140
    :goto_3
    if-lt v0, v3, :cond_9

    if-gt v0, v4, :cond_9

    .line 1141
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_3

    .line 1144
    :cond_8
    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_2

    .line 1148
    :cond_9
    add-int v2, p2, p3

    if-ne v1, v2, :cond_a

    .line 1149
    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_2

    .line 1151
    :cond_a
    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_2
.end method

.method private expect(Lcn/kuaipan/android/utils/JsonToken;)V
    .locals 3
    .param p1, "expected"    # Lcn/kuaipan/android/utils/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    .line 313
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v0, p1, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->advance()Lcn/kuaipan/android/utils/JsonToken;

    .line 317
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 9
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 727
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    if-ge v0, v4, :cond_1

    .line 728
    iget-object v4, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    aget-char v4, v4, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 729
    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartLine:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartLine:I

    .line 730
    iput v2, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartColumn:I

    .line 727
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    :cond_0
    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartColumn:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartColumn:I

    goto :goto_1

    .line 736
    :cond_1
    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    iget v5, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    if-eq v4, v5, :cond_4

    .line 737
    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    iget v5, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    .line 738
    iget-object v4, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v5, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    iget-object v6, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v7, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    invoke-static {v4, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    :goto_2
    iput v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 745
    :cond_2
    iget-object v4, p0, Lcn/kuaipan/android/utils/JsonReader;->in:Ljava/io/Reader;

    iget-object v5, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v6, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    iget-object v7, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    array-length v7, v7

    iget v8, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "total":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 746
    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    add-int/2addr v4, v1

    iput v4, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    .line 750
    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartLine:I

    if-ne v4, v2, :cond_3

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartColumn:I

    if-ne v4, v2, :cond_3

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    if-lez v4, :cond_3

    iget-object v4, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    aget-char v4, v4, v3

    const v5, 0xfeff

    if-ne v4, v5, :cond_3

    .line 752
    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 753
    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartColumn:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartColumn:I

    .line 756
    :cond_3
    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    if-lt v4, p1, :cond_2

    .line 760
    :goto_3
    return v2

    .line 740
    .end local v1    # "total":I
    :cond_4
    iput v3, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    goto :goto_2

    .restart local v1    # "total":I
    :cond_5
    move v2, v3

    .line 760
    goto :goto_3
.end method

.method private getColumnNumber()I
    .locals 4

    .prologue
    .line 774
    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartColumn:I

    .line 775
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    if-ge v0, v2, :cond_1

    .line 776
    iget-object v2, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 777
    const/4 v1, 0x1

    .line 775
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 782
    :cond_1
    return v1
.end method

.method private getLineNumber()I
    .locals 4

    .prologue
    .line 764
    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->bufferStartLine:I

    .line 765
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    if-ge v0, v2, :cond_1

    .line 766
    iget-object v2, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 767
    add-int/lit8 v1, v1, 0x1

    .line 765
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    :cond_1
    return v1
.end method

.method private getSnippet()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/16 v5, 0x14

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1166
    .local v2, "snippet":Ljava/lang/StringBuilder;
    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1167
    .local v1, "beforePos":I
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1168
    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1169
    .local v0, "afterPos":I
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1170
    return-object v2
.end method

.method private nextInArray(Z)Lcn/kuaipan/android/utils/JsonToken;
    .locals 1
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    if-eqz p1, :cond_0

    .line 591
    sget-object v0, Lcn/kuaipan/android/utils/JsonScope;->NONEMPTY_ARRAY:Lcn/kuaipan/android/utils/JsonScope;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->replaceTop(Lcn/kuaipan/android/utils/JsonScope;)V

    .line 607
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 622
    iget v0, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 623
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextValue()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    :goto_1
    return-object v0

    .line 594
    :cond_0
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 603
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 596
    :sswitch_1
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->pop()Lcn/kuaipan/android/utils/JsonScope;

    .line 597
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_1

    .line 599
    :sswitch_2
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->checkLenient()V

    goto :goto_0

    .line 609
    :sswitch_3
    if-eqz p1, :cond_1

    .line 610
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->pop()Lcn/kuaipan/android/utils/JsonScope;

    .line 611
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_1

    .line 617
    :cond_1
    :sswitch_4
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->checkLenient()V

    .line 618
    iget v0, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 619
    const-string v0, "null"

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    .line 620
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->NULL:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_1

    .line 607
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch

    .line 594
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextInObject(Z)Lcn/kuaipan/android/utils/JsonToken;
    .locals 2
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    if-eqz p1, :cond_0

    .line 635
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextNonWhitespace()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 640
    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 656
    :sswitch_0
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 657
    .local v0, "quote":I
    sparse-switch v0, :sswitch_data_0

    .line 664
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->checkLenient()V

    .line 665
    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 666
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->name:Ljava/lang/String;

    .line 667
    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    const-string v1, "Expected name"

    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 637
    .end local v0    # "quote":I
    :pswitch_0
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->pop()Lcn/kuaipan/android/utils/JsonScope;

    .line 638
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    .line 673
    :goto_0
    return-object v1

    .line 643
    :cond_0
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextNonWhitespace()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 651
    const-string v1, "Unterminated object"

    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 645
    :sswitch_1
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->pop()Lcn/kuaipan/android/utils/JsonScope;

    .line 646
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_0

    .line 659
    .restart local v0    # "quote":I
    :sswitch_2
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->checkLenient()V

    .line 661
    :sswitch_3
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->name:Ljava/lang/String;

    .line 672
    :cond_1
    sget-object v1, Lcn/kuaipan/android/utils/JsonScope;->DANGLING_NAME:Lcn/kuaipan/android/utils/JsonScope;

    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/JsonReader;->replaceTop(Lcn/kuaipan/android/utils/JsonScope;)V

    .line 673
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NAME:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch

    .line 657
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch

    .line 643
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextLiteral(Z)Ljava/lang/String;
    .locals 6
    .param p1, "assignOffsetsOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    iput v3, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    .line 930
    iput v5, p0, Lcn/kuaipan/android/utils/JsonReader;->valueLength:I

    .line 931
    const/4 v1, 0x0

    .line 934
    .local v1, "i":I
    :cond_0
    :goto_0
    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    if-ge v3, v4, :cond_1

    .line 935
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 934
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 941
    :sswitch_0
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->checkLenient()V

    .line 986
    :goto_1
    :sswitch_1
    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    .line 987
    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    iput v3, p0, Lcn/kuaipan/android/utils/JsonReader;->valuePos:I

    .line 988
    const/4 v2, 0x0

    .line 997
    .local v2, "result":Ljava/lang/String;
    :goto_2
    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Lcn/kuaipan/android/utils/JsonReader;->valueLength:I

    .line 998
    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 999
    return-object v2

    .line 962
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 963
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcn/kuaipan/android/utils/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 966
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    aput-char v5, v3, v4

    goto :goto_1

    .line 973
    :cond_2
    if-nez v0, :cond_3

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 977
    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Lcn/kuaipan/android/utils/JsonReader;->valueLength:I

    .line 978
    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 979
    const/4 v1, 0x0

    .line 980
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcn/kuaipan/android/utils/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 989
    :cond_4
    iget-boolean v3, p0, Lcn/kuaipan/android/utils/JsonReader;->skipping:Z

    if-eqz v3, :cond_5

    .line 990
    const-string/jumbo v2, "skipped!"

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    .line 991
    .end local v2    # "result":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    .line 992
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->stringPool:Lcn/kuaipan/android/utils/StringPool;

    iget-object v4, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v5, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    invoke-virtual {v3, v4, v5, v1}, Lcn/kuaipan/android/utils/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    .line 994
    .end local v2    # "result":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    .line 935
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 786
    :goto_0
    :sswitch_0
    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    if-lt v2, v3, :cond_0

    invoke-direct {p0, v5}, Lcn/kuaipan/android/utils/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 787
    :cond_0
    iget-object v2, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    aget-char v0, v2, v3

    .line 788
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 833
    :cond_1
    :goto_1
    return v0

    .line 796
    :sswitch_1
    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v5}, Lcn/kuaipan/android/utils/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 800
    :cond_2
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->checkLenient()V

    .line 801
    iget-object v2, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    aget-char v1, v2, v3

    .line 802
    .local v1, "peek":C
    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    .line 805
    :sswitch_2
    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 806
    const-string v2, "*/"

    invoke-direct {p0, v2}, Lcn/kuaipan/android/utils/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 807
    const-string v2, "Unterminated comment"

    invoke-direct {p0, v2}, Lcn/kuaipan/android/utils/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 809
    :cond_3
    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    goto :goto_0

    .line 814
    :sswitch_3
    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 815
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->skipToEndOfLine()V

    goto :goto_0

    .line 828
    .end local v1    # "peek":C
    :sswitch_4
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->checkLenient()V

    .line 829
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->skipToEndOfLine()V

    goto :goto_0

    .line 837
    .end local v0    # "c":I
    :cond_4
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "End of input"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 788
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    .line 802
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private nextString(C)Ljava/lang/String;
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 886
    .local v0, "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 887
    .local v2, "start":I
    :cond_1
    :goto_0
    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    if-ge v3, v4, :cond_6

    .line 888
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    aget-char v1, v3, v4

    .line 890
    .local v1, "c":I
    if-ne v1, p1, :cond_4

    .line 891
    iget-boolean v3, p0, Lcn/kuaipan/android/utils/JsonReader;->skipping:Z

    if-eqz v3, :cond_2

    .line 892
    const-string/jumbo v3, "skipped!"

    .line 897
    :goto_1
    return-object v3

    .line 893
    :cond_2
    if-nez v0, :cond_3

    .line 894
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->stringPool:Lcn/kuaipan/android/utils/StringPool;

    iget-object v4, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v5, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v2, v5}, Lcn/kuaipan/android/utils/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 896
    :cond_3
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 900
    :cond_4
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_1

    .line 901
    if-nez v0, :cond_5

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 905
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 906
    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    goto :goto_0

    .line 910
    .end local v1    # "c":I
    :cond_6
    if-nez v0, :cond_7

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 914
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcn/kuaipan/android/utils/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 916
    const-string v3, "Unterminated string"

    invoke-direct {p0, v3}, Lcn/kuaipan/android/utils/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method private nextValue()Lcn/kuaipan/android/utils/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 700
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 716
    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 717
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->readLiteral()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    :goto_0
    return-object v1

    .line 702
    :sswitch_0
    sget-object v1, Lcn/kuaipan/android/utils/JsonScope;->EMPTY_OBJECT:Lcn/kuaipan/android/utils/JsonScope;

    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/JsonReader;->push(Lcn/kuaipan/android/utils/JsonScope;)V

    .line 703
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_0

    .line 706
    :sswitch_1
    sget-object v1, Lcn/kuaipan/android/utils/JsonScope;->EMPTY_ARRAY:Lcn/kuaipan/android/utils/JsonScope;

    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/JsonReader;->push(Lcn/kuaipan/android/utils/JsonScope;)V

    .line 707
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_0

    .line 710
    :sswitch_2
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->checkLenient()V

    .line 712
    :sswitch_3
    int-to-char v1, v0

    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    .line 713
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_0

    .line 700
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private objectValue()Lcn/kuaipan/android/utils/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextNonWhitespace()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 691
    :pswitch_0
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 685
    :pswitch_1
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->checkLenient()V

    .line 686
    iget v0, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    .line 687
    iget v0, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 694
    :cond_1
    :pswitch_2
    sget-object v0, Lcn/kuaipan/android/utils/JsonScope;->NONEMPTY_OBJECT:Lcn/kuaipan/android/utils/JsonScope;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->replaceTop(Lcn/kuaipan/android/utils/JsonScope;)V

    .line 695
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextValue()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    return-object v0

    .line 681
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private peekStack()Lcn/kuaipan/android/utils/JsonScope;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/utils/JsonScope;

    return-object v0
.end method

.method private pop()Lcn/kuaipan/android/utils/JsonScope;
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/utils/JsonScope;

    return-object v0
.end method

.method private push(Lcn/kuaipan/android/utils/JsonScope;)V
    .locals 1
    .param p1, "newTop"    # Lcn/kuaipan/android/utils/JsonScope;

    .prologue
    .line 579
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 1017
    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcn/kuaipan/android/utils/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1018
    const-string v2, "Unterminated escape sequence"

    invoke-direct {p0, v2}, Lcn/kuaipan/android/utils/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1021
    :cond_0
    iget-object v2, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    aget-char v0, v2, v3

    .line 1022
    .local v0, "escaped":C
    sparse-switch v0, :sswitch_data_0

    .line 1050
    .end local v0    # "escaped":C
    :goto_0
    return v0

    .line 1024
    .restart local v0    # "escaped":C
    :sswitch_0
    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    if-le v2, v3, :cond_1

    invoke-direct {p0, v5}, Lcn/kuaipan/android/utils/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1025
    const-string v2, "Unterminated escape sequence"

    invoke-direct {p0, v2}, Lcn/kuaipan/android/utils/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1027
    :cond_1
    iget-object v2, p0, Lcn/kuaipan/android/utils/JsonReader;->stringPool:Lcn/kuaipan/android/utils/StringPool;

    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v4, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v5}, Lcn/kuaipan/android/utils/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v1

    .line 1028
    .local v1, "hex":Ljava/lang/String;
    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    .line 1029
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v0, v2

    goto :goto_0

    .line 1032
    .end local v1    # "hex":Ljava/lang/String;
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 1035
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 1038
    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    .line 1041
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 1044
    :sswitch_5
    const/16 v0, 0xc

    goto :goto_0

    .line 1022
    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private readLiteral()Lcn/kuaipan/android/utils/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    .line 1059
    iget v0, p0, Lcn/kuaipan/android/utils/JsonReader;->valueLength:I

    if-nez v0, :cond_0

    .line 1060
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1062
    :cond_0
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->decodeLiteral()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    .line 1063
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, v1, :cond_1

    .line 1064
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->checkLenient()V

    .line 1066
    :cond_1
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    return-object v0
.end method

.method private replaceTop(Lcn/kuaipan/android/utils/JsonScope;)V
    .locals 2
    .param p1, "newTop"    # Lcn/kuaipan/android/utils/JsonScope;

    .prologue
    .line 586
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 587
    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 861
    :goto_0
    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 862
    :cond_0
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 863
    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 861
    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    goto :goto_0

    .line 862
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 867
    :cond_2
    const/4 v1, 0x1

    .line 869
    .end local v0    # "c":I
    :goto_2
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    :cond_0
    iget v1, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->limit:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 853
    :cond_1
    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->buffer:[C

    iget v2, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/kuaipan/android/utils/JsonReader;->pos:I

    aget-char v0, v1, v2

    .line 854
    .local v0, "c":C
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 858
    .end local v0    # "c":C
    :cond_2
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1160
    new-instance v0, Lcn/kuaipan/android/utils/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1161
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuaipan/android/utils/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->expect(Lcn/kuaipan/android/utils/JsonToken;)V

    .line 282
    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->expect(Lcn/kuaipan/android/utils/JsonToken;)V

    .line 298
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 541
    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    .line 542
    iput-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    .line 543
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 544
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->stack:Ljava/util/List;

    sget-object v1, Lcn/kuaipan/android/utils/JsonScope;->CLOSED:Lcn/kuaipan/android/utils/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 546
    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->expect(Lcn/kuaipan/android/utils/JsonToken;)V

    .line 290
    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/JsonReader;->expect(Lcn/kuaipan/android/utils/JsonToken;)V

    .line 306
    return-void
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    .line 430
    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v1, v2, :cond_0

    .line 431
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_0
    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    const-string/jumbo v2, "true"

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 435
    .local v0, "result":Z
    :goto_0
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->advance()Lcn/kuaipan/android/utils/JsonToken;

    .line 436
    return v0

    .line 434
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextDouble()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    .line 464
    iget-object v2, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v3, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v3, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v2, v3, :cond_0

    .line 465
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a double but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    :cond_0
    iget-object v2, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 469
    .local v0, "result":D
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->advance()Lcn/kuaipan/android/utils/JsonToken;

    .line 470
    return-wide v0
.end method

.method public nextInt()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    .line 517
    iget-object v4, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v5, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v5, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v4, v5, :cond_0

    .line 518
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 523
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 533
    .local v3, "result":I
    :cond_1
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->advance()Lcn/kuaipan/android/utils/JsonToken;

    .line 534
    return v3

    .line 524
    .end local v3    # "result":I
    :catch_0
    move-exception v2

    .line 525
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 527
    .local v0, "asDouble":D
    double-to-int v3, v0

    .line 528
    .restart local v3    # "result":I
    int-to-double v4, v3

    cmpl-double v4, v4, v0

    if-eqz v4, :cond_1

    .line 529
    new-instance v4, Ljava/lang/NumberFormatException;

    iget-object v5, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public nextLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    .line 485
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v6, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v6, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v3, v6, :cond_0

    .line 486
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 491
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 501
    .local v4, "result":J
    :cond_1
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->advance()Lcn/kuaipan/android/utils/JsonToken;

    .line 502
    return-wide v4

    .line 492
    .end local v4    # "result":J
    :catch_0
    move-exception v2

    .line 493
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 495
    .local v0, "asDouble":D
    double-to-long v4, v0

    .line 496
    .restart local v4    # "result":J
    long-to-double v6, v4

    cmpl-double v3, v6, v0

    if-eqz v3, :cond_1

    .line 497
    new-instance v3, Ljava/lang/NumberFormatException;

    iget-object v6, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    .line 394
    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->NAME:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v1, v2, :cond_0

    .line 395
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->name:Ljava/lang/String;

    .line 398
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->advance()Lcn/kuaipan/android/utils/JsonToken;

    .line 399
    return-object v0
.end method

.method public nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    .line 448
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NULL:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v0, v1, :cond_0

    .line 449
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->advance()Lcn/kuaipan/android/utils/JsonToken;

    .line 453
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    .line 412
    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v1, v2, :cond_0

    .line 413
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/JsonReader;->peek()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_0
    iget-object v0, p0, Lcn/kuaipan/android/utils/JsonReader;->value:Ljava/lang/String;

    .line 417
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->advance()Lcn/kuaipan/android/utils/JsonToken;

    .line 418
    return-object v0
.end method

.method public peek()Lcn/kuaipan/android/utils/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 331
    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    if-eqz v3, :cond_1

    .line 332
    iget-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    .line 362
    :cond_0
    :goto_0
    return-object v1

    .line 335
    :cond_1
    sget-object v3, Lcn/kuaipan/android/utils/JsonReader$1;->$SwitchMap$cn$kuaipan$android$utils$JsonScope:[I

    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->peekStack()Lcn/kuaipan/android/utils/JsonScope;

    move-result-object v4

    invoke-virtual {v4}, Lcn/kuaipan/android/utils/JsonScope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 368
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 337
    :pswitch_0
    sget-object v3, Lcn/kuaipan/android/utils/JsonScope;->NONEMPTY_DOCUMENT:Lcn/kuaipan/android/utils/JsonScope;

    invoke-direct {p0, v3}, Lcn/kuaipan/android/utils/JsonReader;->replaceTop(Lcn/kuaipan/android/utils/JsonScope;)V

    .line 338
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextValue()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    .line 339
    .local v1, "firstToken":Lcn/kuaipan/android/utils/JsonToken;
    iget-boolean v3, p0, Lcn/kuaipan/android/utils/JsonReader;->lenient:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v4, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v4, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v3, v4, :cond_0

    .line 340
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    .end local v1    # "firstToken":Lcn/kuaipan/android/utils/JsonToken;
    :pswitch_1
    invoke-direct {p0, v6}, Lcn/kuaipan/android/utils/JsonReader;->nextInArray(Z)Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 347
    :pswitch_2
    invoke-direct {p0, v5}, Lcn/kuaipan/android/utils/JsonReader;->nextInArray(Z)Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 349
    :pswitch_3
    invoke-direct {p0, v6}, Lcn/kuaipan/android/utils/JsonReader;->nextInObject(Z)Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 351
    :pswitch_4
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->objectValue()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 353
    :pswitch_5
    invoke-direct {p0, v5}, Lcn/kuaipan/android/utils/JsonReader;->nextInObject(Z)Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 356
    :pswitch_6
    :try_start_0
    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->nextValue()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v2

    .line 357
    .local v2, "token":Lcn/kuaipan/android/utils/JsonToken;
    iget-boolean v3, p0, Lcn/kuaipan/android/utils/JsonReader;->lenient:Z

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 358
    goto :goto_0

    .line 360
    :cond_2
    const-string v3, "Expected EOF"

    invoke-direct {p0, v3}, Lcn/kuaipan/android/utils/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v2    # "token":Lcn/kuaipan/android/utils/JsonToken;
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/EOFException;
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    iput-object v1, p0, Lcn/kuaipan/android/utils/JsonReader;->token:Lcn/kuaipan/android/utils/JsonToken;

    goto :goto_0

    .line 366
    .end local v0    # "e":Ljava/io/EOFException;
    :pswitch_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 335
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
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcn/kuaipan/android/utils/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
