.class public Lorg/keyczar/KeyczarTool;
.super Ljava/lang/Object;
.source "KeyczarTool.java"


# static fields
.field private static mock:Lorg/keyczar/MockKeyczarReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addKey(Ljava/lang/String;Lorg/keyczar/enums/KeyStatus;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {p0, p2}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 278
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 279
    invoke-static {p4}, Lorg/keyczar/KeyczarTool;->getPadding(Ljava/lang/String;)Lorg/keyczar/enums/RsaPadding;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/keyczar/GenericKeyczar;->addVersion(Lorg/keyczar/enums/KeyStatus;Lorg/keyczar/enums/RsaPadding;)V

    .line 283
    :goto_0
    invoke-static {v0, p2, p0}, Lorg/keyczar/KeyczarTool;->updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void

    .line 281
    :cond_0
    invoke-static {p4}, Lorg/keyczar/KeyczarTool;->getPadding(Ljava/lang/String;)Lorg/keyczar/enums/RsaPadding;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lorg/keyczar/GenericKeyczar;->addVersion(Lorg/keyczar/enums/KeyStatus;Lorg/keyczar/enums/RsaPadding;I)V

    goto :goto_0
.end method

.method private static create(Ljava/lang/String;Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 311
    const/4 v0, 0x0

    .line 312
    if-nez p2, :cond_0

    .line 313
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MustDefinePurpose"

    new-array v2, v5, [Ljava/lang/Object;

    .line 314
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    sget-object v1, Lorg/keyczar/KeyczarTool$1;->$SwitchMap$org$keyczar$enums$KeyPurpose:[I

    invoke-virtual {p2}, Lorg/keyczar/enums/KeyPurpose;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 347
    :goto_0
    if-nez v0, :cond_5

    .line 348
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.UnsupportedPurpose"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v5

    .line 349
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :pswitch_0
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->TEST:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->TEST:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 321
    :pswitch_1
    if-eqz p3, :cond_3

    .line 322
    const-string v0, "rsa"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 325
    :cond_1
    const-string v0, "ec"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->EC_PRIV:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 329
    :cond_2
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->DSA_PRIV:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 333
    :cond_3
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->HMAC_SHA1:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 338
    :pswitch_2
    if-eqz p3, :cond_4

    .line 339
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 342
    :cond_4
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->AES:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 351
    :cond_5
    sget-object v1, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    if-nez v1, :cond_8

    .line 352
    if-nez p0, :cond_6

    .line 353
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MustDefineLocation"

    new-array v2, v5, [Ljava/lang/Object;

    .line 354
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_6
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "meta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 358
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v2, "KeyczarTool.FileExists"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    .line 359
    invoke-static {v2, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_7
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 363
    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 364
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_1
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    new-instance v2, Lorg/keyczar/exceptions/KeyczarException;

    const-string v3, "KeyczarTool.UnableToWrite"

    new-array v4, v4, [Ljava/lang/Object;

    .line 367
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 366
    invoke-static {v3, v4}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 370
    :cond_8
    sget-object v1, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    invoke-virtual {v1, v0}, Lorg/keyczar/MockKeyczarReader;->setMetadata(Lorg/keyczar/KeyMetadata;)V

    goto :goto_1

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createGenericKeyczar(Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 478
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    return-object v0
.end method

.method private static createGenericKeyczar(Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 491
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    if-eqz v0, :cond_0

    .line 492
    new-instance v0, Lorg/keyczar/GenericKeyczar;

    sget-object v1, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    invoke-direct {v0, v1}, Lorg/keyczar/GenericKeyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 503
    :goto_0
    return-object v0

    .line 494
    :cond_0
    if-nez p0, :cond_1

    .line 495
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.NeedLocation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "KeyczarTool.Location"

    new-array v4, v5, [Ljava/lang/Object;

    .line 496
    invoke-static {v3, v4}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 495
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_1
    new-instance v1, Lorg/keyczar/KeyczarFileReader;

    invoke-direct {v1, p0}, Lorg/keyczar/KeyczarFileReader;-><init>(Ljava/lang/String;)V

    .line 499
    if-eqz p1, :cond_2

    .line 500
    new-instance v2, Lorg/keyczar/Crypter;

    invoke-direct {v2, p1}, Lorg/keyczar/Crypter;-><init>(Ljava/lang/String;)V

    .line 501
    new-instance v0, Lorg/keyczar/KeyczarEncryptedReader;

    invoke-direct {v0, v1, v2}, Lorg/keyczar/KeyczarEncryptedReader;-><init>(Lorg/keyczar/interfaces/KeyczarReader;Lorg/keyczar/Crypter;)V

    .line 503
    :goto_1
    new-instance v1, Lorg/keyczar/GenericKeyczar;

    invoke-direct {v1, v0}, Lorg/keyczar/GenericKeyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static demote(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 405
    if-gez p1, :cond_0

    .line 406
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MissingVersion"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 407
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    invoke-static {p0}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 410
    invoke-virtual {v0, p1}, Lorg/keyczar/GenericKeyczar;->demote(I)V

    .line 411
    invoke-static {v0, p0}, Lorg/keyczar/KeyczarTool;->updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method private static exportKey(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 164
    if-gez p2, :cond_0

    .line 165
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MissingVersion"

    new-array v2, v5, [Ljava/lang/Object;

    .line 166
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    invoke-static {p0, p1}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p2}, Lorg/keyczar/GenericKeyczar;->getVersion(I)Lorg/keyczar/KeyVersion;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Lorg/keyczar/GenericKeyczar;->getKey(Lorg/keyczar/KeyVersion;)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p4}, Lorg/keyczar/KeyczarKey;->getPemString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    const-string v2, ""

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 179
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 180
    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    return-void
.end method

.method private static getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.FileNotFound"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getImportingKeyczar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;)Lorg/keyczar/GenericKeyczar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p1}, Lorg/keyczar/KeyczarTool;->getPadding(Ljava/lang/String;)Lorg/keyczar/enums/RsaPadding;

    move-result-object v2

    .line 208
    invoke-static {p0}, Lorg/keyczar/KeyczarTool;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 210
    :try_start_0
    new-instance v0, Lorg/keyczar/GenericKeyczar;

    new-instance v3, Lorg/keyczar/X509CertificateReader;

    invoke-direct {v3, p3, v1, v2}, Lorg/keyczar/X509CertificateReader;-><init>(Lorg/keyczar/enums/KeyPurpose;Ljava/io/InputStream;Lorg/keyczar/enums/RsaPadding;)V

    invoke-direct {v0, v3}, Lorg/keyczar/GenericKeyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    :try_end_0
    .catch Lorg/keyczar/exceptions/KeyczarException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 216
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    :try_start_1
    invoke-virtual {v0}, Lorg/keyczar/exceptions/KeyczarException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 215
    invoke-static {p0}, Lorg/keyczar/KeyczarTool;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 216
    new-instance v0, Lorg/keyczar/GenericKeyczar;

    new-instance v3, Lorg/keyczar/PkcsKeyReader;

    invoke-direct {v3, p3, v1, v2, p2}, Lorg/keyczar/PkcsKeyReader;-><init>(Lorg/keyczar/enums/KeyPurpose;Ljava/io/InputStream;Lorg/keyczar/enums/RsaPadding;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/keyczar/GenericKeyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 218
    :cond_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static getMock()Lorg/keyczar/MockKeyczarReader;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    return-object v0
.end method

.method private static getPadding(Ljava/lang/String;)Lorg/keyczar/enums/RsaPadding;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    if-eqz p0, :cond_0

    .line 290
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/enums/RsaPadding;->valueOf(Ljava/lang/String;)Lorg/keyczar/enums/RsaPadding;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :cond_0
    return-object v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "InvalidPadding"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static importKey(Ljava/lang/String;Ljava/lang/String;Lorg/keyczar/enums/KeyStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p0, p3}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lorg/keyczar/GenericKeyczar;->getMetadata()Lorg/keyczar/KeyMetadata;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v2

    invoke-static {p1, p4, p5, v2}, Lorg/keyczar/KeyczarTool;->getImportingKeyczar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;)Lorg/keyczar/GenericKeyczar;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lorg/keyczar/GenericKeyczar;->getMetadata()Lorg/keyczar/KeyMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v3

    .line 196
    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v4

    if-eq v4, v3, :cond_0

    .line 197
    invoke-virtual {v0}, Lorg/keyczar/GenericKeyczar;->getVersions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    invoke-virtual {v1, v3}, Lorg/keyczar/KeyMetadata;->setType(Lorg/keyczar/interfaces/KeyType;)V

    .line 201
    :cond_0
    invoke-virtual {v2}, Lorg/keyczar/GenericKeyczar;->getPrimaryKey()Lorg/keyczar/KeyczarKey;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/keyczar/GenericKeyczar;->addVersion(Lorg/keyczar/enums/KeyStatus;Lorg/keyczar/KeyczarKey;)V

    .line 202
    invoke-static {v0, p3, p0}, Lorg/keyczar/KeyczarTool;->updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 85
    move-object/from16 v0, p0

    array-length v1, v0

    if-nez v1, :cond_0

    .line 86
    invoke-static {}, Lorg/keyczar/KeyczarTool;->printUsage()V

    .line 160
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p0, v1

    invoke-static {v1}, Lorg/keyczar/enums/Command;->getCommand(Ljava/lang/String;)Lorg/keyczar/enums/Command;

    move-result-object v12

    .line 90
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 91
    move-object/from16 v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    .line 92
    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 95
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 96
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Lorg/keyczar/enums/Flag;->getFlag(Ljava/lang/String;)Lorg/keyczar/enums/Flag;

    move-result-object v4

    .line 97
    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v13, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_2
    sget-object v1, Lorg/keyczar/enums/Flag;->LOCATION:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    if-eqz v1, :cond_3

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_3
    sget-object v2, Lorg/keyczar/enums/Flag;->PURPOSE:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/keyczar/enums/KeyPurpose;->getPurpose(Ljava/lang/String;)Lorg/keyczar/enums/KeyPurpose;

    move-result-object v14

    .line 107
    sget-object v2, Lorg/keyczar/enums/Flag;->STATUS:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/keyczar/enums/KeyStatus;->getStatus(Ljava/lang/String;)Lorg/keyczar/enums/KeyStatus;

    move-result-object v3

    .line 108
    sget-object v2, Lorg/keyczar/enums/Flag;->ASYMMETRIC:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 109
    sget-object v2, Lorg/keyczar/enums/Flag;->CRYPTER:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 110
    sget-object v2, Lorg/keyczar/enums/Flag;->DESTINATION:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 111
    sget-object v2, Lorg/keyczar/enums/Flag;->NAME:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 112
    sget-object v2, Lorg/keyczar/enums/Flag;->PADDING:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 113
    sget-object v2, Lorg/keyczar/enums/Flag;->PASSPHRASE:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 114
    sget-object v2, Lorg/keyczar/enums/Flag;->PEMFILE:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    sget-object v10, Lorg/keyczar/enums/Flag;->VERSION:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 116
    const/4 v11, -0x1

    .line 117
    sget-object v15, Lorg/keyczar/enums/Flag;->SIZE:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 118
    sget-object v11, Lorg/keyczar/enums/Flag;->SIZE:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 121
    :cond_4
    sget-object v13, Lorg/keyczar/KeyczarTool$1;->$SwitchMap$org$keyczar$enums$Command:[I

    invoke-virtual {v12}, Lorg/keyczar/enums/Command;->ordinal()I

    move-result v12

    aget v12, v13, v12

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_0

    .line 123
    :pswitch_0
    invoke-static {v1, v9, v14, v7}, Lorg/keyczar/KeyczarTool;->create(Ljava/lang/String;Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    invoke-static {}, Lorg/keyczar/KeyczarTool;->printUsage()V

    goto/16 :goto_0

    .line 126
    :pswitch_1
    :try_start_1
    invoke-static {v1, v3, v4, v11, v5}, Lorg/keyczar/KeyczarTool;->addKey(Ljava/lang/String;Lorg/keyczar/enums/KeyStatus;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :pswitch_2
    invoke-static {v1, v8}, Lorg/keyczar/KeyczarTool;->publicKeys(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :pswitch_3
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/keyczar/KeyczarTool;->promote(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 135
    :pswitch_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/keyczar/KeyczarTool;->demote(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 138
    :pswitch_5
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/keyczar/KeyczarTool;->revoke(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 141
    :pswitch_6
    move-object/from16 v0, p0

    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_5

    .line 142
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2, v1, v8, v4}, Lorg/keyczar/KeyczarTool;->useKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :cond_5
    invoke-static {}, Lorg/keyczar/KeyczarTool;->printUsage()V

    goto/16 :goto_0

    .line 148
    :pswitch_7
    invoke-static/range {v1 .. v6}, Lorg/keyczar/KeyczarTool;->importKey(Ljava/lang/String;Ljava/lang/String;Lorg/keyczar/enums/KeyStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :pswitch_8
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v4, v3, v2, v6}, Lorg/keyczar/KeyczarTool;->exportKey(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static printUsage()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-static {}, Lorg/keyczar/enums/Command;->values()[Lorg/keyczar/enums/Command;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 465
    invoke-virtual {v5}, Lorg/keyczar/enums/Command;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    :cond_0
    invoke-static {}, Lorg/keyczar/enums/Flag;->values()[Lorg/keyczar/enums/Flag;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 469
    invoke-virtual {v4}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 472
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "KeyczarTool.Usage"

    .line 473
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method private static promote(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 385
    if-gez p1, :cond_0

    .line 386
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MissingVersion"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 387
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    invoke-static {p0}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 390
    invoke-virtual {v0, p1}, Lorg/keyczar/GenericKeyczar;->promote(I)V

    .line 391
    invoke-static {v0, p0}, Lorg/keyczar/KeyczarTool;->updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method private static publicKeys(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 424
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 425
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MustDefineDestination"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 426
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    invoke-static {p0}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 429
    invoke-virtual {v0, p1}, Lorg/keyczar/GenericKeyczar;->publicKeyExport(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method private static revoke(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-static {p0}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 445
    invoke-virtual {v0, p1}, Lorg/keyczar/GenericKeyczar;->revoke(I)V

    .line 447
    invoke-static {v0, p0}, Lorg/keyczar/KeyczarTool;->updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;)V

    .line 448
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.UnableToDelete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 452
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    invoke-virtual {v0, p1}, Lorg/keyczar/MockKeyczarReader;->removeKey(I)V

    .line 457
    :cond_1
    return-void
.end method

.method public static setReader(Lorg/keyczar/MockKeyczarReader;)V
    .locals 0

    .prologue
    .line 65
    sput-object p0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    .line 66
    return-void
.end method

.method private static updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/keyczar/KeyczarTool;->updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method private static updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 513
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    if-eqz v0, :cond_0

    .line 514
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    invoke-virtual {p0}, Lorg/keyczar/GenericKeyczar;->getMetadata()Lorg/keyczar/KeyMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/keyczar/MockKeyczarReader;->setMetadata(Lorg/keyczar/KeyMetadata;)V

    .line 515
    invoke-virtual {p0}, Lorg/keyczar/GenericKeyczar;->getVersions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyVersion;

    .line 516
    sget-object v2, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v3

    invoke-virtual {p0, v0}, Lorg/keyczar/GenericKeyczar;->getKey(Lorg/keyczar/KeyVersion;)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/keyczar/MockKeyczarReader;->setKey(ILorg/keyczar/KeyczarKey;)V

    goto :goto_0

    .line 518
    :cond_0
    if-eqz p1, :cond_2

    .line 519
    new-instance v0, Lorg/keyczar/Encrypter;

    invoke-direct {v0, p1}, Lorg/keyczar/Encrypter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lorg/keyczar/GenericKeyczar;->writeEncrypted(Ljava/lang/String;Lorg/keyczar/Encrypter;)V

    .line 523
    :cond_1
    :goto_1
    return-void

    .line 521
    :cond_2
    invoke-virtual {p0, p2}, Lorg/keyczar/GenericKeyczar;->write(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static useKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 234
    .line 235
    invoke-static {p1, p3}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v2

    .line 236
    if-nez p2, :cond_0

    .line 237
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MustDefinePublic"

    new-array v2, v4, [Ljava/lang/Object;

    .line 238
    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    const-string v0, ""

    .line 241
    new-instance v1, Lorg/keyczar/KeyczarFileReader;

    invoke-direct {v1, p1}, Lorg/keyczar/KeyczarFileReader;-><init>(Ljava/lang/String;)V

    .line 242
    if-eqz p3, :cond_1

    .line 243
    new-instance v3, Lorg/keyczar/Crypter;

    invoke-direct {v3, p3}, Lorg/keyczar/Crypter;-><init>(Ljava/lang/String;)V

    .line 244
    new-instance v0, Lorg/keyczar/KeyczarEncryptedReader;

    invoke-direct {v0, v1, v3}, Lorg/keyczar/KeyczarEncryptedReader;-><init>(Lorg/keyczar/interfaces/KeyczarReader;Lorg/keyczar/Crypter;)V

    .line 247
    :goto_0
    sget-object v1, Lorg/keyczar/KeyczarTool$1;->$SwitchMap$org$keyczar$enums$KeyPurpose:[I

    invoke-virtual {v2}, Lorg/keyczar/GenericKeyczar;->getMetadata()Lorg/keyczar/KeyMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v3

    invoke-virtual {v3}, Lorg/keyczar/enums/KeyPurpose;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 257
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.UnsupportedPurpose"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 259
    invoke-virtual {v2}, Lorg/keyczar/GenericKeyczar;->getMetadata()Lorg/keyczar/KeyMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v2

    aput-object v2, v3, v4

    .line 258
    invoke-static {v1, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :pswitch_0
    new-instance v1, Lorg/keyczar/Crypter;

    invoke-direct {v1, v0}, Lorg/keyczar/Crypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 250
    invoke-virtual {v1, p0}, Lorg/keyczar/Crypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_1
    invoke-virtual {v2, v0, p2}, Lorg/keyczar/GenericKeyczar;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void

    .line 253
    :pswitch_1
    new-instance v1, Lorg/keyczar/Signer;

    invoke-direct {v1, v0}, Lorg/keyczar/Signer;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 254
    invoke-virtual {v1, p0}, Lorg/keyczar/Signer;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
