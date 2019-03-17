.class public Lorg/keyczar/SessionDecrypter;
.super Ljava/lang/Object;
.source "SessionDecrypter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final symmetricCrypter:Lorg/keyczar/Crypter;


# direct methods
.method public constructor <init>(Lorg/keyczar/Crypter;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1, p2}, Lorg/keyczar/Crypter;->decrypt([B)[B

    move-result-object v0

    .line 44
    invoke-static {v0}, Lorg/keyczar/AesKey;->fromPackedKey([B)Lorg/keyczar/AesKey;

    move-result-object v0

    .line 45
    new-instance v1, Lorg/keyczar/ImportedKeyReader;

    invoke-direct {v1, v0}, Lorg/keyczar/ImportedKeyReader;-><init>(Lorg/keyczar/AesKey;)V

    .line 46
    new-instance v0, Lorg/keyczar/Crypter;

    invoke-direct {v0, v1}, Lorg/keyczar/Crypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    iput-object v0, p0, Lorg/keyczar/SessionDecrypter;->symmetricCrypter:Lorg/keyczar/Crypter;

    .line 47
    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/keyczar/SessionDecrypter;->symmetricCrypter:Lorg/keyczar/Crypter;

    invoke-virtual {v0, p1}, Lorg/keyczar/Crypter;->decrypt([B)[B

    move-result-object v0

    return-object v0
.end method
