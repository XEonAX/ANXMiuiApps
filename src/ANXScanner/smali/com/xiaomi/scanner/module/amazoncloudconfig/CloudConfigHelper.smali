.class public Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;
.super Ljava/lang/Object;
.source "CloudConfigHelper.java"


# static fields
.field public static final AES:Ljava/lang/String; = "AES"

.field public static final CIPHER:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final KEY:Ljava/lang/String; = "key"

.field private static final SIGN_KEY:Ljava/lang/String; = "sign"

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "CloudConfigHelper"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encryptionBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .param p0, "secretKey"    # Ljava/lang/String;
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 65
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 67
    .local v5, "keyRaw":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 69
    .local v3, "ivRaw":[B
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v5, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 70
    .local v6, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 71
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 72
    .local v4, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encode([BI)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v2

    .line 91
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "ivRaw":[B
    .end local v4    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "keyRaw":[B
    .end local v6    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v2

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v7, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "encryptionBody error found "

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 78
    :catch_1
    move-exception v1

    .line 79
    .local v1, "e":Ljava/security/InvalidKeyException;
    sget-object v7, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "encryptionBody error found "

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 81
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    sget-object v7, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "encryptionBody error found "

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 82
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v1

    .line 83
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    sget-object v7, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "encryptionBody error found "

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v1

    .line 85
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    sget-object v7, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "encryptionBody error found "

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v1

    .line 87
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    sget-object v7, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "encryptionBody error found "

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_6
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "encryptionBody error found "

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static wrapperUriWithParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "signSalt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "wrapperUriWithParameter"

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 38
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 39
    :cond_0
    sget-object v7, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigHelper;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v8, "wrapperUriWithParameter - url == null OR signSalt == null"

    invoke-static {v7, v8}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    const/4 v7, 0x0

    .line 60
    :goto_0
    return-object v7

    .line 42
    :cond_1
    new-instance v2, Ljava/util/TreeSet;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 43
    .local v2, "keys":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 46
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "&"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 49
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    const-string v7, "key"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/scanner/module/study/utils/DigestUtils;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "secretKey":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 53
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 54
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 55
    .local v3, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 57
    .end local v3    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string v7, "sign"

    invoke-virtual {v0, v7, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 60
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method
