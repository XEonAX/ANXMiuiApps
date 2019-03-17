.class public Lcom/adobe/xmp/XMPUtils;
.super Ljava/lang/Object;
.source "XMPUtils.java"


# direct methods
.method public static convertFromDate(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Lcom/adobe/xmp/XMPDateTime;

    .prologue
    .line 470
    invoke-static {p0}, Lcom/adobe/xmp/impl/ISO8601Converter;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 266
    :cond_0
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Empty convert-string"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 268
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 273
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 273
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "true"

    .line 278
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "t"

    .line 279
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "on"

    .line 280
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "yes"

    .line 281
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    move v1, v2

    .line 277
    goto :goto_0
.end method

.method public static convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;
    .locals 3
    .param p0, "rawValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 450
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 452
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty convert-string"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 456
    :cond_1
    invoke-static {p0}, Lcom/adobe/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static convertToDouble(Ljava/lang/String;)D
    .locals 5
    .param p0, "rawValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    .line 409
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 411
    :cond_0
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Empty convert-string"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Invalid double string"

    invoke-direct {v1, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 415
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    return-wide v2
.end method

.method public static convertToInteger(Ljava/lang/String;)I
    .locals 5
    .param p0, "rawValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    .line 315
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 317
    :cond_0
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Empty convert-string"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Invalid integer string"

    invoke-direct {v1, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 319
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :try_start_1
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 325
    :goto_0
    return v1

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0
.end method

.method public static convertToLong(Ljava/lang/String;)J
    .locals 5
    .param p0, "rawValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    .line 362
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 364
    :cond_0
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Empty convert-string"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Invalid long string"

    invoke-direct {v1, v2, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 366
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :try_start_1
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 372
    :goto_0
    return-wide v2

    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 4
    .param p0, "base64String"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 499
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Base64;->decode([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 501
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Invalid base64 string"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method
