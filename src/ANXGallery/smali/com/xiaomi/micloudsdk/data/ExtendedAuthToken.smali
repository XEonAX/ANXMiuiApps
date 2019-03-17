.class public final Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
.super Ljava/lang/Object;
.source "ExtendedAuthToken.java"


# instance fields
.field public final authToken:Ljava/lang/String;

.field public final security:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "authToken"    # Ljava/lang/String;
    .param p2, "security"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    .locals 6
    .param p0, "plain"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-object v1

    .line 31
    :cond_1
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v0, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    new-instance v1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 48
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 53
    .local v0, "that":Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 55
    goto :goto_0

    .line 53
    :cond_5
    iget-object v3, v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 57
    :cond_6
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 59
    goto :goto_0

    .line 57
    :cond_7
    iget-object v3, v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 68
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 69
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public toPlain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
