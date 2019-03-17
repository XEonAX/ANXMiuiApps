.class final Lcom/miui/gallery/util/GalleryAes$1;
.super Ljava/lang/Object;
.source "GalleryAes.java"

# interfaces
.implements Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/GalleryAes;->encryptFile(Ljava/lang/String;Ljava/lang/String;[B)Z
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
.field final synthetic val$inputStream:Ljavax/crypto/CipherInputStream;


# direct methods
.method constructor <init>(Ljavax/crypto/CipherInputStream;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/gallery/util/GalleryAes$1;->val$inputStream:Ljavax/crypto/CipherInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/io/FileOutputStream;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v4, 0x0

    .line 148
    const/16 v3, 0x400

    :try_start_0
    new-array v0, v3, [B

    .line 149
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 150
    .local v1, "count":I
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/util/GalleryAes$1;->val$inputStream:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v3, v0}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 151
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 153
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1
.end method

.method public bridge synthetic handle(Ljava/io/FileOutputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/GalleryAes$1;->handle(Ljava/io/FileOutputStream;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
