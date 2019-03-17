.class public Lorg/keyczar/TimeoutVerifier;
.super Ljava/lang/Object;
.source "TimeoutVerifier.java"


# instance fields
.field private clock:Lorg/keyczar/util/Clock;

.field private verifier:Lorg/keyczar/Verifier;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/keyczar/util/SystemClock;

    invoke-direct {v0}, Lorg/keyczar/util/SystemClock;-><init>()V

    iput-object v0, p0, Lorg/keyczar/TimeoutVerifier;->clock:Lorg/keyczar/util/Clock;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/keyczar/util/SystemClock;

    invoke-direct {v0}, Lorg/keyczar/util/SystemClock;-><init>()V

    iput-object v0, p0, Lorg/keyczar/TimeoutVerifier;->clock:Lorg/keyczar/util/Clock;

    .line 69
    new-instance v0, Lorg/keyczar/Verifier;

    invoke-direct {v0, p1}, Lorg/keyczar/Verifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/keyczar/TimeoutVerifier;->setVerifier(Lorg/keyczar/Verifier;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/keyczar/Verifier;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/keyczar/util/SystemClock;

    invoke-direct {v0}, Lorg/keyczar/util/SystemClock;-><init>()V

    iput-object v0, p0, Lorg/keyczar/TimeoutVerifier;->clock:Lorg/keyczar/util/Clock;

    .line 78
    invoke-virtual {p0, p1}, Lorg/keyczar/TimeoutVerifier;->setVerifier(Lorg/keyczar/Verifier;)V

    .line 79
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/keyczar/util/SystemClock;

    invoke-direct {v0}, Lorg/keyczar/util/SystemClock;-><init>()V

    iput-object v0, p0, Lorg/keyczar/TimeoutVerifier;->clock:Lorg/keyczar/util/Clock;

    .line 55
    new-instance v0, Lorg/keyczar/Verifier;

    invoke-direct {v0, p1}, Lorg/keyczar/Verifier;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    invoke-virtual {p0, v0}, Lorg/keyczar/TimeoutVerifier;->setVerifier(Lorg/keyczar/Verifier;)V

    .line 56
    return-void
.end method


# virtual methods
.method setClock(Lorg/keyczar/util/Clock;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lorg/keyczar/TimeoutVerifier;->clock:Lorg/keyczar/util/Clock;

    .line 91
    return-void
.end method

.method setVerifier(Lorg/keyczar/Verifier;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/keyczar/TimeoutVerifier;->verifier:Lorg/keyczar/Verifier;

    .line 83
    return-void
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 105
    invoke-static {p2}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v1

    .line 104
    invoke-virtual {p0, v0, v1}, Lorg/keyczar/TimeoutVerifier;->verify([B[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 137
    new-instance v0, Lorg/keyczar/exceptions/ShortSignatureException;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/ShortSignatureException;-><init>(I)V

    throw v0

    .line 139
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 140
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 143
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 144
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 145
    invoke-static {v1}, Lorg/keyczar/util/Util;->toLong([B)J

    move-result-wide v2

    .line 146
    iget-object v4, p0, Lorg/keyczar/TimeoutVerifier;->clock:Lorg/keyczar/util/Clock;

    invoke-interface {v4}, Lorg/keyczar/util/Clock;->now()J

    move-result-wide v4

    .line 147
    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 148
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 152
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 153
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 159
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 163
    iget-object v1, p0, Lorg/keyczar/TimeoutVerifier;->verifier:Lorg/keyczar/Verifier;

    invoke-virtual {v1, v0, v2}, Lorg/keyczar/Verifier;->verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    goto :goto_0
.end method

.method public verify([B[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/TimeoutVerifier;->verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method
