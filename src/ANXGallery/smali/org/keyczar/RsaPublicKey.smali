.class public Lorg/keyczar/RsaPublicKey;
.super Lorg/keyczar/KeyczarPublicKey;
.source "RsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/keyczar/RsaPublicKey$RsaStream;
    }
.end annotation


# static fields
.field private static final KEY_GEN_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final SIG_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"


# instance fields
.field private final hash:[B

.field private jcePublicKey:Ljava/security/interfaces/RSAPublicKey;

.field final modulus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field

.field final padding:Lorg/keyczar/enums/RsaPadding;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field

.field final publicExponent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarPublicKey;-><init>(I)V

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/keyczar/RsaPublicKey;->hash:[B

    .line 103
    iput-object v1, p0, Lorg/keyczar/RsaPublicKey;->publicExponent:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/RsaPublicKey;->modulus:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lorg/keyczar/RsaPublicKey;->padding:Lorg/keyczar/enums/RsaPadding;

    .line 105
    return-void
.end method

.method private constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/keyczar/enums/RsaPadding;)V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarPublicKey;-><init>(I)V

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/keyczar/RsaPublicKey;->hash:[B

    .line 109
    invoke-static {p1}, Lorg/keyczar/util/Util;->encodeBigInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/RsaPublicKey;->modulus:Ljava/lang/String;

    .line 110
    invoke-static {p2}, Lorg/keyczar/util/Util;->encodeBigInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/RsaPublicKey;->publicExponent:Ljava/lang/String;

    .line 111
    sget-object v0, Lorg/keyczar/enums/RsaPadding;->PKCS:Lorg/keyczar/enums/RsaPadding;

    if-ne p3, v0, :cond_0

    sget-object v0, Lorg/keyczar/enums/RsaPadding;->PKCS:Lorg/keyczar/enums/RsaPadding;

    :goto_0
    iput-object v0, p0, Lorg/keyczar/RsaPublicKey;->padding:Lorg/keyczar/enums/RsaPadding;

    .line 112
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lorg/keyczar/enums/RsaPadding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/keyczar/RsaPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/keyczar/enums/RsaPadding;)V

    .line 90
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/keyczar/RsaPublicKey;->initializeJceKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 91
    invoke-direct {p0}, Lorg/keyczar/RsaPublicKey;->initializeHash()V

    .line 92
    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/RSAPublicKey;Lorg/keyczar/enums/RsaPadding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/keyczar/RsaPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/keyczar/enums/RsaPadding;)V

    .line 96
    iput-object p1, p0, Lorg/keyczar/RsaPublicKey;->jcePublicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 97
    invoke-direct {p0}, Lorg/keyczar/RsaPublicKey;->initializeHash()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lorg/keyczar/RsaPublicKey;)Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey;->jcePublicKey:Ljava/security/interfaces/RSAPublicKey;

    return-object v0
.end method

.method private initializeHash()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-virtual {p0}, Lorg/keyczar/RsaPublicKey;->getPadding()Lorg/keyczar/enums/RsaPadding;

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/RsaPublicKey;->jcePublicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0, v1}, Lorg/keyczar/enums/RsaPadding;->computeFullHash(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/RsaPublicKey;->hash:[B

    iget-object v2, p0, Lorg/keyczar/RsaPublicKey;->hash:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    return-void
.end method

.method private initializeJceKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, p1, p2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 129
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    iput-object v0, p0, Lorg/keyczar/RsaPublicKey;->jcePublicKey:Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static read(Ljava/lang/String;)Lorg/keyczar/RsaPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson_nex/Gson;

    move-result-object v0

    const-class v1, Lorg/keyczar/RsaPublicKey;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/RsaPublicKey;

    .line 67
    invoke-virtual {v0}, Lorg/keyczar/RsaPublicKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v1

    sget-object v2, Lorg/keyczar/DefaultKeyType;->RSA_PUB:Lorg/keyczar/DefaultKeyType;

    if-eq v1, v2, :cond_0

    .line 68
    new-instance v1, Lorg/keyczar/exceptions/UnsupportedTypeException;

    invoke-virtual {v0}, Lorg/keyczar/RsaPublicKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/UnsupportedTypeException;-><init>(Lorg/keyczar/interfaces/KeyType;)V

    throw v1

    .line 70
    :cond_0
    invoke-virtual {v0}, Lorg/keyczar/RsaPublicKey;->initFromJson()Lorg/keyczar/RsaPublicKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic getJceKey()Ljava/security/Key;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/keyczar/RsaPublicKey;->getJceKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method protected getJceKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey;->jcePublicKey:Ljava/security/interfaces/RSAPublicKey;

    return-object v0
.end method

.method public getPadding()Lorg/keyczar/enums/RsaPadding;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey;->padding:Lorg/keyczar/enums/RsaPadding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/keyczar/RsaPublicKey;->padding:Lorg/keyczar/enums/RsaPadding;

    sget-object v1, Lorg/keyczar/enums/RsaPadding;->OAEP:Lorg/keyczar/enums/RsaPadding;

    if-ne v0, v1, :cond_1

    .line 154
    :cond_0
    sget-object v0, Lorg/keyczar/enums/RsaPadding;->OAEP:Lorg/keyczar/enums/RsaPadding;

    .line 156
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/keyczar/enums/RsaPadding;->PKCS:Lorg/keyczar/enums/RsaPadding;

    goto :goto_0
.end method

.method protected getStream()Lorg/keyczar/interfaces/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lorg/keyczar/RsaPublicKey$RsaStream;

    invoke-direct {v0, p0}, Lorg/keyczar/RsaPublicKey$RsaStream;-><init>(Lorg/keyczar/RsaPublicKey;)V

    return-object v0
.end method

.method public getType()Lorg/keyczar/interfaces/KeyType;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lorg/keyczar/DefaultKeyType;->RSA_PUB:Lorg/keyczar/DefaultKeyType;

    return-object v0
.end method

.method public hash()[B
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey;->hash:[B

    return-object v0
.end method

.method initFromJson()Lorg/keyczar/RsaPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey;->modulus:Ljava/lang/String;

    invoke-static {v0}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/RsaPublicKey;->publicExponent:Ljava/lang/String;

    invoke-static {v1}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/keyczar/RsaPublicKey;->initializeJceKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 121
    invoke-direct {p0}, Lorg/keyczar/RsaPublicKey;->initializeHash()V

    .line 122
    return-object p0
.end method

.method protected isSecret()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method
