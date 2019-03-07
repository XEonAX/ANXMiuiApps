.class public Lcom/xiaomi/analytics/internal/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, ""

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMd5([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 27
    const-string v2, ""

    .line 28
    .local v2, "hashString":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 30
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 31
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 32
    new-instance v1, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 33
    .local v1, "hashInt":Ljava/math/BigInteger;
    const-string v3, "%1$032X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 37
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hashInt":Ljava/math/BigInteger;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 34
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static list2Array(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 18
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 19
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method
