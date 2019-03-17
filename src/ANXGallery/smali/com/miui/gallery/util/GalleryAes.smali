.class public Lcom/miui/gallery/util/GalleryAes;
.super Ljava/lang/Object;
.source "GalleryAes.java"


# static fields
.field private static final sAesIv:[B

.field private static final sRandomKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 40
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/util/GalleryAes;->sAesIv:[B

    .line 42
    new-array v0, v1, [B

    sput-object v0, Lcom/miui/gallery/util/GalleryAes;->sRandomKey:[B

    return-void

    .line 40
    :array_0
    .array-data 1
        0x11t
        0x13t
        0x21t
        0x23t
        0x31t
        0x33t
        0x41t
        0x43t
        0x51t
        0x53t
        0x61t
        0x66t
        0x67t
        0x68t
        0x71t
        0x72t
    .end array-data
.end method

.method public static decryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 10
    .param p0, "srcfile"    # Ljava/lang/String;
    .param p1, "desfile"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .prologue
    const/4 v7, 0x0

    .line 197
    if-eqz p2, :cond_0

    array-length v8, p2

    const/16 v9, 0x10

    if-eq v8, v9, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v7

    .line 201
    :cond_1
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v6, p2, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 203
    .local v6, "spec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v2, 0x0

    .line 205
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_0
    const-string v8, "AES/CTR/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 206
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Lcom/miui/gallery/util/GalleryAes;->sAesIv:[B

    invoke-direct {v4, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 207
    .local v4, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 208
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 209
    .local v3, "inputStream":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 210
    new-instance v8, Lcom/miui/gallery/util/GalleryAes$2;

    invoke-direct {v8, v0, v3}, Lcom/miui/gallery/util/GalleryAes$2;-><init>(Ljavax/crypto/Cipher;Ljava/io/FileInputStream;)V

    invoke-static {p1, v8}, Lcom/miui/gallery/util/DocumentProviderUtils;->safeWriteFile(Ljava/lang/String;Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 230
    .local v5, "result":Ljava/lang/Boolean;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    .line 242
    :cond_2
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 231
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 233
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 234
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    :try_start_2
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 235
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 236
    .local v1, "e":Ljava/security/InvalidKeyException;
    :try_start_3
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 237
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 238
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    :try_start_4
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 239
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 242
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    throw v7
.end method

.method public static encryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 13
    .param p0, "enfile"    # Ljava/lang/String;
    .param p1, "defile"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 130
    if-eqz p2, :cond_0

    array-length v11, p2

    const/16 v12, 0x10

    if-eq v11, v12, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v10

    .line 133
    :cond_1
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "AES"

    invoke-direct {v8, p2, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 134
    .local v8, "spec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v11, Lcom/miui/gallery/util/GalleryAes;->sAesIv:[B

    invoke-direct {v6, v11}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 136
    .local v6, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x0

    .line 137
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 139
    .local v0, "cin":Ljavax/crypto/CipherInputStream;
    :try_start_0
    const-string v11, "AES/CTR/NoPadding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 140
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v11, 0x1

    invoke-virtual {v1, v11, v8, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 141
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljavax/crypto/CipherInputStream;

    invoke-direct {v5, v4, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 143
    .local v5, "inputStream":Ljavax/crypto/CipherInputStream;
    move-object v0, v5

    .line 144
    new-instance v11, Lcom/miui/gallery/util/GalleryAes$1;

    invoke-direct {v11, v5}, Lcom/miui/gallery/util/GalleryAes$1;-><init>(Ljavax/crypto/CipherInputStream;)V

    invoke-static {p1, v11}, Lcom/miui/gallery/util/DocumentProviderUtils;->safeWriteFile(Ljava/lang/String;Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 160
    .local v7, "result":Ljava/lang/Boolean;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-eqz v11, :cond_2

    .line 180
    :goto_1
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 181
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    move v10, v9

    goto :goto_0

    :cond_2
    move v9, v10

    .line 160
    goto :goto_1

    .line 161
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "inputStream":Ljavax/crypto/CipherInputStream;
    .end local v7    # "result":Ljava/lang/Boolean;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    invoke-static {v3}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 181
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 164
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 165
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    invoke-static {v3}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 181
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 167
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .line 168
    .local v2, "e":Ljava/security/InvalidKeyException;
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    invoke-static {v3}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 181
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 170
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v2

    .line 171
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    invoke-static {v3}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 181
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 173
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v2

    .line 174
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 180
    invoke-static {v3}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 181
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 176
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    .line 177
    .local v2, "e":Ljava/io/IOException;
    :goto_7
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 180
    invoke-static {v3}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 181
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 180
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_8
    invoke-static {v3}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 181
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    throw v9

    .line 180
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_8

    .line 176
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_7

    .line 173
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    .line 170
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 167
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 164
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 161
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_b
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static generateEmptyKey()[B
    .locals 1

    .prologue
    .line 248
    const/16 v0, 0x10

    new-array v0, v0, [B

    return-object v0
.end method

.method public static declared-synchronized generateRandomKey()[B
    .locals 7

    .prologue
    .line 252
    const-class v3, Lcom/miui/gallery/util/GalleryAes;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/miui/gallery/util/GalleryAes;->generateEmptyKey()[B

    move-result-object v0

    .line 253
    .local v0, "key":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 254
    .local v1, "secureRandom":Ljava/security/SecureRandom;
    sget-object v2, Lcom/miui/gallery/util/GalleryAes;->sRandomKey:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 255
    sget-object v2, Lcom/miui/gallery/util/GalleryAes;->sRandomKey:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/miui/gallery/util/GalleryAes;->sRandomKey:[B

    array-length v6, v6

    invoke-static {v2, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit v3

    return-object v0

    .line 252
    .end local v1    # "secureRandom":Ljava/security/SecureRandom;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
