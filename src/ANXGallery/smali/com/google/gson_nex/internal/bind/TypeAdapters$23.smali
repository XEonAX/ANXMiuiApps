.class final Lcom/google/gson_nex/internal/bind/TypeAdapters$23;
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
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:Ljava/lang/String; = "dayOfMonth"

.field private static final HOUR_OF_DAY:Ljava/lang/String; = "hourOfDay"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 537
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
    .line 537
    invoke-virtual {p0, p1}, Lcom/google/gson_nex/internal/bind/TypeAdapters$23;->read(Lcom/google/gson_nex/stream/JsonReader;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/gson_nex/stream/JsonReader;)Ljava/util/Calendar;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 547
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->peek()Lcom/google/gson_nex/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson_nex/stream/JsonToken;->NULL:Lcom/google/gson_nex/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 548
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextNull()V

    .line 549
    const/4 v0, 0x0

    .line 576
    :goto_0
    return-object v0

    .line 551
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->beginObject()V

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    .line 558
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->peek()Lcom/google/gson_nex/stream/JsonToken;

    move-result-object v0

    sget-object v7, Lcom/google/gson_nex/stream/JsonToken;->END_OBJECT:Lcom/google/gson_nex/stream/JsonToken;

    if-eq v0, v7, :cond_7

    .line 559
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 560
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->nextInt()I

    move-result v0

    .line 561
    const-string/jumbo v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v0

    .line 562
    goto :goto_1

    .line 563
    :cond_2
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v2, v0

    .line 564
    goto :goto_1

    .line 565
    :cond_3
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v0

    .line 566
    goto :goto_1

    .line 567
    :cond_4
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v0

    .line 568
    goto :goto_1

    .line 569
    :cond_5
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v5, v0

    .line 570
    goto :goto_1

    .line 571
    :cond_6
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v0

    .line 572
    goto :goto_1

    .line 575
    :cond_7
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonReader;->endObject()V

    .line 576
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson_nex/internal/bind/TypeAdapters$23;->write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    if-nez p2, :cond_0

    .line 582
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonWriter;->nullValue()Lcom/google/gson_nex/stream/JsonWriter;

    .line 599
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonWriter;->beginObject()Lcom/google/gson_nex/stream/JsonWriter;

    .line 586
    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Lcom/google/gson_nex/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson_nex/stream/JsonWriter;

    .line 587
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson_nex/stream/JsonWriter;->value(J)Lcom/google/gson_nex/stream/JsonWriter;

    .line 588
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/google/gson_nex/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson_nex/stream/JsonWriter;

    .line 589
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson_nex/stream/JsonWriter;->value(J)Lcom/google/gson_nex/stream/JsonWriter;

    .line 590
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/google/gson_nex/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson_nex/stream/JsonWriter;

    .line 591
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson_nex/stream/JsonWriter;->value(J)Lcom/google/gson_nex/stream/JsonWriter;

    .line 592
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/google/gson_nex/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson_nex/stream/JsonWriter;

    .line 593
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson_nex/stream/JsonWriter;->value(J)Lcom/google/gson_nex/stream/JsonWriter;

    .line 594
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/google/gson_nex/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson_nex/stream/JsonWriter;

    .line 595
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson_nex/stream/JsonWriter;->value(J)Lcom/google/gson_nex/stream/JsonWriter;

    .line 596
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/google/gson_nex/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson_nex/stream/JsonWriter;

    .line 597
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson_nex/stream/JsonWriter;->value(J)Lcom/google/gson_nex/stream/JsonWriter;

    .line 598
    invoke-virtual {p1}, Lcom/google/gson_nex/stream/JsonWriter;->endObject()Lcom/google/gson_nex/stream/JsonWriter;

    goto :goto_0
.end method
