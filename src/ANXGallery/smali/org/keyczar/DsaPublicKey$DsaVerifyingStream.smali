.class Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;
.super Ljava/lang/Object;
.source "DsaPublicKey.java"

# interfaces
.implements Lorg/keyczar/interfaces/VerifyingStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/DsaPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DsaVerifyingStream"
.end annotation


# instance fields
.field private signature:Ljava/security/Signature;

.field final synthetic this$0:Lorg/keyczar/DsaPublicKey;


# direct methods
.method public constructor <init>(Lorg/keyczar/DsaPublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 166
    iput-object p1, p0, Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;->this$0:Lorg/keyczar/DsaPublicKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    :try_start_0
    const-string v0, "SHA1withDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;->signature:Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public digestSize()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;->this$0:Lorg/keyczar/DsaPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/DsaPublicKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    invoke-interface {v0}, Lorg/keyczar/interfaces/KeyType;->getOutputSize()I

    move-result v0

    return v0
.end method

.method public initVerify()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;->signature:Ljava/security/Signature;

    iget-object v1, p0, Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;->this$0:Lorg/keyczar/DsaPublicKey;

    invoke-static {v1}, Lorg/keyczar/DsaPublicKey;->access$000(Lorg/keyczar/DsaPublicKey;)Ljava/security/interfaces/DSAPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
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
    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
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
    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/keyczar/DsaPublicKey$DsaVerifyingStream;->signature:Ljava/security/Signature;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 201
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->verify([BII)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
