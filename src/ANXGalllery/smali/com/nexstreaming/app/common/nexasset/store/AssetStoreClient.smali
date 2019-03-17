.class public Lcom/nexstreaming/app/common/nexasset/store/AssetStoreClient;
.super Ljava/lang/Object;
.source "AssetStoreClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetStoreClient"

.field private static cipher:Lcom/nexstreaming/app/common/localprotocol/a; = null

.field private static m_configLock:Ljava/lang/Object; = null

.field public static final none:Ljava/lang/String; = "nonedata"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetStoreClient;->m_configLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDataSync2([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 55
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetStoreClient;->cipher:Lcom/nexstreaming/app/common/localprotocol/a;

    if-nez v0, :cond_1

    move v2, v3

    .line 119
    :cond_0
    :goto_0
    return v2

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 61
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 62
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    .line 63
    sget-object v4, Lcom/nexstreaming/app/common/nexasset/store/AssetStoreClient;->cipher:Lcom/nexstreaming/app/common/localprotocol/a;

    invoke-virtual {v4}, Lcom/nexstreaming/app/common/localprotocol/a;->b()[B

    move-result-object v4

    invoke-static {v4, v1}, Lcom/nexstreaming/app/common/nexasset/store/AssetStoreSock;->Start([BI)Lcom/nexstreaming/app/common/localprotocol/c$a;

    move-result-object v4

    .line 64
    if-nez v4, :cond_2

    .line 65
    const-string v0, "AssetStoreClient"

    const-string/jumbo v1, "start is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    iget v5, v4, Lcom/nexstreaming/app/common/localprotocol/c$a;->f:I

    sget-object v6, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->OK:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    invoke-virtual {v6}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->getValue()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 70
    const-string v0, "AssetStoreClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start is error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/nexstreaming/app/common/localprotocol/c$a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 71
    goto :goto_0

    .line 74
    :cond_3
    iget-object v5, v4, Lcom/nexstreaming/app/common/localprotocol/c$a;->a:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 76
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    xor-int/2addr v6, v1

    .line 77
    const-string v1, "AssetStoreClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newSSID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, v4, Lcom/nexstreaming/app/common/localprotocol/c$a;->a:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x4

    new-array v1, v1, [B

    .line 80
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 81
    const-string v4, "AssetStoreClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encCommkey="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v7, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_0
    sget-object v4, Lcom/nexstreaming/app/common/nexasset/store/AssetStoreClient;->cipher:Lcom/nexstreaming/app/common/localprotocol/a;

    invoke-virtual {v4, v1}, Lcom/nexstreaming/app/common/localprotocol/a;->b([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    :goto_1
    move v1, v2

    .line 98
    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/nexstreaming/app/common/nexasset/store/AssetStoreSock;->requestSECUseCommKey(ILjava/lang/String;)Lcom/nexstreaming/app/common/localprotocol/c$a;

    move-result-object v4

    .line 102
    if-nez v4, :cond_4

    .line 103
    const-string v4, "nonedata"

    aput-object v4, p1, v1

    .line 98
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 84
    :catch_0
    move-exception v1

    .line 85
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 86
    :catch_1
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/security/NoSuchProviderException;->printStackTrace()V

    goto :goto_1

    .line 88
    :catch_2
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 90
    :catch_3
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 92
    :catch_4
    move-exception v1

    .line 93
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 94
    :catch_5
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 107
    :cond_4
    iget v5, v4, Lcom/nexstreaming/app/common/localprotocol/c$a;->f:I

    sget-object v7, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->OK:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    invoke-virtual {v7}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->getValue()I

    move-result v7

    if-eq v5, v7, :cond_5

    .line 108
    const-string v0, "AssetStoreClient"

    const-string v1, "enckey is fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 109
    goto/16 :goto_0

    .line 113
    :cond_5
    :try_start_1
    iget-object v4, v4, Lcom/nexstreaming/app/common/localprotocol/c$a;->a:[B

    invoke-static {v4, v0}, Lcom/nexstreaming/app/common/localprotocol/a;->a([B[B)[B

    move-result-object v4

    .line 114
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    aput-object v5, p1, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_3

    .line 115
    :catch_6
    move-exception v4

    .line 116
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static makeConfig()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "AssetStoreClient"

    const-string v1, "makeConfig in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v1, Lcom/nexstreaming/app/common/nexasset/store/AssetStoreClient;->m_configLock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetStoreClient;->cipher:Lcom/nexstreaming/app/common/localprotocol/a;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/nexstreaming/app/common/localprotocol/a;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/localprotocol/a;-><init>()V

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetStoreClient;->cipher:Lcom/nexstreaming/app/common/localprotocol/a;

    .line 48
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/store/AssetStoreClient;->cipher:Lcom/nexstreaming/app/common/localprotocol/a;

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/localprotocol/a;->a()V

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    const-string v0, "AssetStoreClient"

    const-string v1, "makeConfig out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
