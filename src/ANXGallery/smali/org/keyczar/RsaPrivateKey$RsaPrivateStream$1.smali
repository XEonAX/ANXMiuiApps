.class Lorg/keyczar/RsaPrivateKey$RsaPrivateStream$1;
.super Ljava/lang/Object;
.source "RsaPrivateKey.java"

# interfaces
.implements Lorg/keyczar/interfaces/VerifyingStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;->getVerifyingStream()Lorg/keyczar/interfaces/VerifyingStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;


# direct methods
.method constructor <init>(Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream$1;->this$1:Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public digestSize()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public initVerify()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public updateVerify(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public verify(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method
