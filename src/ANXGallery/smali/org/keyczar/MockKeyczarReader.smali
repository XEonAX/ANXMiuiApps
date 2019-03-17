.class public Lorg/keyczar/MockKeyczarReader;
.super Ljava/lang/Object;
.source "MockKeyczarReader.java"

# interfaces
.implements Lorg/keyczar/interfaces/KeyczarReader;


# instance fields
.field private keys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/keyczar/KeyczarKey;",
            ">;"
        }
    .end annotation
.end field

.field private kmd:Lorg/keyczar/KeyMetadata;

.field private publicKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/keyczar/KeyczarKey;",
            ">;"
        }
    .end annotation
.end field

.field private publicKmd:Lorg/keyczar/KeyMetadata;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/keyczar/KeyMetadata;

    invoke-direct {v0, p1, p2, p3}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    iput-object v0, p0, Lorg/keyczar/MockKeyczarReader;->kmd:Lorg/keyczar/KeyMetadata;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/keyczar/MockKeyczarReader;->publicKmd:Lorg/keyczar/KeyMetadata;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/keyczar/MockKeyczarReader;->keys:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/keyczar/MockKeyczarReader;->publicKeys:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method public addKey(ILorg/keyczar/enums/KeyStatus;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/KeyczarKey;->genKey(Lorg/keyczar/interfaces/KeyType;)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lorg/keyczar/MockKeyczarReader;->keys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->kmd:Lorg/keyczar/KeyMetadata;

    new-instance v1, Lorg/keyczar/KeyVersion;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/keyczar/KeyVersion;-><init>(ILorg/keyczar/enums/KeyStatus;Z)V

    invoke-virtual {v0, v1}, Lorg/keyczar/KeyMetadata;->addVersion(Lorg/keyczar/KeyVersion;)Z

    move-result v0

    return v0
.end method

.method public addKey(ILorg/keyczar/enums/KeyStatus;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/keyczar/KeyczarKey;->genKey(Lorg/keyczar/interfaces/KeyType;I)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lorg/keyczar/MockKeyczarReader;->keys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->kmd:Lorg/keyczar/KeyMetadata;

    new-instance v1, Lorg/keyczar/KeyVersion;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/keyczar/KeyVersion;-><init>(ILorg/keyczar/enums/KeyStatus;Z)V

    invoke-virtual {v0, v1}, Lorg/keyczar/KeyMetadata;->addVersion(Lorg/keyczar/KeyVersion;)Z

    move-result v0

    return v0
.end method

.method public existsVersion(I)Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->keys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public exportedPublicKeySet()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->publicKmd:Lorg/keyczar/KeyMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/keyczar/MockKeyczarReader;->getMetadata()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/KeyMetadata;->read(Ljava/lang/String;)Lorg/keyczar/KeyMetadata;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->getPrimaryVersion()Lorg/keyczar/KeyVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/keyczar/MockKeyczarReader;->getKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->keys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->keys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyczarKey;

    invoke-virtual {v0}, Lorg/keyczar/KeyczarKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    new-instance v0, Lorg/keyczar/exceptions/BadVersionException;

    int-to-byte v1, p1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/BadVersionException;-><init>(B)V

    throw v0
.end method

.method public getKeySize(I)I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->keys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyczarKey;

    invoke-virtual {v0}, Lorg/keyczar/KeyczarKey;->size()I

    move-result v0

    return v0
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson_nex/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/MockKeyczarReader;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0, v1}, Lcom/google/gson_nex/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus(I)Lorg/keyczar/enums/KeyStatus;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0, p1}, Lorg/keyczar/KeyMetadata;->getVersion(I)Lorg/keyczar/KeyVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getStatus()Lorg/keyczar/enums/KeyStatus;

    move-result-object v0

    return-object v0
.end method

.method public hasPublicKey(I)Z
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->keys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyczarPrivateKey;

    .line 114
    iget-object v1, p0, Lorg/keyczar/MockKeyczarReader;->publicKeys:Ljava/util/Map;

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/keyczar/KeyczarPublicKey;

    .line 116
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {v0}, Lorg/keyczar/KeyczarPrivateKey;->getPublic()Lorg/keyczar/KeyczarPublicKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/keyczar/KeyczarPublicKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public numKeys()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->keys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public purpose()Lorg/keyczar/enums/KeyPurpose;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v0

    return-object v0
.end method

.method public removeKey(I)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->keys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public setKey(ILorg/keyczar/KeyczarKey;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->keys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public setMetadata(Lorg/keyczar/KeyMetadata;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/keyczar/MockKeyczarReader;->kmd:Lorg/keyczar/KeyMetadata;

    .line 56
    return-void
.end method

.method public setPublicKey(ILorg/keyczar/KeyczarKey;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->publicKeys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public setPublicKeyMetadata(Lorg/keyczar/KeyMetadata;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/keyczar/MockKeyczarReader;->publicKmd:Lorg/keyczar/KeyMetadata;

    .line 60
    return-void
.end method

.method public type()Lorg/keyczar/interfaces/KeyType;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/keyczar/MockKeyczarReader;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    return-object v0
.end method
