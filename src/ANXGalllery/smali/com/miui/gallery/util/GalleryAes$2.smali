.class final Lcom/miui/gallery/util/GalleryAes$2;
.super Ljava/lang/Object;
.source "GalleryAes.java"

# interfaces
.implements Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/GalleryAes;->decryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cipher:Ljavax/crypto/Cipher;

.field final synthetic val$inputStream:Ljava/io/FileInputStream;


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher;Ljava/io/FileInputStream;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/miui/gallery/util/GalleryAes$2;->val$cipher:Ljavax/crypto/Cipher;

    iput-object p2, p0, Lcom/miui/gallery/util/GalleryAes$2;->val$inputStream:Ljava/io/FileInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/io/FileOutputStream;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .prologue
    .line 213
    const/4 v2, 0x0

    .line 215
    .local v2, "cout":Ljavax/crypto/CipherOutputStream;
    :try_start_0
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    iget-object v5, p0, Lcom/miui/gallery/util/GalleryAes$2;->val$cipher:Ljavax/crypto/Cipher;

    invoke-direct {v3, p1, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v2    # "cout":Ljavax/crypto/CipherOutputStream;
    .local v3, "cout":Ljavax/crypto/CipherOutputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 217
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 218
    .local v1, "count":I
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/util/GalleryAes$2;->val$inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 219
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 222
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 223
    .end local v3    # "cout":Ljavax/crypto/CipherOutputStream;
    .restart local v2    # "cout":Ljavax/crypto/CipherOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 226
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v5

    .line 221
    .end local v2    # "cout":Ljavax/crypto/CipherOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "cout":Ljavax/crypto/CipherOutputStream;
    :cond_0
    const/4 v5, 0x1

    :try_start_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 226
    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3    # "cout":Ljavax/crypto/CipherOutputStream;
    .restart local v2    # "cout":Ljavax/crypto/CipherOutputStream;
    goto :goto_2

    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v2    # "cout":Ljavax/crypto/CipherOutputStream;
    .restart local v3    # "cout":Ljavax/crypto/CipherOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "cout":Ljavax/crypto/CipherOutputStream;
    .restart local v2    # "cout":Ljavax/crypto/CipherOutputStream;
    goto :goto_3

    .line 222
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public bridge synthetic handle(Ljava/io/FileOutputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/GalleryAes$2;->handle(Ljava/io/FileOutputStream;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
