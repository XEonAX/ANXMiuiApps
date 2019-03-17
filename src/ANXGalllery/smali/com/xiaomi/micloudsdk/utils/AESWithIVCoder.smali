.class public Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;
.super Ljava/lang/Object;
.source "AESWithIVCoder.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/utils/CryptCoder;


# instance fields
.field private final IV_LENGTH:I

.field protected aesKey:Ljava/lang/String;

.field private coder:Lcom/xiaomi/micloudsdk/utils/AESCoder;

.field private ivRaw:[B

.field private threadId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aesKey"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x10

    iput v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->IV_LENGTH:I

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->threadId:J

    .line 26
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->aesKey:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;-><init>(Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->coder:Lcom/xiaomi/micloudsdk/utils/AESCoder;

    .line 35
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->initThreadInfo()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;)[B
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    return-object v0
.end method

.method private initThreadInfo()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->threadId:J

    .line 40
    return-void
.end method


# virtual methods
.method protected checkThreadIdThrow()V
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->threadId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "this method can not call concurrently"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    return-void
.end method

.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CipherException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->checkThreadIdThrow()V

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getInstance(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/AESStringDef;

    move-result-object v0

    .line 48
    .local v0, "aesDef":Lcom/xiaomi/micloudsdk/utils/AESStringDef;
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Lcom/xiaomi/micloudsdk/exception/CipherException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aes encrypt format version is wrong"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "aesDef":Lcom/xiaomi/micloudsdk/utils/AESStringDef;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;
    new-instance v2, Lcom/xiaomi/micloudsdk/exception/CipherException;

    invoke-direct {v2, v1}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 52
    .end local v1    # "e":Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;
    .restart local v0    # "aesDef":Lcom/xiaomi/micloudsdk/utils/AESStringDef;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getIV()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    .line 53
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->coder:Lcom/xiaomi/micloudsdk/utils/AESCoder;

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/exception/CipherException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->checkThreadIdThrow()V

    .line 63
    const/16 v2, 0x10

    :try_start_0
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    .line 64
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 65
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->coder:Lcom/xiaomi/micloudsdk/utils/AESCoder;

    invoke-virtual {v2, p1}, Lcom/xiaomi/micloudsdk/utils/AESCoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "encryptData":Ljava/lang/String;
    const-string v2, "1"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder;->ivRaw:[B

    const/16 v4, 0xb

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/AESStringDef;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 68
    .end local v1    # "encryptData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;
    new-instance v2, Lcom/xiaomi/micloudsdk/exception/CipherException;

    invoke-direct {v2, v0}, Lcom/xiaomi/micloudsdk/exception/CipherException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
