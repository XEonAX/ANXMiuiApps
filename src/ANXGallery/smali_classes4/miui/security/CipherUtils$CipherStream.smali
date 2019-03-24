.class Lmiui/security/CipherUtils$CipherStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/CipherUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CipherStream"
.end annotation


# instance fields
.field final Fe:Ljavax/crypto/Cipher;

.field final Ff:Ljava/io/InputStream;

.field Fg:Z

.field Fh:[B

.field Fi:[B

.field Fj:I


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 244
    iput-object p1, p0, Lmiui/security/CipherUtils$CipherStream;->Fe:Ljavax/crypto/Cipher;

    .line 245
    iput-object p2, p0, Lmiui/security/CipherUtils$CipherStream;->Ff:Ljava/io/InputStream;

    .line 246
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lmiui/security/CipherUtils$CipherStream;->Fh:[B

    .line 247
    invoke-direct {p0}, Lmiui/security/CipherUtils$CipherStream;->update()V

    .line 248
    return-void
.end method

.method private update()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->Ff:Ljava/io/InputStream;

    iget-object v1, p0, Lmiui/security/CipherUtils$CipherStream;->Fh:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 286
    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 287
    iget-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->Fe:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lmiui/security/CipherUtils$CipherStream;->Fh:[B

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    iput-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->Fi:[B

    .line 288
    iput v1, p0, Lmiui/security/CipherUtils$CipherStream;->Fj:I

    goto :goto_0

    .line 290
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/security/CipherUtils$CipherStream;->Fg:Z

    .line 292
    :try_start_0
    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->Fe:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    iput-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->Fi:[B

    .line 293
    iput v1, p0, Lmiui/security/CipherUtils$CipherStream;->Fj:I
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    nop

    .line 300
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "BadPaddingException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 294
    :catch_1
    move-exception v0

    .line 295
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IllegalBlockSizeException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->Fi:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->Fi:[B

    array-length v0, v0

    iget v1, p0, Lmiui/security/CipherUtils$CipherStream;->Fj:I

    if-le v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->Fi:[B

    array-length v0, v0

    iget v1, p0, Lmiui/security/CipherUtils$CipherStream;->Fj:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/security/CipherUtils$CipherStream;->Ff:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->Fi:[B

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 267
    return v1

    .line 270
    :cond_0
    iget v0, p0, Lmiui/security/CipherUtils$CipherStream;->Fj:I

    iget-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->Fi:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 271
    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->Fi:[B

    iget v1, p0, Lmiui/security/CipherUtils$CipherStream;->Fj:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmiui/security/CipherUtils$CipherStream;->Fj:I

    aget-byte v0, v0, v1

    return v0

    .line 274
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->Fi:[B

    .line 276
    iget-boolean v0, p0, Lmiui/security/CipherUtils$CipherStream;->Fg:Z

    if-eqz v0, :cond_2

    .line 277
    return v1

    .line 280
    :cond_2
    invoke-direct {p0}, Lmiui/security/CipherUtils$CipherStream;->update()V

    .line 281
    invoke-virtual {p0}, Lmiui/security/CipherUtils$CipherStream;->read()I

    move-result v0

    return v0
.end method
