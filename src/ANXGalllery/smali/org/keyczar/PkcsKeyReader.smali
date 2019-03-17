.class public Lorg/keyczar/PkcsKeyReader;
.super Ljava/lang/Object;
.source "PkcsKeyReader.java"

# interfaces
.implements Lorg/keyczar/interfaces/KeyczarReader;


# static fields
.field private static final PEM_FOOTER_PATTERN:Ljava/util/regex/Pattern;

.field private static final PEM_HEADER_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private key:Lorg/keyczar/KeyczarKey;

.field private meta:Lorg/keyczar/KeyMetadata;

.field private final passphrase:Ljava/lang/String;

.field private final pkcs8Stream:Ljava/io/InputStream;

.field private final purpose:Lorg/keyczar/enums/KeyPurpose;

.field private final rsaPadding:Lorg/keyczar/enums/RsaPadding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "-----BEGIN ([A-Z ]+)-----"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/keyczar/PkcsKeyReader;->PEM_HEADER_PATTERN:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, "-----END ([A-Z ]+)-----"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/keyczar/PkcsKeyReader;->PEM_FOOTER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/keyczar/enums/KeyPurpose;Ljava/io/InputStream;Lorg/keyczar/enums/RsaPadding;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Key purpose must not be null"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    if-nez p2, :cond_1

    .line 85
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "PKCS8 stream must not be null"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iput-object p1, p0, Lorg/keyczar/PkcsKeyReader;->purpose:Lorg/keyczar/enums/KeyPurpose;

    .line 88
    iput-object p2, p0, Lorg/keyczar/PkcsKeyReader;->pkcs8Stream:Ljava/io/InputStream;

    .line 89
    iput-object p3, p0, Lorg/keyczar/PkcsKeyReader;->rsaPadding:Lorg/keyczar/enums/RsaPadding;

    .line 90
    iput-object p4, p0, Lorg/keyczar/PkcsKeyReader;->passphrase:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private static computeDecryptionKey(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 201
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private static constructMetadata(Lorg/keyczar/KeyczarKey;Lorg/keyczar/enums/KeyPurpose;)Lorg/keyczar/KeyMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 124
    invoke-static {p0, p1}, Lorg/keyczar/PkcsKeyReader;->validatePurpose(Lorg/keyczar/KeyczarKey;Lorg/keyczar/enums/KeyPurpose;)V

    .line 125
    new-instance v0, Lorg/keyczar/KeyMetadata;

    const-string v1, "imported from PKCS8 file"

    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    .line 126
    new-instance v1, Lorg/keyczar/KeyVersion;

    sget-object v2, Lorg/keyczar/enums/KeyStatus;->PRIMARY:Lorg/keyczar/enums/KeyStatus;

    invoke-direct {v1, v3, v2, v3}, Lorg/keyczar/KeyVersion;-><init>(ILorg/keyczar/enums/KeyStatus;Z)V

    invoke-virtual {v0, v1}, Lorg/keyczar/KeyMetadata;->addVersion(Lorg/keyczar/KeyVersion;)Z

    .line 127
    return-object v0
.end method

.method private static convertPemToDer([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 208
    sget-object v2, Lorg/keyczar/PkcsKeyReader;->PEM_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    :goto_0
    return-object p0

    .line 213
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Lorg/keyczar/PkcsKeyReader;->decodeBase64(Ljava/io/BufferedReader;Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0
.end method

.method private static decodeBase64(Ljava/io/BufferedReader;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 222
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 223
    sget-object v2, Lorg/keyczar/PkcsKeyReader;->PEM_FOOTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    invoke-static {v1}, Lorg/keyczar/util/Base64Coder;->decodeMime(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 226
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 232
    :cond_1
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.InvalidPemFile"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decryptPbeEncryptedKey([BLjava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 177
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object p0

    .line 182
    :cond_1
    :try_start_0
    new-instance v1, Ljavax/crypto/EncryptedPrivateKeyInfo;

    invoke-direct {v1, p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>([B)V

    .line 184
    invoke-virtual {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 185
    invoke-virtual {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 187
    const/4 v4, 0x2

    invoke-static {p1, v2}, Lorg/keyczar/PkcsKeyReader;->computeDecryptionKey(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v3, v4, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 188
    invoke-virtual {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.UnknownKeyEncryption"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :catch_1
    move-exception v0

    .line 192
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.UnknownKeyEncryption"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :catch_2
    move-exception v0

    .line 194
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.UnknownKeyEncryption"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureKeyRead()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/keyczar/PkcsKeyReader;->key:Lorg/keyczar/KeyczarKey;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/keyczar/PkcsKeyReader;->pkcs8Stream:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/keyczar/PkcsKeyReader;->passphrase:Ljava/lang/String;

    iget-object v2, p0, Lorg/keyczar/PkcsKeyReader;->rsaPadding:Lorg/keyczar/enums/RsaPadding;

    invoke-static {v0, v1, v2}, Lorg/keyczar/PkcsKeyReader;->parseKeyStream(Ljava/io/InputStream;Ljava/lang/String;Lorg/keyczar/enums/RsaPadding;)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/PkcsKeyReader;->key:Lorg/keyczar/KeyczarKey;

    .line 115
    iget-object v0, p0, Lorg/keyczar/PkcsKeyReader;->key:Lorg/keyczar/KeyczarKey;

    iget-object v1, p0, Lorg/keyczar/PkcsKeyReader;->purpose:Lorg/keyczar/enums/KeyPurpose;

    invoke-static {v0, v1}, Lorg/keyczar/PkcsKeyReader;->constructMetadata(Lorg/keyczar/KeyczarKey;Lorg/keyczar/enums/KeyPurpose;)Lorg/keyczar/KeyMetadata;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/PkcsKeyReader;->meta:Lorg/keyczar/KeyMetadata;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    const-string v2, "Error Reading key"

    invoke-direct {v1, v2, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static extractPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseKeyStream(Ljava/io/InputStream;Ljava/lang/String;Lorg/keyczar/enums/RsaPadding;)Lorg/keyczar/KeyczarKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 138
    invoke-static {p0}, Lorg/keyczar/util/Util;->readStreamFully(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/PkcsKeyReader;->convertPemToDer([B)[B

    move-result-object v0

    .line 139
    invoke-static {v0, p1}, Lorg/keyczar/PkcsKeyReader;->decryptPbeEncryptedKey([BLjava/lang/String;)[B

    move-result-object v0

    .line 141
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 146
    :try_start_0
    new-instance v1, Lorg/keyczar/RsaPrivateKey;

    const-string v0, "RSA"

    .line 147
    invoke-static {v2, v0}, Lorg/keyczar/PkcsKeyReader;->extractPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-direct {v1, v0, p2}, Lorg/keyczar/RsaPrivateKey;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lorg/keyczar/enums/RsaPadding;)V
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 158
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 153
    :try_start_1
    new-instance v1, Lorg/keyczar/DsaPrivateKey;

    const-string v0, "DSA"

    .line 154
    invoke-static {v2, v0}, Lorg/keyczar/PkcsKeyReader;->extractPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    invoke-direct {v1, v0}, Lorg/keyczar/DsaPrivateKey;-><init>(Ljava/security/interfaces/DSAPrivateKey;)V

    .line 155
    if-eqz p2, :cond_0

    .line 156
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "InvalidPadding"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lorg/keyczar/enums/RsaPadding;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :catch_1
    move-exception v0

    .line 163
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.InvalidPkcs8Stream"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    .line 158
    goto :goto_0
.end method

.method private static validatePurpose(Lorg/keyczar/KeyczarKey;Lorg/keyczar/enums/KeyPurpose;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/keyczar/KeyczarKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    sget-object v1, Lorg/keyczar/DefaultKeyType;->DSA_PUB:Lorg/keyczar/DefaultKeyType;

    if-ne v0, v1, :cond_0

    .line 132
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Keyczartool.InvalidUseOfDsaKey"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/keyczar/PkcsKeyReader;->ensureKeyRead()V

    .line 102
    iget-object v0, p0, Lorg/keyczar/PkcsKeyReader;->key:Lorg/keyczar/KeyczarKey;

    invoke-virtual {v0}, Lorg/keyczar/KeyczarKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/keyczar/PkcsKeyReader;->ensureKeyRead()V

    .line 96
    iget-object v0, p0, Lorg/keyczar/PkcsKeyReader;->key:Lorg/keyczar/KeyczarKey;

    invoke-virtual {v0}, Lorg/keyczar/KeyczarKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/keyczar/PkcsKeyReader;->ensureKeyRead()V

    .line 108
    iget-object v0, p0, Lorg/keyczar/PkcsKeyReader;->meta:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
