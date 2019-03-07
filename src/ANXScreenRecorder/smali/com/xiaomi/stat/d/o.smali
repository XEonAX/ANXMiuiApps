.class public Lcom/xiaomi/stat/d/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "RsaUtils"

.field private static final b:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final c:Ljava/lang/String; = "BC"

.field private static final d:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/security/interfaces/RSAPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    .line 38
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 41
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 43
    return-object v0
.end method

.method public static a([B[B)[B
    .locals 4

    .prologue
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/stat/d/o;->a([B)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    .line 26
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 27
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 28
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    const-string v2, "RsaUtils"

    const-string v3, "RsaUtils encrypt exception:"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
