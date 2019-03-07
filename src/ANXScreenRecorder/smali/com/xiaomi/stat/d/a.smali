.class public Lcom/xiaomi/stat/d/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "AES"

.field private static final b:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final c:Ljava/lang/String; = "AES"

.field private static final d:Ljava/lang/String; = "BC"

.field private static e:Ljava/lang/String;

.field private static f:Ljavax/crypto/KeyGenerator;

.field private static g:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-string v0, "cfbsdfgsdfxccvd1"

    sput-object v0, Lcom/xiaomi/stat/d/a;->e:Ljava/lang/String;

    .line 26
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/a;->f:Ljavax/crypto/KeyGenerator;

    .line 27
    sget-object v0, Lcom/xiaomi/stat/d/a;->f:Ljavax/crypto/KeyGenerator;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 28
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/stat/d/a;->g:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string v1, "AES"

    const-string v2, "AesUtils e"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 70
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/xiaomi/stat/d/a;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 71
    sget-object v2, Lcom/xiaomi/stat/d/a;->g:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 72
    sget-object v0, Lcom/xiaomi/stat/d/a;->g:Ljavax/crypto/Cipher;

    invoke-static {p0}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 73
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v1, "AES"

    const-string v2, "decrypt exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()[B
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/xiaomi/stat/d/a;->f:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/16 v5, 0x10

    .line 81
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 84
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 85
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_2

    .line 86
    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 87
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 89
    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 91
    goto :goto_0
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 5

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 58
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/xiaomi/stat/d/a;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 59
    sget-object v3, Lcom/xiaomi/stat/d/a;->g:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 60
    sget-object v1, Lcom/xiaomi/stat/d/a;->g:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    const-string v2, "AES"

    const-string v3, "encrypt exception:"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a([B[B)[B
    .locals 5

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 42
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/xiaomi/stat/d/a;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 43
    sget-object v3, Lcom/xiaomi/stat/d/a;->g:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 44
    sget-object v1, Lcom/xiaomi/stat/d/a;->g:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    const-string v2, "AES"

    const-string v3, "encrypt exception:"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
