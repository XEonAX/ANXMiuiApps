.class public Lcom/xiaomi/channel/commonutils/string/XMStringUtils;
.super Ljava/lang/Object;
.source "XMStringUtils.java"


# direct methods
.method public static bytesToString([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 519
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 521
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_0
    return-object v1

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 526
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkAllAscii(Ljava/lang/String;)Z
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 555
    if-eqz p0, :cond_2

    .line 556
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 557
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 558
    .local v0, "aChar":C
    if-ltz v0, :cond_0

    const/16 v2, 0x7f

    if-le v0, v2, :cond_1

    .line 559
    :cond_0
    const/4 v2, 0x0

    .line 562
    .end local v0    # "aChar":C
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 556
    .restart local v0    # "aChar":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v0    # "aChar":C
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static generateRandomString(I)Ljava/lang/String;
    .locals 6
    .param p0, "len"    # I

    .prologue
    .line 383
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    .line 384
    .local v0, "base":Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 385
    .local v3, "random":Ljava/util/Random;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 386
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 387
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 388
    .local v2, "number":I
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v2    # "number":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 507
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 509
    :goto_0
    return-object v1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pInput"    # Ljava/lang/String;

    .prologue
    .line 456
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 459
    .local v0, "lDigest":Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 460
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 461
    .local v2, "lHashInt":Ljava/math/BigInteger;
    const-string v3, "%1$032X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 466
    .end local v0    # "lDigest":Ljava/security/MessageDigest;
    .end local v2    # "lHashInt":Ljava/math/BigInteger;
    .local v1, "lException":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-object p0

    .line 462
    .end local v1    # "lException":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v1

    .line 463
    .restart local v1    # "lException":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 466
    .end local v1    # "lException":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method public static getSHA1Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pInput"    # Ljava/lang/String;

    .prologue
    .line 487
    if-eqz p0, :cond_0

    .line 489
    :try_start_0
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 490
    .local v0, "lDigest":Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 491
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 492
    .local v2, "lHashInt":Ljava/math/BigInteger;
    const-string v3, "%1$032X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 497
    .end local v0    # "lDigest":Ljava/security/MessageDigest;
    .end local v2    # "lHashInt":Ljava/math/BigInteger;
    .end local p0    # "pInput":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 493
    .restart local p0    # "pInput":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 494
    .local v1, "lException":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 497
    .end local v1    # "lException":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static isNumberAndLetter(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    const/4 v2, 0x0

    .line 571
    :goto_0
    return v2

    .line 569
    :cond_0
    const-string v2, "^[A-Za-z0-9]+$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 570
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 571
    .local v0, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method public static isTheSameChars(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 575
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 584
    :cond_0
    :goto_0
    return v2

    .line 578
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 579
    .local v0, "char0":C
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 580
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_0

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 584
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p0, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    .line 296
    const/4 v3, 0x0

    .line 322
    :goto_0
    return-object v3

    .line 298
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    const-string v3, ""

    goto :goto_0

    .line 301
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 302
    .local v1, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 303
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 307
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 309
    .local v0, "buf":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_3

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 313
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 314
    if-eqz p1, :cond_4

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 318
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 319
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 322
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    const/4 v3, 0x0

    .line 220
    :goto_0
    return-object v3

    .line 195
    :cond_0
    if-nez p1, :cond_1

    .line 196
    const-string p1, ""

    .line 202
    :cond_1
    sub-int v1, p3, p2

    .line 203
    .local v1, "bufSize":I
    if-gtz v1, :cond_2

    .line 204
    const-string v3, ""

    goto :goto_0

    .line 207
    :cond_2
    aget-object v3, p0, p2

    if-nez v3, :cond_5

    const/16 v3, 0x10

    .line 208
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 212
    .local v0, "buf":Ljava/lang/StringBuffer;
    move v2, p2

    .local v2, "i":I
    :goto_2
    if-ge v2, p3, :cond_6

    .line 213
    if-le v2, p2, :cond_3

    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    :cond_3
    aget-object v3, p0, v2

    if-eqz v3, :cond_4

    .line 217
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 212
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 207
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :cond_5
    aget-object v3, p0, p2

    .line 208
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    .line 220
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static obfuscateString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "origin"    # Ljava/lang/String;
    .param p1, "interval"    # I

    .prologue
    const/4 v4, 0x1

    .line 595
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 596
    const-string v4, ""

    .line 616
    :goto_0
    return-object v4

    .line 598
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .local v2, "resultSb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 600
    .local v1, "length":I
    if-lez p1, :cond_1

    if-ge v1, p1, :cond_2

    .line 602
    :cond_1
    div-int/lit8 v3, v1, 0x3

    .line 603
    .local v3, "sq":I
    if-le v3, v4, :cond_3

    move p1, v3

    .line 604
    :goto_1
    const/4 v4, 0x3

    if-le p1, v4, :cond_2

    .line 605
    const/4 p1, 0x3

    .line 609
    .end local v3    # "sq":I
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 610
    add-int/lit8 v4, v0, 0x1

    rem-int/2addr v4, p1

    if-nez v4, :cond_4

    .line 611
    const-string v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .restart local v3    # "sq":I
    :cond_3
    move p1, v4

    .line 603
    goto :goto_1

    .line 613
    .end local v3    # "sq":I
    .restart local v0    # "i":I
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 616
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "origin"    # Ljava/lang/String;

    .prologue
    .line 626
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    const-string v0, ""

    .line 629
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
