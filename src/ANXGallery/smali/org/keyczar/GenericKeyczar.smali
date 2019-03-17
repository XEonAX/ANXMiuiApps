.class public Lorg/keyczar/GenericKeyczar;
.super Lorg/keyczar/Keyczar;
.source "GenericKeyczar.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/keyczar/Keyczar;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/keyczar/Keyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 28
    return-void
.end method

.method private numVersions()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/keyczar/GenericKeyczar;->versionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addVersion(Lorg/keyczar/enums/KeyStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/keyczar/GenericKeyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v1

    invoke-interface {v1}, Lorg/keyczar/interfaces/KeyType;->defaultSize()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/keyczar/GenericKeyczar;->addVersion(Lorg/keyczar/enums/KeyStatus;Lorg/keyczar/enums/RsaPadding;I)V

    .line 107
    return-void
.end method

.method public addVersion(Lorg/keyczar/enums/KeyStatus;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/keyczar/GenericKeyczar;->addVersion(Lorg/keyczar/enums/KeyStatus;Lorg/keyczar/enums/RsaPadding;I)V

    .line 114
    return-void
.end method

.method public addVersion(Lorg/keyczar/enums/KeyStatus;Lorg/keyczar/KeyczarKey;)V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lorg/keyczar/KeyVersion;

    invoke-direct {p0}, Lorg/keyczar/GenericKeyczar;->numVersions()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/keyczar/KeyVersion;-><init>(ILorg/keyczar/enums/KeyStatus;Z)V

    .line 159
    sget-object v1, Lorg/keyczar/enums/KeyStatus;->PRIMARY:Lorg/keyczar/enums/KeyStatus;

    if-ne p1, v1, :cond_1

    .line 160
    iget-object v1, p0, Lorg/keyczar/GenericKeyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lorg/keyczar/GenericKeyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    sget-object v2, Lorg/keyczar/enums/KeyStatus;->ACTIVE:Lorg/keyczar/enums/KeyStatus;

    invoke-virtual {v1, v2}, Lorg/keyczar/KeyVersion;->setStatus(Lorg/keyczar/enums/KeyStatus;)V

    .line 163
    :cond_0
    iput-object v0, p0, Lorg/keyczar/GenericKeyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    .line 165
    :cond_1
    invoke-virtual {p0, v0, p2}, Lorg/keyczar/GenericKeyczar;->addKey(Lorg/keyczar/KeyVersion;Lorg/keyczar/KeyczarKey;)V

    .line 167
    return-void
.end method

.method public addVersion(Lorg/keyczar/enums/KeyStatus;Lorg/keyczar/enums/RsaPadding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/keyczar/GenericKeyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    invoke-interface {v0}, Lorg/keyczar/interfaces/KeyType;->defaultSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/keyczar/GenericKeyczar;->addVersion(Lorg/keyczar/enums/KeyStatus;Lorg/keyczar/enums/RsaPadding;I)V

    .line 124
    return-void
.end method

.method public addVersion(Lorg/keyczar/enums/KeyStatus;Lorg/keyczar/enums/RsaPadding;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 146
    :cond_0
    iget-object v0, p0, Lorg/keyczar/GenericKeyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/keyczar/KeyczarKey;->genKey(Lorg/keyczar/interfaces/KeyType;Lorg/keyczar/enums/RsaPadding;I)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/keyczar/GenericKeyczar;->getKey([B)Lorg/keyczar/KeyczarKey;

    move-result-object v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {p0, p1, v0}, Lorg/keyczar/GenericKeyczar;->addVersion(Lorg/keyczar/enums/KeyStatus;Lorg/keyczar/KeyczarKey;)V

    .line 149
    return-void
.end method

.method public demote(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lorg/keyczar/GenericKeyczar;->getVersion(I)Lorg/keyczar/KeyVersion;

    move-result-object v0

    .line 88
    sget-object v1, Lorg/keyczar/GenericKeyczar$1;->$SwitchMap$org$keyczar$enums$KeyStatus:[I

    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getStatus()Lorg/keyczar/enums/KeyStatus;

    move-result-object v2

    invoke-virtual {v2}, Lorg/keyczar/enums/KeyStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 90
    :pswitch_0
    sget-object v1, Lorg/keyczar/enums/KeyStatus;->ACTIVE:Lorg/keyczar/enums/KeyStatus;

    invoke-virtual {v0, v1}, Lorg/keyczar/KeyVersion;->setStatus(Lorg/keyczar/enums/KeyStatus;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/keyczar/GenericKeyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    goto :goto_0

    .line 94
    :pswitch_1
    sget-object v1, Lorg/keyczar/enums/KeyStatus;->INACTIVE:Lorg/keyczar/enums/KeyStatus;

    invoke-virtual {v0, v1}, Lorg/keyczar/KeyVersion;->setStatus(Lorg/keyczar/enums/KeyStatus;)V

    goto :goto_0

    .line 97
    :pswitch_2
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Keyczar.CantDemoteScheduled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 98
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getKey(Lorg/keyczar/KeyVersion;)Lorg/keyczar/KeyczarKey;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/keyczar/GenericKeyczar;->versionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyczarKey;

    return-object v0
.end method

.method public getMetadata()Lorg/keyczar/KeyMetadata;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/keyczar/GenericKeyczar;->kmd:Lorg/keyczar/KeyMetadata;

    return-object v0
.end method

.method public getVersion(I)Lorg/keyczar/KeyVersion;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lorg/keyczar/GenericKeyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0, p1}, Lorg/keyczar/KeyMetadata;->getVersion(I)Lorg/keyczar/KeyVersion;

    move-result-object v0

    .line 178
    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Keyczar.NoSuchVersion"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    return-object v0
.end method

.method public getVersions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/keyczar/KeyVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lorg/keyczar/GenericKeyczar;->versionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public promote(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lorg/keyczar/GenericKeyczar;->getVersion(I)Lorg/keyczar/KeyVersion;

    move-result-object v0

    .line 61
    sget-object v1, Lorg/keyczar/GenericKeyczar$1;->$SwitchMap$org$keyczar$enums$KeyStatus:[I

    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getStatus()Lorg/keyczar/enums/KeyStatus;

    move-result-object v2

    invoke-virtual {v2}, Lorg/keyczar/enums/KeyStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 63
    :pswitch_0
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Keyczar.CantPromotePrimary"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 64
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :pswitch_1
    sget-object v1, Lorg/keyczar/enums/KeyStatus;->PRIMARY:Lorg/keyczar/enums/KeyStatus;

    invoke-virtual {v0, v1}, Lorg/keyczar/KeyVersion;->setStatus(Lorg/keyczar/enums/KeyStatus;)V

    .line 67
    iget-object v1, p0, Lorg/keyczar/GenericKeyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/keyczar/GenericKeyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    sget-object v2, Lorg/keyczar/enums/KeyStatus;->ACTIVE:Lorg/keyczar/enums/KeyStatus;

    invoke-virtual {v1, v2}, Lorg/keyczar/KeyVersion;->setStatus(Lorg/keyczar/enums/KeyStatus;)V

    .line 70
    :cond_0
    iput-object v0, p0, Lorg/keyczar/GenericKeyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    goto :goto_0

    .line 73
    :pswitch_2
    sget-object v1, Lorg/keyczar/enums/KeyStatus;->ACTIVE:Lorg/keyczar/enums/KeyStatus;

    invoke-virtual {v0, v1}, Lorg/keyczar/KeyVersion;->setStatus(Lorg/keyczar/enums/KeyStatus;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method publicKeyExport(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 219
    if-eqz p1, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    :cond_0
    invoke-virtual {p0}, Lorg/keyczar/GenericKeyczar;->getMetadata()Lorg/keyczar/KeyMetadata;

    move-result-object v1

    .line 224
    const/4 v0, 0x0

    .line 225
    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v2

    sget-object v3, Lorg/keyczar/DefaultKeyType;->DSA_PRIV:Lorg/keyczar/DefaultKeyType;

    if-ne v2, v3, :cond_1

    .line 226
    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v2

    sget-object v3, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    if-ne v2, v3, :cond_2

    .line 227
    new-instance v0, Lorg/keyczar/KeyMetadata;

    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/keyczar/enums/KeyPurpose;->VERIFY:Lorg/keyczar/enums/KeyPurpose;

    sget-object v4, Lorg/keyczar/DefaultKeyType;->DSA_PUB:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, v2, v3, v4}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    move-object v2, v0

    .line 242
    :goto_0
    if-nez v2, :cond_3

    .line 243
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v2, "KeyczarTool.CannotExportPubKey"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 245
    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v1

    aput-object v1, v3, v4

    .line 244
    invoke-static {v2, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v2

    sget-object v3, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    if-ne v2, v3, :cond_2

    .line 231
    sget-object v2, Lorg/keyczar/GenericKeyczar$1;->$SwitchMap$org$keyczar$enums$KeyPurpose:[I

    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v3

    invoke-virtual {v3}, Lorg/keyczar/enums/KeyPurpose;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_2
    move-object v2, v0

    goto :goto_0

    .line 233
    :pswitch_0
    new-instance v0, Lorg/keyczar/KeyMetadata;

    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/keyczar/enums/KeyPurpose;->ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    sget-object v4, Lorg/keyczar/DefaultKeyType;->RSA_PUB:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, v2, v3, v4}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    move-object v2, v0

    .line 235
    goto :goto_0

    .line 237
    :pswitch_1
    new-instance v0, Lorg/keyczar/KeyMetadata;

    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/keyczar/enums/KeyPurpose;->VERIFY:Lorg/keyczar/enums/KeyPurpose;

    sget-object v4, Lorg/keyczar/DefaultKeyType;->RSA_PUB:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, v2, v3, v4}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    move-object v2, v0

    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {p0}, Lorg/keyczar/GenericKeyczar;->getVersions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyVersion;

    .line 250
    invoke-virtual {p0, v0}, Lorg/keyczar/GenericKeyczar;->getKey(Lorg/keyczar/KeyVersion;)Lorg/keyczar/KeyczarKey;

    move-result-object v1

    check-cast v1, Lorg/keyczar/KeyczarPrivateKey;

    invoke-interface {v1}, Lorg/keyczar/KeyczarPrivateKey;->getPublic()Lorg/keyczar/KeyczarPublicKey;

    move-result-object v1

    .line 251
    invoke-static {}, Lorg/keyczar/KeyczarTool;->getMock()Lorg/keyczar/MockKeyczarReader;

    move-result-object v4

    if-nez v4, :cond_4

    .line 252
    invoke-virtual {v1}, Lorg/keyczar/KeyczarKey;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 253
    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-virtual {p0, v1, v4}, Lorg/keyczar/GenericKeyczar;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_2
    invoke-virtual {v2, v0}, Lorg/keyczar/KeyMetadata;->addVersion(Lorg/keyczar/KeyVersion;)Z

    goto :goto_1

    .line 255
    :cond_4
    invoke-static {}, Lorg/keyczar/KeyczarTool;->getMock()Lorg/keyczar/MockKeyczarReader;

    move-result-object v4

    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lorg/keyczar/MockKeyczarReader;->setPublicKey(ILorg/keyczar/KeyczarKey;)V

    goto :goto_2

    .line 259
    :cond_5
    invoke-static {}, Lorg/keyczar/KeyczarTool;->getMock()Lorg/keyczar/MockKeyczarReader;

    move-result-object v0

    if-nez v0, :cond_6

    .line 260
    invoke-virtual {v2}, Lorg/keyczar/KeyMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "meta"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/GenericKeyczar;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_3
    return-void

    .line 263
    :cond_6
    invoke-static {}, Lorg/keyczar/KeyczarTool;->getMock()Lorg/keyczar/MockKeyczarReader;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/keyczar/MockKeyczarReader;->setPublicKeyMetadata(Lorg/keyczar/KeyMetadata;)V

    goto :goto_3

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public revoke(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lorg/keyczar/GenericKeyczar;->getVersion(I)Lorg/keyczar/KeyVersion;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getStatus()Lorg/keyczar/enums/KeyStatus;

    move-result-object v0

    sget-object v1, Lorg/keyczar/enums/KeyStatus;->INACTIVE:Lorg/keyczar/enums/KeyStatus;

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lorg/keyczar/GenericKeyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0, p1}, Lorg/keyczar/KeyMetadata;->removeVersion(I)Z

    .line 200
    return-void

    .line 198
    :cond_0
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Keyczar.CantRevoke"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method write(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lorg/keyczar/GenericKeyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "meta"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/GenericKeyczar;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lorg/keyczar/GenericKeyczar;->getVersions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyVersion;

    .line 279
    invoke-virtual {p0, v0}, Lorg/keyczar/GenericKeyczar;->getKey(Lorg/keyczar/KeyVersion;)Lorg/keyczar/KeyczarKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/keyczar/KeyczarKey;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 280
    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p0, v2, v0}, Lorg/keyczar/GenericKeyczar;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_0
    return-void
.end method

.method writeEncrypted(Ljava/lang/String;Lorg/keyczar/Encrypter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Lorg/keyczar/GenericKeyczar;->getMetadata()Lorg/keyczar/KeyMetadata;

    move-result-object v0

    .line 294
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/keyczar/KeyMetadata;->setEncrypted(Z)V

    .line 295
    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "meta"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/GenericKeyczar;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lorg/keyczar/GenericKeyczar;->getVersions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyVersion;

    .line 297
    invoke-virtual {p0, v0}, Lorg/keyczar/GenericKeyczar;->getKey(Lorg/keyczar/KeyVersion;)Lorg/keyczar/KeyczarKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/keyczar/KeyczarKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/keyczar/Encrypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 298
    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p0, v2, v0}, Lorg/keyczar/GenericKeyczar;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method

.method writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 314
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    new-instance v2, Lorg/keyczar/exceptions/KeyczarException;

    const-string v3, "KeyczarTool.UnableToWrite"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 319
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 318
    invoke-static {v3, v4}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
