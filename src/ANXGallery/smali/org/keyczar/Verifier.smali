.class public Lorg/keyczar/Verifier;
.super Lorg/keyczar/Keyczar;
.source "Verifier.java"


# instance fields
.field private final VERIFY_CACHE:Lorg/keyczar/StreamCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/keyczar/StreamCache",
            "<",
            "Lorg/keyczar/interfaces/VerifyingStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/keyczar/Keyczar;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lorg/keyczar/StreamCache;

    invoke-direct {v0}, Lorg/keyczar/StreamCache;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Verifier;->VERIFY_CACHE:Lorg/keyczar/StreamCache;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/keyczar/Keyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 47
    new-instance v0, Lorg/keyczar/StreamCache;

    invoke-direct {v0}, Lorg/keyczar/StreamCache;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Verifier;->VERIFY_CACHE:Lorg/keyczar/StreamCache;

    .line 61
    return-void
.end method

.method private checkFormatAndGetHash(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/BadVersionException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 281
    if-eqz v0, :cond_0

    .line 282
    new-instance v1, Lorg/keyczar/exceptions/BadVersionException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/BadVersionException;-><init>(B)V

    throw v1

    .line 285
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 286
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 288
    return-object v0
.end method

.method private getVerifyingKey([B)Lorg/keyczar/KeyczarKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyNotFoundException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lorg/keyczar/Verifier;->getKey([B)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    .line 294
    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lorg/keyczar/exceptions/KeyNotFoundException;

    invoke-direct {v0, p1}, Lorg/keyczar/exceptions/KeyNotFoundException;-><init>([B)V

    throw v0

    .line 298
    :cond_0
    return-object v0
.end method


# virtual methods
.method public attachedVerify([B[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 207
    invoke-direct {p0, v0}, Lorg/keyczar/Verifier;->checkFormatAndGetHash(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 208
    invoke-direct {p0, v1}, Lorg/keyczar/Verifier;->getVerifyingKey([B)Lorg/keyczar/KeyczarKey;

    move-result-object v1

    .line 212
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 213
    new-array v2, v2, [B

    .line 214
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 215
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 216
    new-array v3, v3, [B

    .line 217
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 221
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/keyczar/util/Util;->fromInt(I)[B

    move-result-object v0

    .line 222
    array-length v4, p2

    if-lez v4, :cond_0

    .line 223
    invoke-static {p2}, Lorg/keyczar/util/Util;->lenPrefix([B)[B

    move-result-object v0

    .line 225
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 226
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 225
    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/keyczar/Verifier;->rawVerify(Lorg/keyczar/KeyczarKey;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public getAttachedData([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0, p1, p2}, Lorg/keyczar/Verifier;->attachedVerify([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Attached signature failed to verify. Unable to return signed data."

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Lorg/keyczar/Verifier;->getAttachedDataWithoutVerifying([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getAttachedDataWithoutVerifying([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 265
    invoke-direct {p0, v0}, Lorg/keyczar/Verifier;->checkFormatAndGetHash(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 267
    invoke-direct {p0, v1}, Lorg/keyczar/Verifier;->getVerifyingKey([B)Lorg/keyczar/KeyczarKey;

    .line 271
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 272
    new-array v1, v1, [B

    .line 273
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 275
    return-object v1
.end method

.method isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->VERIFY:Lorg/keyczar/enums/KeyPurpose;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method rawVerify(Lorg/keyczar/KeyczarKey;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/keyczar/Verifier;->VERIFY_CACHE:Lorg/keyczar/StreamCache;

    invoke-virtual {v0, p1}, Lorg/keyczar/StreamCache;->get(Lorg/keyczar/KeyczarKey;)Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/VerifyingStream;

    .line 173
    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p1}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/VerifyingStream;

    .line 177
    :cond_0
    invoke-interface {v0}, Lorg/keyczar/interfaces/VerifyingStream;->initVerify()V

    .line 178
    invoke-interface {v0, p2}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 179
    if-eqz p3, :cond_1

    .line 180
    invoke-interface {v0, p3}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 184
    :cond_1
    sget-object v1, Lorg/keyczar/Verifier;->FORMAT_BYTES:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 186
    invoke-interface {v0, p4}, Lorg/keyczar/interfaces/VerifyingStream;->verify(Ljava/nio/ByteBuffer;)Z

    move-result v1

    .line 187
    iget-object v2, p0, Lorg/keyczar/Verifier;->VERIFY_CACHE:Lorg/keyczar/StreamCache;

    invoke-virtual {v2, p1, v0}, Lorg/keyczar/StreamCache;->put(Lorg/keyczar/KeyczarKey;Lorg/keyczar/interfaces/Stream;)V

    .line 188
    return v1
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 161
    invoke-static {p2}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v1

    .line 160
    invoke-virtual {p0, v0, v1}, Lorg/keyczar/Verifier;->verify([B[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/keyczar/Verifier;->verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 118
    new-instance v0, Lorg/keyczar/exceptions/ShortSignatureException;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/ShortSignatureException;-><init>(I)V

    throw v0

    .line 121
    :cond_0
    invoke-direct {p0, p3}, Lorg/keyczar/Verifier;->checkFormatAndGetHash(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 122
    invoke-direct {p0, v0}, Lorg/keyczar/Verifier;->getVerifyingKey([B)Lorg/keyczar/KeyczarKey;

    move-result-object v1

    .line 124
    if-nez v1, :cond_1

    .line 125
    new-instance v1, Lorg/keyczar/exceptions/KeyNotFoundException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyNotFoundException;-><init>([B)V

    throw v1

    .line 129
    :cond_1
    iget-object v0, p0, Lorg/keyczar/Verifier;->VERIFY_CACHE:Lorg/keyczar/StreamCache;

    invoke-virtual {v0, v1}, Lorg/keyczar/StreamCache;->get(Lorg/keyczar/KeyczarKey;)Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/VerifyingStream;

    .line 130
    if-nez v0, :cond_2

    .line 131
    invoke-virtual {v1}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/VerifyingStream;

    .line 133
    :cond_2
    invoke-interface {v0}, Lorg/keyczar/interfaces/VerifyingStream;->initVerify()V

    .line 134
    if-eqz p2, :cond_3

    .line 135
    invoke-interface {v0, p2}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 138
    :cond_3
    invoke-interface {v0, p1}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 141
    sget-object v2, Lorg/keyczar/Verifier;->FORMAT_BYTES:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 143
    invoke-interface {v0, p3}, Lorg/keyczar/interfaces/VerifyingStream;->verify(Ljava/nio/ByteBuffer;)Z

    move-result v2

    .line 144
    iget-object v3, p0, Lorg/keyczar/Verifier;->VERIFY_CACHE:Lorg/keyczar/StreamCache;

    invoke-virtual {v3, v1, v0}, Lorg/keyczar/StreamCache;->put(Lorg/keyczar/KeyczarKey;Lorg/keyczar/interfaces/Stream;)V

    .line 145
    return v2
.end method

.method public verify([B[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/Verifier;->verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method
