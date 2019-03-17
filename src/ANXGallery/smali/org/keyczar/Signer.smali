.class public Lorg/keyczar/Signer;
.super Lorg/keyczar/Verifier;
.source "Signer.java"


# static fields
.field static final TIMESTAMP_SIZE:I = 0x8


# instance fields
.field private final SIGN_QUEUE:Lorg/keyczar/StreamQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/keyczar/StreamQueue",
            "<",
            "Lorg/keyczar/interfaces/SigningStream;",
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
    .line 69
    invoke-direct {p0, p1}, Lorg/keyczar/Verifier;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lorg/keyczar/StreamQueue;

    invoke-direct {v0}, Lorg/keyczar/StreamQueue;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Signer;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    .line 70
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
    .line 56
    invoke-direct {p0, p1}, Lorg/keyczar/Verifier;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 44
    new-instance v0, Lorg/keyczar/StreamQueue;

    invoke-direct {v0}, Lorg/keyczar/StreamQueue;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Signer;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    .line 57
    return-void
.end method


# virtual methods
.method public attachedSign([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-virtual {p0}, Lorg/keyczar/Signer;->getPrimaryKey()Lorg/keyczar/KeyczarKey;

    move-result-object v2

    .line 210
    if-nez v2, :cond_0

    .line 211
    new-instance v0, Lorg/keyczar/exceptions/NoPrimaryKeyException;

    invoke-direct {v0}, Lorg/keyczar/exceptions/NoPrimaryKeyException;-><init>()V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/keyczar/Signer;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    invoke-virtual {v0}, Lorg/keyczar/StreamQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/SigningStream;

    .line 216
    if-nez v0, :cond_1

    .line 218
    invoke-virtual {v2}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/SigningStream;

    .line 221
    :cond_1
    invoke-interface {v0}, Lorg/keyczar/interfaces/SigningStream;->initSign()V

    .line 224
    invoke-static {v5}, Lorg/keyczar/util/Util;->fromInt(I)[B

    move-result-object v1

    .line 225
    array-length v3, p2

    if-lez v3, :cond_2

    .line 226
    invoke-static {p2}, Lorg/keyczar/util/Util;->lenPrefix([B)[B

    move-result-object v1

    .line 229
    :cond_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    .line 230
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    .line 231
    sget-object v1, Lorg/keyczar/Signer;->FORMAT_BYTES:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    .line 234
    invoke-virtual {p0}, Lorg/keyczar/Signer;->digestSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 237
    invoke-interface {v0, v1}, Lorg/keyczar/interfaces/SigningStream;->sign(Ljava/nio/ByteBuffer;)V

    .line 238
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 242
    const/4 v3, 0x4

    new-array v3, v3, [[B

    sget-object v4, Lorg/keyczar/Signer;->FORMAT_BYTES:[B

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v2}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x2

    .line 243
    invoke-static {p1}, Lorg/keyczar/util/Util;->lenPrefix([B)[B

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    aput-object v1, v3, v2

    .line 242
    invoke-static {v3}, Lorg/keyczar/util/Util;->cat([[B)[B

    move-result-object v1

    .line 245
    iget-object v2, p0, Lorg/keyczar/Signer;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    invoke-virtual {v2, v0}, Lorg/keyczar/StreamQueue;->add(Ljava/lang/Object;)Z

    .line 247
    return-object v1
.end method

.method public digestSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/keyczar/Signer;->getPrimaryKey()Lorg/keyczar/KeyczarKey;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lorg/keyczar/exceptions/NoPrimaryKeyException;

    invoke-direct {v0}, Lorg/keyczar/exceptions/NoPrimaryKeyException;-><init>()V

    throw v0

    .line 84
    :cond_0
    invoke-virtual {v0}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/SigningStream;

    invoke-interface {v0}, Lorg/keyczar/interfaces/SigningStream;->digestSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 194
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/keyczar/Signer;->sign([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sign(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/keyczar/Signer;->sign(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JLjava/nio/ByteBuffer;)V

    .line 115
    return-void
.end method

.method sign(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JLjava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 133
    invoke-virtual {p0}, Lorg/keyczar/Signer;->getPrimaryKey()Lorg/keyczar/KeyczarKey;

    move-result-object v2

    .line 134
    if-nez v2, :cond_0

    .line 135
    new-instance v0, Lorg/keyczar/exceptions/NoPrimaryKeyException;

    invoke-direct {v0}, Lorg/keyczar/exceptions/NoPrimaryKeyException;-><init>()V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/keyczar/Signer;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    invoke-virtual {v0}, Lorg/keyczar/StreamQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/SigningStream;

    .line 138
    if-nez v0, :cond_1

    .line 139
    invoke-virtual {v2}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/SigningStream;

    .line 142
    :cond_1
    invoke-virtual {p0}, Lorg/keyczar/Signer;->digestSize()I

    move-result v1

    .line 143
    cmp-long v3, p3, v4

    if-lez v3, :cond_2

    .line 144
    add-int/lit8 v1, v1, 0x8

    .line 146
    :cond_2
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v1, :cond_3

    .line 147
    new-instance v0, Lorg/keyczar/exceptions/ShortBufferException;

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lorg/keyczar/exceptions/ShortBufferException;-><init>(II)V

    throw v0

    .line 150
    :cond_3
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 151
    invoke-virtual {v2, v1}, Lorg/keyczar/KeyczarKey;->copyHeader(Ljava/nio/ByteBuffer;)V

    .line 152
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 153
    invoke-interface {v0}, Lorg/keyczar/interfaces/SigningStream;->initSign()V

    .line 156
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 157
    invoke-virtual {p5, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 159
    cmp-long v1, p3, v4

    if-lez v1, :cond_4

    .line 161
    invoke-static {p3, p4}, Lorg/keyczar/util/Util;->fromLong(J)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 162
    invoke-virtual {p5, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 164
    invoke-interface {v0, v1}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    .line 167
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_5

    .line 169
    invoke-interface {v0, p2}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    .line 173
    :cond_5
    invoke-interface {v0, p1}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    .line 175
    sget-object v1, Lorg/keyczar/Signer;->FORMAT_BYTES:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    .line 178
    invoke-interface {v0, p5}, Lorg/keyczar/interfaces/SigningStream;->sign(Ljava/nio/ByteBuffer;)V

    .line 179
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 180
    iget-object v1, p0, Lorg/keyczar/Signer;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    invoke-virtual {v1, v0}, Lorg/keyczar/StreamQueue;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public sign([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/keyczar/Signer;->digestSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/keyczar/Signer;->sign(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 99
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 100
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 101
    return-object v1
.end method
