.class public Lorg/keyczar/UnversionedVerifier;
.super Lorg/keyczar/Keyczar;
.source "UnversionedVerifier.java"


# static fields
.field private static final VERIFY_CACHE:Lorg/keyczar/StreamCache;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lorg/keyczar/StreamCache;

    invoke-direct {v0}, Lorg/keyczar/StreamCache;-><init>()V

    sput-object v0, Lorg/keyczar/UnversionedVerifier;->VERIFY_CACHE:Lorg/keyczar/StreamCache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/keyczar/Keyczar;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/keyczar/Keyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 62
    return-void
.end method


# virtual methods
.method isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
    .locals 1

    .prologue
    .line 148
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

.method public verify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 140
    invoke-static {p2}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v1

    .line 139
    invoke-virtual {p0, v0, v1}, Lorg/keyczar/UnversionedVerifier;->verify([B[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/keyczar/UnversionedVerifier;->versionMap:Ljava/util/HashMap;

    .line 108
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyczarKey;

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 111
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 112
    sget-object v1, Lorg/keyczar/UnversionedVerifier;->VERIFY_CACHE:Lorg/keyczar/StreamCache;

    invoke-virtual {v1, v0}, Lorg/keyczar/StreamCache;->get(Lorg/keyczar/KeyczarKey;)Lorg/keyczar/interfaces/Stream;

    move-result-object v1

    check-cast v1, Lorg/keyczar/interfaces/VerifyingStream;

    .line 113
    if-nez v1, :cond_1

    .line 114
    invoke-virtual {v0}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v1

    check-cast v1, Lorg/keyczar/interfaces/VerifyingStream;

    .line 116
    :cond_1
    invoke-interface {v1}, Lorg/keyczar/interfaces/VerifyingStream;->initVerify()V

    .line 117
    invoke-interface {v1, v3}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 118
    invoke-interface {v1, v4}, Lorg/keyczar/interfaces/VerifyingStream;->verify(Ljava/nio/ByteBuffer;)Z

    move-result v3

    .line 119
    sget-object v4, Lorg/keyczar/UnversionedVerifier;->VERIFY_CACHE:Lorg/keyczar/StreamCache;

    invoke-virtual {v4, v0, v1}, Lorg/keyczar/StreamCache;->put(Lorg/keyczar/KeyczarKey;Lorg/keyczar/interfaces/Stream;)V

    .line 120
    if-eqz v3, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

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
    .line 89
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/UnversionedVerifier;->verify(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method
