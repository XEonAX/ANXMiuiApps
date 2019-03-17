.class public Lorg/keyczar/HmacKey;
.super Lorg/keyczar/KeyczarKey;
.source "HmacKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/keyczar/HmacKey$HmacStream;
    }
.end annotation


# static fields
.field private static final MAC_ALGORITHM:Ljava/lang/String; = "HMACSHA1"


# instance fields
.field private final hash:[B

.field private hmacKey:Ljavax/crypto/SecretKey;

.field private final hmacKeyString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/keyczar/HmacKey;->hash:[B

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/keyczar/HmacKey;->hmacKeyString:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 52
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/keyczar/HmacKey;->hash:[B

    .line 53
    invoke-static {p1}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/HmacKey;->hmacKeyString:Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lorg/keyczar/HmacKey;->initJceKey([B)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/keyczar/HmacKey;)Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/keyczar/HmacKey;->hmacKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method static generate()Lorg/keyczar/HmacKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lorg/keyczar/DefaultKeyType;->HMAC_SHA1:Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v0}, Lorg/keyczar/DefaultKeyType;->defaultSize()I

    move-result v0

    invoke-static {v0}, Lorg/keyczar/HmacKey;->generate(I)Lorg/keyczar/HmacKey;

    move-result-object v0

    return-object v0
.end method

.method static generate(I)Lorg/keyczar/HmacKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lorg/keyczar/HmacKey;

    div-int/lit8 v1, p0, 0x8

    invoke-static {v1}, Lorg/keyczar/util/Util;->rand(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/HmacKey;-><init>([B)V

    return-object v0
.end method

.method private initJceKey([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 76
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HMACSHA1"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lorg/keyczar/HmacKey;->hmacKey:Ljavax/crypto/SecretKey;

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [[B

    aput-object p1, v0, v3

    invoke-static {v0}, Lorg/keyczar/util/Util;->hash([[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/HmacKey;->hash:[B

    iget-object v2, p0, Lorg/keyczar/HmacKey;->hash:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    return-void
.end method

.method static read(Ljava/lang/String;)Lorg/keyczar/HmacKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson_nex/Gson;

    move-result-object v0

    const-class v1, Lorg/keyczar/HmacKey;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/HmacKey;

    .line 105
    invoke-virtual {v0}, Lorg/keyczar/HmacKey;->initFromJson()V

    .line 106
    return-object v0
.end method


# virtual methods
.method getEncoded()[B
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/keyczar/HmacKey;->hmacKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getJceKey()Ljava/security/Key;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/keyczar/HmacKey;->getJceKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method protected getJceKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/keyczar/HmacKey;->hmacKey:Ljavax/crypto/SecretKey;

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
    .line 90
    new-instance v0, Lorg/keyczar/HmacKey$HmacStream;

    invoke-direct {v0, p0}, Lorg/keyczar/HmacKey$HmacStream;-><init>(Lorg/keyczar/HmacKey;)V

    return-object v0
.end method

.method public getType()Lorg/keyczar/interfaces/KeyType;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lorg/keyczar/DefaultKeyType;->HMAC_SHA1:Lorg/keyczar/DefaultKeyType;

    return-object v0
.end method

.method protected hash()[B
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/keyczar/HmacKey;->hash:[B

    return-object v0
.end method

.method initFromJson()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/keyczar/HmacKey;->hmacKeyString:Ljava/lang/String;

    invoke-static {v0}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/keyczar/HmacKey;->initJceKey([B)V

    .line 73
    return-void
.end method
