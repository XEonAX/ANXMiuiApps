.class public abstract Lorg/keyczar/KeyczarKey;
.super Ljava/lang/Object;
.source "KeyczarKey.java"


# static fields
.field private static final IV_SIZE:I = 0x10

.field private static final PBE_CIPHER:Ljava/lang/String; = "PBEWithSHA1AndDESede"

.field private static final PBE_ITERATION_COUNT:I = 0x3e8

.field private static final PBE_SALT_SIZE:I = 0x8

.field private static final PEM_FOOTER_BEGIN:Ljava/lang/String; = "-----END "

.field private static final PEM_HEADER_BEGIN:Ljava/lang/String; = "-----BEGIN "

.field private static final PEM_LINE_ENDING:Ljava/lang/String; = "-----\n"


# instance fields
.field final size:I
    .annotation runtime Lcom/google/gson_nex/annotations/Expose;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lorg/keyczar/KeyczarKey;->size:I

    .line 67
    return-void
.end method

.method private convertDerToPem([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/keyczar/util/Base64Coder;->encodeMime([BZ)Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 252
    const-string v2, "-----BEGIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-direct {p0}, Lorg/keyczar/KeyczarKey;->getPemType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    const-string v2, "-----\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    const/16 v2, 0x40

    invoke-static {v0, v2}, Lorg/keyczar/util/Util;->split(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 259
    :cond_0
    const-string v0, "-----END "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    invoke-direct {p0}, Lorg/keyczar/KeyczarKey;->getPemType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    const-string v0, "-----\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encryptPrivateKey(Ljava/security/Key;Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 225
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 226
    const-string v1, "PBEWithSHA1AndDESede"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 227
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 229
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 230
    invoke-static {v1}, Lorg/keyczar/util/Util;->rand([B)V

    .line 232
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 233
    invoke-static {v2}, Lorg/keyczar/util/Util;->rand([B)V

    .line 235
    const-string v2, "PBEWithSHA1AndDESede"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 236
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v5, 0x3e8

    invoke-direct {v4, v1, v5}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v2, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 238
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 239
    new-instance v1, Ljavax/crypto/EncryptedPrivateKeyInfo;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>(Ljava/security/AlgorithmParameters;[B)V

    .line 240
    invoke-virtual {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    const-string v2, "KeyczarTool.FailedToEncryptPrivateKey"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 243
    :catch_1
    move-exception v0

    .line 245
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    const-string v2, "KeyczarTool.FailedToEncryptPrivateKey"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static genKey(Lorg/keyczar/interfaces/KeyType;)Lorg/keyczar/KeyczarKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-interface {p0}, Lorg/keyczar/interfaces/KeyType;->defaultSize()I

    move-result v0

    invoke-static {p0, v0}, Lorg/keyczar/KeyczarKey;->genKey(Lorg/keyczar/interfaces/KeyType;I)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    return-object v0
.end method

.method static genKey(Lorg/keyczar/interfaces/KeyType;I)Lorg/keyczar/KeyczarKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    sget-object v1, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    if-ne p0, v1, :cond_0

    .line 155
    sget-object v0, Lorg/keyczar/enums/RsaPadding;->OAEP:Lorg/keyczar/enums/RsaPadding;

    .line 157
    :cond_0
    invoke-static {p0, v0, p1}, Lorg/keyczar/KeyczarKey;->genKey(Lorg/keyczar/interfaces/KeyType;Lorg/keyczar/enums/RsaPadding;I)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    return-object v0
.end method

.method static genKey(Lorg/keyczar/interfaces/KeyType;Lorg/keyczar/enums/RsaPadding;I)Lorg/keyczar/KeyczarKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-interface {p0, p2}, Lorg/keyczar/interfaces/KeyType;->isAcceptableSize(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-interface {p0}, Lorg/keyczar/interfaces/KeyType;->defaultSize()I

    move-result p2

    .line 179
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    if-eq p0, v0, :cond_1

    .line 180
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "InvalidPadding"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/keyczar/enums/RsaPadding;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    sget-object v0, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    if-ne p0, v0, :cond_2

    sget-object v0, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    .line 184
    invoke-virtual {v0, p1}, Lorg/keyczar/DefaultKeyType;->getRsaBuilder(Lorg/keyczar/enums/RsaPadding;)Lorg/keyczar/interfaces/KeyType$Builder;

    move-result-object v0

    .line 185
    :goto_0
    invoke-interface {v0, p2}, Lorg/keyczar/interfaces/KeyType$Builder;->generate(I)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    return-object v0

    .line 184
    :cond_2
    invoke-interface {p0}, Lorg/keyczar/interfaces/KeyType;->getBuilder()Lorg/keyczar/interfaces/KeyType$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method private getPemType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "ENCRYPTED PRIVATE KEY"

    .line 276
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->getJceKey()Ljava/security/Key;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PUBLIC KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static readKey(Lorg/keyczar/interfaces/KeyType;Ljava/lang/String;)Lorg/keyczar/KeyczarKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-interface {p0}, Lorg/keyczar/interfaces/KeyType;->getBuilder()Lorg/keyczar/interfaces/KeyType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/keyczar/interfaces/KeyType$Builder;->read(Ljava/lang/String;)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    return-object v0
.end method

.method public static registerType(Lorg/keyczar/interfaces/KeyType;)V
    .locals 0

    .prologue
    .line 132
    invoke-static {p0}, Lorg/keyczar/interfaces/KeyType$KeyTypeDeserializer;->registerType(Lorg/keyczar/interfaces/KeyType;)V

    .line 133
    return-void
.end method


# virtual methods
.method copyHeader(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 72
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 77
    :try_start_0
    check-cast p1, Lorg/keyczar/KeyczarKey;

    .line 78
    invoke-virtual {p1}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 80
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getJceKey()Ljava/security/Key;
.end method

.method public getPemString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 212
    :cond_0
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.PassphraseRequired"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->getJceKey()Ljava/security/Key;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/keyczar/KeyczarKey;->encryptPrivateKey(Ljava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;->convertDerToPem([B)Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 216
    :cond_2
    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.PassphraseNotAllowed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_3
    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->getJceKey()Ljava/security/Key;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;->convertDerToPem([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getStream()Lorg/keyczar/interfaces/Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation
.end method

.method public abstract getType()Lorg/keyczar/interfaces/KeyType;
.end method

.method protected abstract hash()[B
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Util;->toInt([B)I

    move-result v0

    return v0
.end method

.method protected isSecret()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/keyczar/KeyczarKey;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson_nex/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson_nex/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
