.class Lorg/keyczar/RsaPublicKey$RsaStream$1;
.super Ljava/lang/Object;
.source "RsaPublicKey.java"

# interfaces
.implements Lorg/keyczar/interfaces/SigningStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/keyczar/RsaPublicKey$RsaStream;->getSigningStream()Lorg/keyczar/interfaces/SigningStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/keyczar/RsaPublicKey$RsaStream;


# direct methods
.method constructor <init>(Lorg/keyczar/RsaPublicKey$RsaStream;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lorg/keyczar/RsaPublicKey$RsaStream$1;->this$1:Lorg/keyczar/RsaPublicKey$RsaStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public digestSize()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public initSign()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public sign(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public updateSign(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method
