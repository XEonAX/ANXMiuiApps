.class public Lcom/nexstreaming/app/common/util/g;
.super Ljava/lang/Object;
.source "JsonReaderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson_nex/stream/JsonReader;)Lcom/nexstreaming/app/common/util/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/nexstreaming/app/common/util/a;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/util/a;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->beginObject()V

    .line 23
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 26
    const-string v2, "deviceinfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/nexstreaming/app/common/util/g;->a(Lcom/google/gson_nex/stream/JsonReader;Lcom/nexstreaming/app/common/util/a;)V

    goto :goto_0

    .line 28
    :cond_0
    const-string v2, "performance"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/nexstreaming/app/common/util/g;->b(Lcom/google/gson_nex/stream/JsonReader;Lcom/nexstreaming/app/common/util/a;)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->endObject()V

    .line 36
    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/nexstreaming/app/common/util/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lcom/google/gson_nex/stream/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/gson_nex/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/util/g;->a(Lcom/google/gson_nex/stream/JsonReader;)Lcom/nexstreaming/app/common/util/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/gson_nex/stream/JsonReader;Lcom/nexstreaming/app/common/util/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->beginObject()V

    .line 42
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "model"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/app/common/util/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    const-string v1, "manufacture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/app/common/util/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    const-string v1, "chipset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/app/common/util/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    const-string v1, "os"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/app/common/util/a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->endObject()V

    .line 59
    return-void
.end method

.method public a(Lcom/google/gson_nex/stream/JsonReader;Lcom/nexstreaming/app/common/util/a;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->beginObject()V

    .line 87
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "available_dec_count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string/jumbo v0, "use_encoder"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/app/common/util/a;->d(I)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/app/common/util/a;->f(I)V

    goto :goto_0

    .line 96
    :cond_1
    const-string v1, "realtime_dec_count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const-string/jumbo v0, "use_encoder"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/app/common/util/a;->e(I)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/app/common/util/a;->g(I)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->endObject()V

    .line 107
    return-void
.end method

.method public b(Lcom/google/gson_nex/stream/JsonReader;Lcom/nexstreaming/app/common/util/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->beginObject()V

    .line 64
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "codec_mem_size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/app/common/util/a;->a(I)V

    goto :goto_0

    .line 69
    :cond_0
    const-string v1, "max_fps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/app/common/util/a;->b(I)V

    goto :goto_0

    .line 71
    :cond_1
    const-string v1, "max_resolution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/app/common/util/a;->c(I)V

    goto :goto_0

    .line 73
    :cond_2
    const-string v1, "mpeg4v_supported"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextBoolean()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/app/common/util/a;->a(Z)V

    goto :goto_0

    .line 75
    :cond_3
    const-string/jumbo v1, "use_encoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "unuse_encoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    :cond_4
    invoke-virtual {p0, p1, p2, v0}, Lcom/nexstreaming/app/common/util/g;->a(Lcom/google/gson_nex/stream/JsonReader;Lcom/nexstreaming/app/common/util/a;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_5
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 81
    :cond_6
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->endObject()V

    .line 82
    return-void
.end method
