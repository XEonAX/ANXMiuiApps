.class final Lcom/google/gson_nex/internal/bind/TypeAdapters$14;
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
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/google/gson_nex/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson_nex/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/google/gson_nex/internal/bind/TypeAdapters$14;->read(Lcom/google/gson_nex/stream/JsonReader;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/gson_nex/stream/JsonReader;)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->peek()Lcom/google/gson_nex/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson_nex/stream/JsonToken;->NULL:Lcom/google/gson_nex/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextNull()V

    .line 370
    const/4 v0, 0x0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    new-instance v1, Lcom/google/gson_nex/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson_nex/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson_nex/internal/bind/TypeAdapters$14;->write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/math/BigDecimal;)V

    return-void
.end method

.method public write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/math/BigDecimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p1, p2}, Lcom/google/gson_nex/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson_nex/stream/JsonWriter;

    .line 381
    return-void
.end method
