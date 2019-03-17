.class public Lcom/xiaomi/push/service/RC4Cryption;
.super Ljava/lang/Object;
.source "RC4Cryption.java"


# static fields
.field private static keylength:I


# instance fields
.field private S:[B

.field private next_j:I

.field private the_i:I

.field private the_j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0x8

    sput v0, Lcom/xiaomi/push/service/RC4Cryption;->keylength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, -0x29a

    iput v0, p0, Lcom/xiaomi/push/service/RC4Cryption;->next_j:I

    .line 19
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    iput v0, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    .line 21
    return-void
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/string/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 218
    .local v0, "contentBytes":[B
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/RC4Cryption;->encrypt([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static encrypt([B[B)[B
    .locals 5
    .param p0, "key"    # [B
    .param p1, "content"    # [B

    .prologue
    .line 176
    array-length v3, p1

    new-array v1, v3, [B

    .line 177
    .local v1, "outbuf":[B
    new-instance v2, Lcom/xiaomi/push/service/RC4Cryption;

    invoke-direct {v2}, Lcom/xiaomi/push/service/RC4Cryption;-><init>()V

    .line 178
    .local v2, "r":Lcom/xiaomi/push/service/RC4Cryption;
    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/RC4Cryption;->ksa([B)V

    .line 179
    invoke-direct {v2}, Lcom/xiaomi/push/service/RC4Cryption;->init()V

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 181
    aget-byte v3, p1, v0

    invoke-virtual {v2}, Lcom/xiaomi/push/service/RC4Cryption;->nextVal()B

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return-object v1
.end method

.method public static encrypt([B[BZII)[B
    .locals 7
    .param p0, "key"    # [B
    .param p1, "content"    # [B
    .param p2, "inplace"    # Z
    .param p3, "start"    # I
    .param p4, "len"    # I

    .prologue
    .line 191
    if-ltz p3, :cond_0

    array-length v4, p1

    if-gt p3, v4, :cond_0

    add-int v4, p3, p4

    array-length v5, p1

    if-le v4, v5, :cond_1

    .line 192
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_1
    move v0, p3

    .line 195
    .local v0, "dst":I
    move-object v2, p1

    .line 196
    .local v2, "outbuf":[B
    if-nez p2, :cond_2

    .line 197
    new-array v2, p4, [B

    .line 198
    const/4 v0, 0x0

    .line 200
    :cond_2
    new-instance v3, Lcom/xiaomi/push/service/RC4Cryption;

    invoke-direct {v3}, Lcom/xiaomi/push/service/RC4Cryption;-><init>()V

    .line 201
    .local v3, "r":Lcom/xiaomi/push/service/RC4Cryption;
    invoke-direct {v3, p0}, Lcom/xiaomi/push/service/RC4Cryption;->ksa([B)V

    .line 202
    invoke-direct {v3}, Lcom/xiaomi/push/service/RC4Cryption;->init()V

    .line 203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_3

    .line 204
    add-int v4, v0, v1

    add-int v5, p3, v1

    aget-byte v5, p1, v5

    invoke-virtual {v3}, Lcom/xiaomi/push/service/RC4Cryption;->nextVal()B

    move-result v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_3
    return-object v2
.end method

.method public static generateKeyForRC4(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p0, "secretKey"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/string/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 223
    .local v2, "keyBytes":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 224
    .local v1, "idbytes":[B
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 225
    .local v3, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 226
    aget-byte v4, v2, v0

    aput-byte v4, v3, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    array-length v4, v2

    const/16 v5, 0x5f

    aput-byte v5, v3, v4

    .line 229
    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 230
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v0

    aget-byte v5, v1, v0

    aput-byte v5, v3, v4

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_1
    return-object v3
.end method

.method private init()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    iput v0, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    .line 65
    return-void
.end method

.method private ksa(I[BZ)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "key"    # [B
    .param p3, "printstats"    # Z

    .prologue
    const/16 v7, 0x100

    const/4 v6, 0x0

    .line 32
    array-length v3, p2

    .line 33
    .local v3, "keylength":I
    const/4 v1, 0x0

    .line 34
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_0

    .line 35
    iget-object v4, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    int-to-byte v5, v1

    aput-byte v5, v4, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iput v6, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    .line 37
    iput v6, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    :goto_1
    iget v4, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    if-ge v4, p1, :cond_1

    .line 38
    iget v4, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    iget-object v5, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    iget v6, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    aget-byte v5, v5, v6

    invoke-static {v5}, Lcom/xiaomi/push/service/RC4Cryption;->posify(B)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    rem-int/2addr v5, v3

    aget-byte v5, p2, v5

    invoke-static {v5}, Lcom/xiaomi/push/service/RC4Cryption;->posify(B)I

    move-result v5

    add-int/2addr v4, v5

    rem-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    .line 39
    iget-object v4, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    iget v5, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    iget v6, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    invoke-static {v4, v5, v6}, Lcom/xiaomi/push/service/RC4Cryption;->sswap([BII)V

    .line 37
    iget v4, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    goto :goto_1

    .line 41
    :cond_1
    if-eq p1, v7, :cond_2

    .line 42
    iget v4, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    iget-object v5, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    aget-byte v5, v5, p1

    invoke-static {v5}, Lcom/xiaomi/push/service/RC4Cryption;->posify(B)I

    move-result v5

    add-int/2addr v4, v5

    rem-int v5, p1, v3

    aget-byte v5, p2, v5

    invoke-static {v5}, Lcom/xiaomi/push/service/RC4Cryption;->posify(B)I

    move-result v5

    add-int/2addr v4, v5

    rem-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/xiaomi/push/service/RC4Cryption;->next_j:I

    .line 44
    :cond_2
    if-eqz p3, :cond_5

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "S_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    if-gt v2, p1, :cond_3

    .line 48
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    aget-byte v5, v5, v2

    invoke-static {v5}, Lcom/xiaomi/push/service/RC4Cryption;->posify(B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 49
    :cond_3
    const-string v4, "   j_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v4, "   j_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/xiaomi/push/service/RC4Cryption;->next_j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v4, "   S_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[j_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    iget v6, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    aget-byte v5, v5, v6

    invoke-static {v5}, Lcom/xiaomi/push/service/RC4Cryption;->posify(B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v4, "   S_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[j_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    iget v6, p0, Lcom/xiaomi/push/service/RC4Cryption;->next_j:I

    aget-byte v5, v5, v6

    invoke-static {v5}, Lcom/xiaomi/push/service/RC4Cryption;->posify(B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    iget-object v4, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    if-eqz v4, :cond_4

    .line 54
    const-string v4, "   S[1]!=0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 57
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "k":I
    :cond_5
    return-void
.end method

.method private ksa([B)V
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 60
    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/push/service/RC4Cryption;->ksa(I[BZ)V

    .line 61
    return-void
.end method

.method public static posify(B)I
    .locals 0
    .param p0, "b"    # B

    .prologue
    .line 110
    if-ltz p0, :cond_0

    .line 113
    .end local p0    # "b":B
    :goto_0
    return p0

    .restart local p0    # "b":B
    :cond_0
    add-int/lit16 p0, p0, 0x100

    goto :goto_0
.end method

.method private static sswap([BII)V
    .locals 2
    .param p0, "S"    # [B
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 103
    aget-byte v0, p0, p1

    .line 104
    .local v0, "temp":B
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 105
    aput-byte v0, p0, p2

    .line 106
    return-void
.end method


# virtual methods
.method nextVal()B
    .locals 5

    .prologue
    .line 68
    iget v1, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    .line 69
    iget v1, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    iget-object v2, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    iget v3, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/xiaomi/push/service/RC4Cryption;->posify(B)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    .line 70
    iget-object v1, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    iget v2, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    iget v3, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    invoke-static {v1, v2, v3}, Lcom/xiaomi/push/service/RC4Cryption;->sswap([BII)V

    .line 71
    iget-object v1, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    iget-object v2, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    iget v3, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_i:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/xiaomi/push/service/RC4Cryption;->posify(B)I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/push/service/RC4Cryption;->S:[B

    iget v4, p0, Lcom/xiaomi/push/service/RC4Cryption;->the_j:I

    aget-byte v3, v3, v4

    invoke-static {v3}, Lcom/xiaomi/push/service/RC4Cryption;->posify(B)I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x100

    aget-byte v0, v1, v2

    .line 72
    .local v0, "value":B
    return v0
.end method
