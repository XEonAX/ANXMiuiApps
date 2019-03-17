.class public Lorg/keyczar/Crypter;
.super Lorg/keyczar/Encrypter;
.source "Crypter.java"


# static fields
.field private static final DECRYPT_CHUNK_SIZE:I = 0x400


# instance fields
.field private final CRYPT_CACHE:Lorg/keyczar/StreamCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/keyczar/StreamCache",
            "<",
            "Lorg/keyczar/interfaces/DecryptingStream;",
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
    .line 68
    invoke-direct {p0, p1}, Lorg/keyczar/Encrypter;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lorg/keyczar/StreamCache;

    invoke-direct {v0}, Lorg/keyczar/StreamCache;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Crypter;->CRYPT_CACHE:Lorg/keyczar/StreamCache;

    .line 69
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
    .line 54
    invoke-direct {p0, p1}, Lorg/keyczar/Encrypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 42
    new-instance v0, Lorg/keyczar/StreamCache;

    invoke-direct {v0}, Lorg/keyczar/StreamCache;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Crypter;->CRYPT_CACHE:Lorg/keyczar/StreamCache;

    .line 55
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/keyczar/Crypter;->decrypt([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public decrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x400

    .line 101
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 103
    new-instance v0, Lorg/keyczar/exceptions/ShortCiphertextException;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/ShortCiphertextException;-><init>(I)V

    throw v0

    .line 105
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    new-instance v1, Lorg/keyczar/exceptions/BadVersionException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/BadVersionException;-><init>(B)V

    throw v1

    .line 110
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 111
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {p0, v0}, Lorg/keyczar/Crypter;->getKey([B)Lorg/keyczar/KeyczarKey;

    move-result-object v2

    .line 113
    if-nez v2, :cond_2

    .line 114
    new-instance v1, Lorg/keyczar/exceptions/KeyNotFoundException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyNotFoundException;-><init>([B)V

    throw v1

    .line 118
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 120
    iget-object v0, p0, Lorg/keyczar/Crypter;->CRYPT_CACHE:Lorg/keyczar/StreamCache;

    invoke-virtual {v0, v2}, Lorg/keyczar/StreamCache;->get(Lorg/keyczar/KeyczarKey;)Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/DecryptingStream;

    .line 121
    if-nez v0, :cond_3

    .line 122
    invoke-virtual {v2}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/DecryptingStream;

    .line 125
    :cond_3
    invoke-interface {v0}, Lorg/keyczar/interfaces/DecryptingStream;->getVerifyingStream()Lorg/keyczar/interfaces/VerifyingStream;

    move-result-object v3

    .line 126
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-interface {v3}, Lorg/keyczar/interfaces/VerifyingStream;->digestSize()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 127
    new-instance v0, Lorg/keyczar/exceptions/ShortCiphertextException;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/ShortCiphertextException;-><init>(I)V

    throw v0

    .line 131
    :cond_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-interface {v3}, Lorg/keyczar/interfaces/VerifyingStream;->digestSize()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 135
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 136
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-interface {v3}, Lorg/keyczar/interfaces/VerifyingStream;->digestSize()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-interface {v0, v1}, Lorg/keyczar/interfaces/DecryptingStream;->initDecrypt(Ljava/nio/ByteBuffer;)V

    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 143
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 144
    invoke-interface {v3}, Lorg/keyczar/interfaces/VerifyingStream;->initVerify()V

    .line 145
    invoke-interface {v3, v5}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 147
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 150
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v5, v7, :cond_5

    .line 151
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 152
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 153
    invoke-interface {v0, v5, p2}, Lorg/keyczar/interfaces/DecryptingStream;->updateDecrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 154
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 155
    invoke-interface {v3, v5}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 156
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit16 v5, v5, 0x400

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 158
    :cond_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 159
    invoke-interface {v3, v1}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 160
    invoke-interface {v3, v4}, Lorg/keyczar/interfaces/VerifyingStream;->verify(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 161
    new-instance v0, Lorg/keyczar/exceptions/InvalidSignatureException;

    invoke-direct {v0}, Lorg/keyczar/exceptions/InvalidSignatureException;-><init>()V

    throw v0

    .line 163
    :cond_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 164
    invoke-interface {v0, v1, p2}, Lorg/keyczar/interfaces/DecryptingStream;->doFinalDecrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 165
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 166
    iget-object v1, p0, Lorg/keyczar/Crypter;->CRYPT_CACHE:Lorg/keyczar/StreamCache;

    invoke-virtual {v1, v2, v0}, Lorg/keyczar/StreamCache;->put(Lorg/keyczar/KeyczarKey;Lorg/keyczar/interfaces/Stream;)V

    .line 167
    return-void
.end method

.method public decrypt([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 81
    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 82
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/keyczar/Crypter;->decrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 85
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 86
    return-object v1
.end method

.method isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
