.class public Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;
.super Ljava/lang/Object;
.source "BasicEncryptionProvider.java"

# interfaces
.implements Lcom/nexstreaming/app/common/nexasset/assetpackage/security/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$ProviderSpecificDataJSON;
    }
.end annotation


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/String;

.field private c:Lorg/keyczar/interfaces/KeyczarReader;


# direct methods
.method public constructor <init>([I[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$1;

    invoke-direct {v0, p0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$1;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->c:Lorg/keyczar/interfaces/KeyczarReader;

    .line 30
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->a:[I

    .line 31
    iput-object p2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->b:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method private a(Ljava/lang/String;II)I
    .locals 4

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_0
    if-ge p2, p3, :cond_3

    if-ge p2, v1, :cond_3

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 39
    mul-int/lit8 v0, v0, 0x10

    .line 40
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 37
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 41
    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v3, 0x66

    if-gt v2, v3, :cond_2

    add-int/lit8 v2, v2, -0x61

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    goto :goto_1

    .line 42
    :cond_2
    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    const/16 v3, 0x46

    if-gt v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x41

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    goto :goto_1

    .line 44
    :cond_3
    return v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 50
    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->a(Ljava/lang/String;II)I

    move-result v3

    xor-int/lit8 v3, v3, 0x20

    .line 51
    add-int/lit8 v2, v2, -0x2

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 52
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 53
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x4

    invoke-direct {p0, v1, v4, v5}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->a(Ljava/lang/String;II)I

    move-result v4

    int-to-byte v4, v4

    .line 54
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xf0

    or-int/2addr v4, v5

    xor-int/2addr v4, v3

    int-to-byte v4, v4

    .line 55
    aput-byte v4, v2, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method static synthetic a(Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 97
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 98
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 100
    const/16 v2, 0xee

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v4, v0, 0x11

    .line 101
    const-string v0, "%02X"

    new-array v2, v9, [Ljava/lang/Object;

    xor-int/lit8 v5, v4, 0x20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    array-length v5, v3

    move-object v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-byte v6, v3, v0

    .line 104
    xor-int/2addr v6, v4

    int-to-byte v6, v6

    .line 105
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v6, v6, 0x4

    and-int/lit16 v6, v6, 0xf0

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "%02X"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/security/a;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Lcom/google/gson_nex/Gson;

    invoke-direct {v0}, Lcom/google/gson_nex/Gson;-><init>()V

    const-class v1, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$ProviderSpecificDataJSON;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson_nex/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$ProviderSpecificDataJSON;

    .line 150
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 151
    iget-object v2, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$ProviderSpecificDataJSON;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget v0, v0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$ProviderSpecificDataJSON;->v:I

    .line 155
    :try_start_0
    new-instance v0, Lorg/keyczar/Crypter;

    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->c:Lorg/keyczar/interfaces/KeyczarReader;

    invoke-direct {v0, v2}, Lorg/keyczar/Crypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    :try_end_0
    .catch Lorg/keyczar/exceptions/KeyczarException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    new-instance v2, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider$2;-><init>(Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;Ljava/util/Set;Lorg/keyczar/Crypter;)V

    return-object v2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->a:[I

    array-length v0, v0

    new-array v1, v0, [C

    .line 137
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->a:[I

    aget v2, v2, v0

    xor-int/lit8 v2, v2, 0x5a

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v0, 0x0

    .line 114
    const/16 v1, 0xc

    new-array v3, v1, [Ljava/lang/String;

    move v1, v0

    move v2, v0

    .line 117
    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_2

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->c:Lorg/keyczar/interfaces/KeyczarReader;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v4}, Lorg/keyczar/interfaces/KeyczarReader;->getKey(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/keyczar/exceptions/KeyczarException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 123
    const-string v0, "hmacKeyString"

    invoke-direct {p0, v4, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_0
    add-int/lit8 v5, v2, 0x1

    invoke-direct {p0, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 126
    const-string v0, "aesKeyString"

    invoke-direct {p0, v4, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_1
    add-int/lit8 v2, v5, 0x1

    invoke-direct {p0, v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/security/provider/BasicEncryptionProvider;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 131
    :cond_2
    return-object v3
.end method
