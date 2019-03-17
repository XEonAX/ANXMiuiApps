.class final Lcom/google/gson_nex/internal/bind/TypeAdapters$5;
.super Lcom/google/gson_nex/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson_nex/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson_nex/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/gson_nex/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson_nex/stream/JsonReader;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->peek()Lcom/google/gson_nex/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson_nex/stream/JsonToken;->NULL:Lcom/google/gson_nex/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextNull()V

    .line 191
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    .line 194
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextInt()I

    move-result v0

    .line 195
    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    new-instance v1, Lcom/google/gson_nex/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson_nex/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic read(Lcom/google/gson_nex/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/google/gson_nex/internal/bind/TypeAdapters$5;->read(Lcom/google/gson_nex/stream/JsonReader;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p1, p2}, Lcom/google/gson_nex/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson_nex/stream/JsonWriter;

    .line 203
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson_nex/internal/bind/TypeAdapters$5;->write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
