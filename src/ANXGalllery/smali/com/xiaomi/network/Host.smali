.class public final Lcom/xiaomi/network/Host;
.super Ljava/lang/Object;
.source "Host.java"


# instance fields
.field private hostAddress:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/xiaomi/network/Host;->hostAddress:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/xiaomi/network/Host;->port:I

    .line 33
    return-void
.end method

.method public static from(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 4
    .param p0, "hostAddr"    # Ljava/lang/String;
    .param p1, "defaultPort"    # I

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/xiaomi/network/Host;->parse(Ljava/lang/String;I)Lcom/xiaomi/network/Host;

    move-result-object v0

    .line 64
    .local v0, "host":Lcom/xiaomi/network/Host;
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lcom/xiaomi/network/Host;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/network/Host;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public static parse(Ljava/lang/String;I)Lcom/xiaomi/network/Host;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "defaultPort"    # I

    .prologue
    .line 41
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 42
    .local v2, "pos":I
    move-object v0, p0

    .line 43
    .local v0, "hostAddress":Ljava/lang/String;
    move v1, p1

    .line 44
    .local v1, "port":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 45
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 47
    add-int/lit8 v3, v2, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 48
    if-gtz v1, :cond_0

    .line 49
    move v1, p1

    .line 54
    :cond_0
    :goto_0
    new-instance v3, Lcom/xiaomi/network/Host;

    invoke-direct {v3, v0, v1}, Lcom/xiaomi/network/Host;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 51
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/network/Host;->hostAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/xiaomi/network/Host;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/xiaomi/network/Host;->port:I

    if-lez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/network/Host;->hostAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/network/Host;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/network/Host;->hostAddress:Ljava/lang/String;

    goto :goto_0
.end method
