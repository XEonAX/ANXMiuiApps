.class public Lorg/keyczar/DsaPublicKey;
.super Lorg/keyczar/KeyczarPublicKey;
.source "DsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;
    }
.end annotation


# static fields
.field private static final KEY_GEN_ALGORITHM:Ljava/lang/String; = "DSA"

.field private static final SIG_ALGORITHM:Ljava/lang/String; = "SHA1withDSA"


# instance fields
.field final g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field

.field private final hash:[B

.field private jcePublicKey:Ljava/security/interfaces/DSAPublicKey;

.field final p:Ljava/lang/String;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field

.field final q:Ljava/lang/String;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field

.field final y:Ljava/lang/String;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarPublicKey;-><init>(I)V

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/keyczar/DsaPublicKey;->hash:[B

    .line 80
    iput-object v1, p0, Lorg/keyczar/DsaPublicKey;->jcePublicKey:Ljava/security/interfaces/DSAPublicKey;

    .line 81
    iput-object v1, p0, Lorg/keyczar/DsaPublicKey;->g:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/DsaPublicKey;->q:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/DsaPublicKey;->p:Ljava/lang/String;

    iput-object v1, p0, Lorg/keyczar/DsaPublicKey;->y:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/math/BigInteger;Ljava/security/interfaces/DSAParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarPublicKey;-><init>(I)V

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/keyczar/DsaPublicKey;->hash:[B

    .line 86
    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    .line 87
    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    .line 88
    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v2

    .line 89
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/keyczar/DsaPublicKey;->y:Ljava/lang/String;

    .line 90
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/keyczar/DsaPublicKey;->p:Ljava/lang/String;

    .line 91
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/keyczar/DsaPublicKey;->q:Ljava/lang/String;

    .line 92
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/keyczar/DsaPublicKey;->g:Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/keyczar/DsaPublicKey;->initializeJceKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 94
    invoke-direct {p0}, Lorg/keyczar/DsaPublicKey;->initializeHash()V

    .line 95
    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/DSAPrivateKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p1}, Lorg/keyczar/DsaPublicKey;->computeY(Ljava/security/interfaces/DSAPrivateKey;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/keyczar/DsaPublicKey;-><init>(Ljava/math/BigInteger;Ljava/security/interfaces/DSAParams;)V

    .line 75
    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/DSAPublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/keyczar/DsaPublicKey;-><init>(Ljava/math/BigInteger;Ljava/security/interfaces/DSAParams;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/keyczar/DsaPublicKey;)Ljava/security/interfaces/DSAPublicKey;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/keyczar/DsaPublicKey;->jcePublicKey:Ljava/security/interfaces/DSAPublicKey;

    return-object v0
.end method

.method private static computeY(Ljava/security/interfaces/DSAPrivateKey;)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 98
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    .line 99
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 100
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    .line 101
    invoke-virtual {v1, v2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private initializeHash()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 144
    iget-object v0, p0, Lorg/keyczar/DsaPublicKey;->jcePublicKey:Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 145
    const/4 v1, 0x4

    new-array v1, v1, [[B

    .line 146
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/keyczar/util/Util;->stripLeadingZeros([B)[B

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    .line 147
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lorg/keyczar/util/Util;->stripLeadingZeros([B)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 148
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Util;->stripLeadingZeros([B)[B

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x3

    iget-object v2, p0, Lorg/keyczar/DsaPublicKey;->jcePublicKey:Ljava/security/interfaces/DSAPublicKey;

    .line 149
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/keyczar/util/Util;->stripLeadingZeros([B)[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 145
    invoke-static {v1}, Lorg/keyczar/util/Util;->prefixHash([[B)[B

    move-result-object v0

    .line 150
    iget-object v1, p0, Lorg/keyczar/DsaPublicKey;->hash:[B

    iget-object v2, p0, Lorg/keyczar/DsaPublicKey;->hash:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-void
.end method

.method private initializeJceKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    const-string v0, "DSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v1, p1, p2, p3, p4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    iput-object v0, p0, Lorg/keyczar/DsaPublicKey;->jcePublicKey:Ljava/security/interfaces/DSAPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static read(Ljava/lang/String;)Lorg/keyczar/DsaPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson_nex/Gson;

    move-result-object v0

    const-class v1, Lorg/keyczar/DsaPublicKey;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/DsaPublicKey;

    .line 59
    invoke-virtual {v0}, Lorg/keyczar/DsaPublicKey;->initFromJson()V

    .line 60
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic getJceKey()Ljava/security/Key;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/keyczar/DsaPublicKey;->getJceKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method protected getJceKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/keyczar/DsaPublicKey;->jcePublicKey:Ljava/security/interfaces/DSAPublicKey;

    return-object v0
.end method

.method protected getStream()Lorg/keyczar/interfaces/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;

    invoke-direct {v0, p0}, Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;-><init>(Lorg/keyczar/DsaPublicKey;)V

    return-object v0
.end method

.method public getType()Lorg/keyczar/interfaces/KeyType;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/keyczar/DefaultKeyType;->DSA_PUB:Lorg/keyczar/DefaultKeyType;

    return-object v0
.end method

.method public hash()[B
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/keyczar/DsaPublicKey;->hash:[B

    return-object v0
.end method

.method initFromJson()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/keyczar/DsaPublicKey;->y:Ljava/lang/String;

    invoke-static {v1}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 126
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/keyczar/DsaPublicKey;->p:Ljava/lang/String;

    invoke-static {v2}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 127
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/keyczar/DsaPublicKey;->q:Ljava/lang/String;

    invoke-static {v3}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 128
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/keyczar/DsaPublicKey;->g:Ljava/lang/String;

    invoke-static {v4}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 129
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/keyczar/DsaPublicKey;->initializeJceKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 130
    invoke-direct {p0}, Lorg/keyczar/DsaPublicKey;->initializeHash()V

    .line 131
    return-void
.end method

.method protected isSecret()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method
