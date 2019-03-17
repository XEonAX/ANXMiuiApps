.class public Lorg/keyczar/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final DIGEST_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final GSON_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/gson_nex/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private static final RAND_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_BUF_SIZE:I = 0x2000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lorg/keyczar/util/Util;->DIGEST_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lorg/keyczar/util/Util;->RAND_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 59
    new-instance v0, Lorg/keyczar/util/Util$1;

    invoke-direct {v0}, Lorg/keyczar/util/Util$1;-><init>()V

    sput-object v0, Lorg/keyczar/util/Util;->GSON_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static varargs cat([[B)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 397
    .line 398
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 399
    array-length v4, v4

    add-int/2addr v2, v4

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    new-array v3, v2, [B

    .line 403
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, p0, v0

    .line 404
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    array-length v5, v5

    add-int/2addr v2, v5

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    :cond_1
    return-object v3
.end method

.method public static decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/Base64DecodingException;
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public static encodeBigInteger(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromInt(I)[B
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 100
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/keyczar/util/Util;->writeInt(I[BI)V

    .line 101
    return-object v0
.end method

.method public static fromLong(J)[B
    .locals 2

    .prologue
    .line 112
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 113
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/keyczar/util/Util;->writeLong(J[BI)V

    .line 114
    return-object v0
.end method

.method public static generateKeyPair(Ljava/lang/String;I)Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 455
    :try_start_0
    invoke-static {p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 456
    invoke-virtual {v0, p1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 457
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 458
    return-object v0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static gson()Lcom/google/gson_nex/Gson;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/keyczar/util/Util;->GSON_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson_nex/Gson;

    return-object v0
.end method

.method public static varargs hash([[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 219
    sget-object v0, Lorg/keyczar/util/Util;->DIGEST_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 220
    if-nez v0, :cond_0

    .line 222
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 227
    :cond_0
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 228
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 230
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 231
    sget-object v2, Lorg/keyczar/util/Util;->DIGEST_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 232
    return-object v1
.end method

.method public static lenPrefix([B)[B
    .locals 2

    .prologue
    .line 154
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/keyczar/util/Util;->fromInt(I)[B

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p0

    .line 158
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs lenPrefixPack([[B)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 175
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x4

    .line 176
    array-length v3, p0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p0, v1

    .line 177
    array-length v4, v4

    add-int/2addr v2, v4

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    new-array v1, v2, [B

    .line 180
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 182
    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 183
    array-length v3, p0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, p0, v0

    .line 185
    array-length v5, v4

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_1
    return-object v1
.end method

.method public static lenPrefixUnpack([B)[[B
    .locals 5

    .prologue
    .line 199
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 201
    new-array v3, v2, [[B

    .line 202
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 203
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 204
    new-array v4, v4, [B

    .line 205
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 206
    aput-object v4, v3, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-object v3
.end method

.method public static varargs prefixHash([[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lorg/keyczar/util/Util;->DIGEST_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 129
    if-nez v0, :cond_0

    .line 131
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :cond_0
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 137
    array-length v4, v3

    invoke-static {v4}, Lorg/keyczar/util/Util;->fromInt(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 138
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 141
    sget-object v2, Lorg/keyczar/util/Util;->DIGEST_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 142
    return-object v1
.end method

.method public static rand([B)V
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lorg/keyczar/util/Util;->RAND_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    .line 243
    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 246
    :cond_0
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 247
    sget-object v1, Lorg/keyczar/util/Util;->RAND_QUEUE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public static rand(I)[B
    .locals 1

    .prologue
    .line 256
    new-array v0, p0, [B

    .line 257
    invoke-static {v0}, Lorg/keyczar/util/Util;->rand([B)V

    .line 258
    return-object v0
.end method

.method static readInt([BI)I
    .locals 3

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    .line 274
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 275
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 276
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 277
    return v0
.end method

.method static readLong([BI)J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 291
    const-wide/16 v0, 0x0

    .line 292
    add-int/lit8 v2, p1, 0x1

    aget-byte v3, p0, p1

    int-to-long v4, v3

    and-long/2addr v4, v6

    const/16 v3, 0x38

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 293
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v2, 0x30

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 294
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    int-to-long v4, v3

    and-long/2addr v4, v6

    const/16 v3, 0x28

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 295
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v2, 0x20

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 296
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    int-to-long v4, v3

    and-long/2addr v4, v6

    const/16 v3, 0x18

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 297
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v2, 0x10

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 298
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    int-to-long v4, v3

    and-long/2addr v4, v6

    const/16 v3, 0x8

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    .line 299
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 300
    return-wide v0
.end method

.method public static readStreamFully(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 427
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 429
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 430
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static safeArrayEquals([B[B)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 377
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 378
    :cond_0
    if-ne p0, p1, :cond_2

    .line 387
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 378
    goto :goto_0

    .line 380
    :cond_3
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 381
    goto :goto_0

    :cond_4
    move v2, v1

    move v3, v1

    .line 384
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_5

    .line 385
    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    xor-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 387
    :cond_5
    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 415
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 416
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 417
    add-int v3, v0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    add-int/2addr v0, p1

    goto :goto_0

    .line 419
    :cond_0
    return-object v1
.end method

.method public static stripLeadingZeros([B)[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 75
    move v0, v1

    .line 78
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    if-nez v2, :cond_0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    if-nez v0, :cond_1

    .line 87
    :goto_1
    return-object p0

    .line 85
    :cond_1
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 86
    array-length v3, v2

    invoke-static {p0, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    .line 87
    goto :goto_1
.end method

.method public static toInt([B)I
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/keyczar/util/Util;->readInt([BI)I

    move-result v0

    return v0
.end method

.method public static toLong([B)J
    .locals 2

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/keyczar/util/Util;->readLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static writeInt(I[BI)V
    .locals 3

    .prologue
    .line 339
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 340
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 341
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 342
    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 343
    return-void
.end method

.method static writeLong(J[BI)V
    .locals 4

    .prologue
    .line 356
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x38

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 357
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 358
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x28

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 359
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x20

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 360
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x18

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 361
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x10

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 362
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x8

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 363
    add-int/lit8 v1, v0, 0x1

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 364
    return-void
.end method
