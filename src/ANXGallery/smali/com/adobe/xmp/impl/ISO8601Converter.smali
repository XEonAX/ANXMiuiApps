.class public final Lcom/adobe/xmp/impl/ISO8601Converter;
.super Ljava/lang/Object;
.source "ISO8601Converter.java"


# direct methods
.method public static parse(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;
    .locals 1
    .param p0, "iso8601String"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>()V

    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;
    .locals 11
    .param p0, "iso8601String"    # Ljava/lang/String;
    .param p1, "binValue"    # Lcom/adobe/xmp/XMPDateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 91
    new-instance v1, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v1, p0}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "input":Lcom/adobe/xmp/impl/ParseState;
    const/4 v8, 0x0

    .line 95
    invoke-virtual {v1, v8}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v8

    const/16 v9, 0x54

    if-eq v8, v9, :cond_1

    .line 96
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->length()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v8

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_1

    .line 97
    :cond_0
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->length()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_3

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_3

    :cond_1
    const/4 v3, 0x1

    .line 99
    .local v3, "timeOnly":Z
    :goto_0
    if-nez v3, :cond_b

    .line 101
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_2

    .line 103
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 108
    :cond_2
    const-string v8, "Invalid year in date string"

    const/16 v9, 0x270f

    invoke-virtual {v1, v8, v9}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 109
    .local v7, "value":I
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_4

    .line 111
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Invalid date string, after year"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 97
    .end local v3    # "timeOnly":Z
    .end local v7    # "value":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 114
    .restart local v3    # "timeOnly":Z
    .restart local v7    # "value":I
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_5

    .line 116
    neg-int v7, v7

    .line 118
    :cond_5
    invoke-interface {p1, v7}, Lcom/adobe/xmp/XMPDateTime;->setYear(I)V

    .line 119
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 273
    :cond_6
    return-object p1

    .line 123
    :cond_7
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 127
    const-string v8, "Invalid month in date string"

    const/16 v9, 0xc

    invoke-virtual {v1, v8, v9}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 128
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_8

    .line 130
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Invalid date string, after month"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 132
    :cond_8
    invoke-interface {p1, v7}, Lcom/adobe/xmp/XMPDateTime;->setMonth(I)V

    .line 133
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 137
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 141
    const-string v8, "Invalid day in date string"

    const/16 v9, 0x1f

    invoke-virtual {v1, v8, v9}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 142
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x54

    if-eq v8, v9, :cond_9

    .line 144
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Invalid date string, after day"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 146
    :cond_9
    invoke-interface {p1, v7}, Lcom/adobe/xmp/XMPDateTime;->setDay(I)V

    .line 147
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 159
    .end local v7    # "value":I
    :goto_1
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x54

    if-ne v8, v9, :cond_c

    .line 161
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 171
    :cond_a
    const-string v8, "Invalid hour in date string"

    const/16 v9, 0x17

    invoke-virtual {v1, v8, v9}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 172
    .restart local v7    # "value":I
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_d

    .line 174
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Invalid date string, after hour"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 155
    .end local v7    # "value":I
    :cond_b
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Lcom/adobe/xmp/XMPDateTime;->setMonth(I)V

    .line 156
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Lcom/adobe/xmp/XMPDateTime;->setDay(I)V

    goto :goto_1

    .line 163
    :cond_c
    if-nez v3, :cond_a

    .line 165
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Invalid date string, missing \'T\' after date"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 176
    .restart local v7    # "value":I
    :cond_d
    invoke-interface {p1, v7}, Lcom/adobe/xmp/XMPDateTime;->setHour(I)V

    .line 179
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 183
    const-string v8, "Invalid minute in date string"

    const/16 v9, 0x3b

    invoke-virtual {v1, v8, v9}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 184
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 185
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_e

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_e

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_e

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_e

    .line 187
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Invalid date string, after minute"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 189
    :cond_e
    invoke-interface {p1, v7}, Lcom/adobe/xmp/XMPDateTime;->setMinute(I)V

    .line 191
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_13

    .line 193
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 194
    const-string v8, "Invalid whole seconds in date string"

    const/16 v9, 0x3b

    invoke-virtual {v1, v8, v9}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 195
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2e

    if-eq v8, v9, :cond_f

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_f

    .line 196
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_f

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_f

    .line 198
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Invalid date string, after whole seconds"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 201
    :cond_f
    invoke-interface {p1, v7}, Lcom/adobe/xmp/XMPDateTime;->setSecond(I)V

    .line 202
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_13

    .line 204
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 205
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->pos()I

    move-result v0

    .line 206
    .local v0, "digits":I
    const-string v8, "Invalid fractional seconds in date string"

    const v9, 0x3b9ac9ff

    invoke-virtual {v1, v8, v9}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v7

    .line 207
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_10

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_10

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_10

    .line 209
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Invalid date string, after fractional second"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 212
    :cond_10
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->pos()I

    move-result v8

    sub-int v0, v8, v0

    .line 213
    :goto_2
    const/16 v8, 0x9

    if-le v0, v8, :cond_11

    .line 215
    div-int/lit8 v7, v7, 0xa

    .line 213
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 217
    :cond_11
    :goto_3
    const/16 v8, 0x9

    if-ge v0, v8, :cond_12

    .line 219
    mul-int/lit8 v7, v7, 0xa

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 221
    :cond_12
    invoke-interface {p1, v7}, Lcom/adobe/xmp/XMPDateTime;->setNanoSecond(I)V

    .line 225
    .end local v0    # "digits":I
    :cond_13
    const/4 v6, 0x0

    .line 226
    .local v6, "tzSign":I
    const/4 v4, 0x0

    .line 227
    .local v4, "tzHour":I
    const/4 v5, 0x0

    .line 228
    .local v5, "tzMinute":I
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_15

    .line 230
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 263
    :cond_14
    :goto_4
    mul-int/lit16 v8, v4, 0xe10

    mul-int/lit16 v8, v8, 0x3e8

    mul-int/lit8 v9, v5, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    add-int/2addr v8, v9

    mul-int v2, v8, v6

    .line 264
    .local v2, "offset":I
    new-instance v8, Ljava/util/SimpleTimeZone;

    const-string v9, ""

    invoke-direct {v8, v2, v9}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v8}, Lcom/adobe/xmp/XMPDateTime;->setTimeZone(Ljava/util/TimeZone;)V

    .line 267
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 269
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Invalid date string, extra chars at end"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 232
    .end local v2    # "offset":I
    :cond_15
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 234
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2b

    if-ne v8, v9, :cond_16

    .line 236
    const/4 v6, 0x1

    .line 248
    :goto_5
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 250
    const-string v8, "Invalid time zone hour in date string"

    const/16 v9, 0x17

    invoke-virtual {v1, v8, v9}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v4

    .line 251
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_18

    .line 253
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Invalid date string, after time zone hour"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 238
    :cond_16
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_17

    .line 240
    const/4 v6, -0x1

    goto :goto_5

    .line 244
    :cond_17
    new-instance v8, Lcom/adobe/xmp/XMPException;

    const-string v9, "Time zone must begin with \'Z\', \'+\', or \'-\'"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 256
    :cond_18
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    .line 259
    const-string v8, "Invalid time zone minute in date string"

    const/16 v9, 0x3b

    invoke-virtual {v1, v8, v9}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_4
