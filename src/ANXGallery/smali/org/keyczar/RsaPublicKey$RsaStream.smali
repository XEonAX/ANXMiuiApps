.class Lorg/keyczar/RsaPublicKey$RsaStream;
.super Ljava/lang/Object;
.source "RsaPublicKey.java"

# interfaces
.implements Lorg/keyczar/interfaces/EncryptingStream;
.implements Lorg/keyczar/interfaces/VerifyingStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/RsaPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RsaStream"
.end annotation


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private signature:Ljava/security/Signature;

.field final synthetic this$0:Lorg/keyczar/RsaPublicKey;


# direct methods
.method constructor <init>(Lorg/keyczar/RsaPublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 164
    iput-object p1, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->this$0:Lorg/keyczar/RsaPublicKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    :try_start_0
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->signature:Ljava/security/Signature;

    .line 167
    invoke-virtual {p1}, Lorg/keyczar/RsaPublicKey;->getPadding()Lorg/keyczar/enums/RsaPadding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/keyczar/enums/RsaPadding;->getCryptAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public digestSize()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->this$0:Lorg/keyczar/RsaPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/RsaPublicKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    invoke-interface {v0}, Lorg/keyczar/interfaces/KeyType;->getOutputSize()I

    move-result v0

    return v0
.end method

.method public doFinalEncrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    .line 183
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    .line 185
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 186
    iget-object v3, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3, p1, v2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 188
    if-ne v0, v1, :cond_0

    .line 189
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 203
    :goto_0
    return v1

    .line 191
    :cond_0
    add-int/lit8 v3, v1, 0x1

    if-ne v0, v3, :cond_1

    .line 192
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_1

    .line 196
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 199
    :cond_1
    :try_start_1
    new-instance v2, Lorg/keyczar/exceptions/KeyczarException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes from encryption operation but got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getSigningStream()Lorg/keyczar/interfaces/SigningStream;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lorg/keyczar/RsaPublicKey$RsaStream$1;

    invoke-direct {v0, p0}, Lorg/keyczar/RsaPublicKey$RsaStream$1;-><init>(Lorg/keyczar/RsaPublicKey$RsaStream;)V

    return-object v0
.end method

.method public initEncrypt(Ljava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->this$0:Lorg/keyczar/RsaPublicKey;

    invoke-static {v2}, Lorg/keyczar/RsaPublicKey;->access$000(Lorg/keyczar/RsaPublicKey;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    const/4 v0, 0x0

    return v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public initVerify()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->signature:Ljava/security/Signature;

    iget-object v1, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->this$0:Lorg/keyczar/RsaPublicKey;

    invoke-static {v1}, Lorg/keyczar/RsaPublicKey;->access$000(Lorg/keyczar/RsaPublicKey;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public maxOutputSize(I)I
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->this$0:Lorg/keyczar/RsaPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/RsaPublicKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->this$0:Lorg/keyczar/RsaPublicKey;

    iget v1, v1, Lorg/keyczar/RsaPublicKey;->size:I

    invoke-interface {v0, v1}, Lorg/keyczar/interfaces/KeyType;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method public updateEncrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateVerify(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify(Ljava/nio/ByteBuffer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lorg/keyczar/RsaPublicKey$RsaStream;->signature:Ljava/security/Signature;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 281
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    .line 280
    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->verify([BII)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
