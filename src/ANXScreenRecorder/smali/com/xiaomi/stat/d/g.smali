.class public Lcom/xiaomi/stat/d/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 25
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/stat/d/g;->a:[C

    .line 26
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/stat/d/g;->b:[C

    return-void

    .line 25
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 26
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v1, Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaomi/stat/d/g;->a:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/g;->a([B[C)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/xiaomi/stat/d/g;->b:[C

    goto :goto_0
.end method

.method private static a()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 37
    const-string v0, "MD5"

    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    .prologue
    .line 30
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 91
    if-nez p0, :cond_0

    .line 98
    :goto_0
    return-object v0

    .line 95
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/xiaomi/stat/d/g;->a()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static a([B[C)[C
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 80
    array-length v2, p0

    .line 81
    shl-int/lit8 v1, v2, 0x1

    new-array v3, v1, [C

    move v1, v0

    .line 83
    :goto_0
    if-ge v1, v2, :cond_0

    .line 84
    add-int/lit8 v4, v0, 0x1

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v3, v0

    .line 85
    add-int/lit8 v0, v4, 0x1

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v3, v4

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-object v3
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->a([B)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 57
    const-string v0, "SHA-256"

    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 45
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/g;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->b(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c([B)[B
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/xiaomi/stat/d/g;->b()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->e(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    invoke-static {p0}, Lcom/xiaomi/stat/d/g;->c([B)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 64
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/xiaomi/stat/d/g;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/g;->c([B)[B

    move-result-object v0

    return-object v0
.end method
