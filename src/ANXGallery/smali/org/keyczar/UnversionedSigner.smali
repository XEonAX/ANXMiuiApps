.class public Lorg/keyczar/UnversionedSigner;
.super Lorg/keyczar/UnversionedVerifier;
.source "UnversionedSigner.java"


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
    .line 74
    invoke-direct {p0, p1}, Lorg/keyczar/UnversionedVerifier;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lorg/keyczar/StreamQueue;

    invoke-direct {v0}, Lorg/keyczar/StreamQueue;-><init>()V

    iput-object v0, p0, Lorg/keyczar/UnversionedSigner;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    .line 75
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
    invoke-direct {p0, p1}, Lorg/keyczar/UnversionedVerifier;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 47
    new-instance v0, Lorg/keyczar/StreamQueue;

    invoke-direct {v0}, Lorg/keyczar/StreamQueue;-><init>()V

    iput-object v0, p0, Lorg/keyczar/UnversionedSigner;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    .line 61
    return-void
.end method


# virtual methods
.method public digestSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/keyczar/UnversionedSigner;->getPrimaryKey()Lorg/keyczar/KeyczarKey;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lorg/keyczar/exceptions/NoPrimaryKeyException;

    invoke-direct {v0}, Lorg/keyczar/exceptions/NoPrimaryKeyException;-><init>()V

    throw v0

    .line 89
    :cond_0
    invoke-virtual {v0}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/SigningStream;

    invoke-interface {v0}, Lorg/keyczar/interfaces/SigningStream;->digestSize()I

    move-result v0

    return v0
.end method

.method isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
    .locals 1

    .prologue
    .line 162
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
    .line 154
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/keyczar/UnversionedSigner;->sign([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method sign(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/keyczar/UnversionedSigner;->getPrimaryKey()Lorg/keyczar/KeyczarKey;

    move-result-object v1

    .line 119
    if-nez v1, :cond_0

    .line 120
    new-instance v0, Lorg/keyczar/exceptions/NoPrimaryKeyException;

    invoke-direct {v0}, Lorg/keyczar/exceptions/NoPrimaryKeyException;-><init>()V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/keyczar/UnversionedSigner;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    invoke-virtual {v0}, Lorg/keyczar/StreamQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/SigningStream;

    .line 123
    if-nez v0, :cond_1

    .line 124
    invoke-virtual {v1}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/SigningStream;

    .line 127
    :cond_1
    invoke-virtual {p0}, Lorg/keyczar/UnversionedSigner;->digestSize()I

    move-result v1

    .line 128
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 129
    new-instance v0, Lorg/keyczar/exceptions/ShortBufferException;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lorg/keyczar/exceptions/ShortBufferException;-><init>(II)V

    throw v0

    .line 132
    :cond_2
    invoke-interface {v0}, Lorg/keyczar/interfaces/SigningStream;->initSign()V

    .line 134
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 136
    invoke-interface {v0, p1}, Lorg/keyczar/interfaces/SigningStream;->updateSign(Ljava/nio/ByteBuffer;)V

    .line 138
    invoke-interface {v0, p2}, Lorg/keyczar/interfaces/SigningStream;->sign(Ljava/nio/ByteBuffer;)V

    .line 139
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 140
    iget-object v1, p0, Lorg/keyczar/UnversionedSigner;->SIGN_QUEUE:Lorg/keyczar/StreamQueue;

    invoke-virtual {v1, v0}, Lorg/keyczar/StreamQueue;->add(Ljava/lang/Object;)Z

    .line 141
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
    .line 101
    invoke-virtual {p0}, Lorg/keyczar/UnversionedSigner;->digestSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 102
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/keyczar/UnversionedSigner;->sign(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 105
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 106
    return-object v1
.end method
