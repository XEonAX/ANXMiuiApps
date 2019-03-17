.class public Lorg/keyczar/TimeoutSigner;
.super Lorg/keyczar/TimeoutVerifier;
.source "TimeoutSigner.java"


# instance fields
.field private signer:Lorg/keyczar/Signer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/keyczar/TimeoutVerifier;-><init>()V

    .line 62
    new-instance v0, Lorg/keyczar/Signer;

    invoke-direct {v0, p1}, Lorg/keyczar/Signer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/keyczar/TimeoutSigner;->signer:Lorg/keyczar/Signer;

    .line 63
    iget-object v0, p0, Lorg/keyczar/TimeoutSigner;->signer:Lorg/keyczar/Signer;

    invoke-virtual {p0, v0}, Lorg/keyczar/TimeoutSigner;->setVerifier(Lorg/keyczar/Verifier;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/keyczar/Signer;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/keyczar/TimeoutVerifier;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/keyczar/TimeoutSigner;->signer:Lorg/keyczar/Signer;

    .line 73
    iget-object v0, p0, Lorg/keyczar/TimeoutSigner;->signer:Lorg/keyczar/Signer;

    invoke-virtual {p0, v0}, Lorg/keyczar/TimeoutSigner;->setVerifier(Lorg/keyczar/Verifier;)V

    .line 74
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
    .line 46
    invoke-direct {p0}, Lorg/keyczar/TimeoutVerifier;-><init>()V

    .line 47
    new-instance v0, Lorg/keyczar/Signer;

    invoke-direct {v0, p1}, Lorg/keyczar/Signer;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    iput-object v0, p0, Lorg/keyczar/TimeoutSigner;->signer:Lorg/keyczar/Signer;

    .line 48
    iget-object v0, p0, Lorg/keyczar/TimeoutSigner;->signer:Lorg/keyczar/Signer;

    invoke-virtual {p0, v0}, Lorg/keyczar/TimeoutSigner;->setVerifier(Lorg/keyczar/Verifier;)V

    .line 49
    return-void
.end method


# virtual methods
.method public timeoutSign(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/keyczar/TimeoutSigner;->timeoutSign([BJ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public timeoutSign(Ljava/nio/ByteBuffer;JLjava/nio/ByteBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lorg/keyczar/TimeoutSigner;->signer:Lorg/keyczar/Signer;

    const/4 v3, 0x0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/keyczar/Signer;->sign(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JLjava/nio/ByteBuffer;)V

    .line 134
    return-void
.end method

.method public timeoutSign([BJ)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/keyczar/TimeoutSigner;->signer:Lorg/keyczar/Signer;

    .line 112
    invoke-virtual {v0}, Lorg/keyczar/Signer;->digestSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 113
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, v0}, Lorg/keyczar/TimeoutSigner;->timeoutSign(Ljava/nio/ByteBuffer;JLjava/nio/ByteBuffer;)V

    .line 114
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 116
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 117
    return-object v1
.end method