.end method

.method public static render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;
    .locals 16
    .param p0, "dateTime"    # Lcom/adobe/xmp/XMPDateTime;

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 314
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v9, "0000"

    new-instance v10, Ljava/text/DecimalFormatSymbols;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v10, v11}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 315
    .local v1, "df":Ljava/text/DecimalFormat;
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getYear()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v9

    if-nez v9, :cond_0

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 377
    :goto_0
    return-object v9

    .line 322
    :cond_0
    const-string v9, "\'-\'00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 323
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v9

    if-nez v9, :cond_1

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 330
    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getHour()I

    move-result v9

    if-nez v9, :cond_2

    .line 334
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getMinute()I

    move-result v9

    if-nez v9, :cond_2

    .line 335
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v9

    if-nez v9, :cond_2

    .line 336
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v9

    if-nez v9, :cond_2

    .line 337
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    if-eqz v9, :cond_5

    .line 340
    :cond_2
    const/16 v9, 0x54

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    const-string v9, "00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 342
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getHour()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    const/16 v9, 0x3a

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getMinute()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v9

    if-nez v9, :cond_3

    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v9

    if-eqz v9, :cond_4

    .line 349
    :cond_3
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v9

    int-to-double v10, v9

    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v9

    int-to-double v12, v9

    const-wide v14, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v12, v14

    add-double v4, v10, v12

    .line 351
    .local v4, "seconds":D
    const-string v9, ":00.#########"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    .end local v4    # "seconds":D
    :cond_4
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 359
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 360
    .local v6, "timeInMillis":J
    invoke-interface/range {p0 .. p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 361
    .local v2, "offset":I
    if-nez v2, :cond_6

    .line 364
    const/16 v9, 0x5a

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    .end local v2    # "offset":I
    .end local v6    # "timeInMillis":J
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 368
    .restart local v2    # "offset":I
    .restart local v6    # "timeInMillis":J
    :cond_6
    const v9, 0x36ee80

    div-int v3, v2, v9

    .line 369
    .local v3, "thours":I
    const v9, 0x36ee80

    rem-int v9, v2, v9

    const v10, 0xea60

    div-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 370
    .local v8, "tminutes":I
    const-string v9, "+00;-00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 371
    int-to-long v10, v3

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    const-string v9, ":00"

    invoke-virtual {v1, v9}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 373
    int-to-long v10, v8

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
