.class final Lcom/google/gson_nex/stream/JsonReader$1;
.super Lcom/google/gson_nex/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson_nex/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1532
    invoke-direct {p0}, Lcom/google/gson_nex/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/gson_nex/stream/JsonReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1534
    instance-of v0, p1, Lcom/google/gson_nex/internal/bind/JsonTreeReader;

    if-eqz v0, :cond_0

    .line 1535
    check-cast p1, Lcom/google/gson_nex/internal/bind/JsonTreeReader;

    invoke-virtual {p1}, Lcom/google/gson_nex/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 1552
    :goto_0
    return-void

    .line 1538
    :cond_0
    invoke-static {p1}, Lcom/google/gson_nex/stream/JsonReader;->access$000(Lcom/google/gson_nex/stream/JsonReader;)I

    move-result v0

    .line 1539
    if-nez v0, :cond_1

    .line 1540
    invoke-static {p1}, Lcom/google/gson_nex/stream/JsonReader;->access$100(Lcom/google/gson_nex/stream/JsonReader;)I

    move-result v0

    .line 1542
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1543
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/google/gson_nex/stream/JsonReader;->access$002(Lcom/google/gson_nex/stream/JsonReader;I)I

    goto :goto_0

    .line 1544
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1545
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/gson_nex/stream/JsonReader;->access$002(Lcom/google/gson_nex/stream/JsonReader;I)I

    goto :goto_0

    .line 1546
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1547
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/gson_nex/stream/JsonReader;->access$002(Lcom/google/gson_nex/stream/JsonReader;I)I

    goto :goto_0

    .line 1549
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->peek()Lcom/google/gson_nex/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1550
    invoke-static {p1}, Lcom/google/gson_nex/stream/JsonReader;->access$200(Lcom/google/gson_nex/stream/JsonReader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/gson_nex/stream/JsonReader;->access$300(Lcom/google/gson_nex/stream/JsonReader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
