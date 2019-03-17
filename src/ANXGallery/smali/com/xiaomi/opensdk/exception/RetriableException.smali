.class public Lcom/xiaomi/opensdk/exception/RetriableException;
.super Ljava/lang/Exception;
.source "RetriableException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final ERRORCODE_NOT_DEFINE:I

.field private final mDescription:Ljava/lang/String;

.field private mErrorCode:I

.field private final mRetrytime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "retryTime"    # J

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 23
    iput v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->ERRORCODE_NOT_DEFINE:I

    .line 25
    iput v0, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mErrorCode:I

    .line 38
    iput-object p1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    .line 39
    iput-wide p2, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mRetrytime:J

    .line 40
    return-void
.end method

.method public static isRetriableException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    instance-of v0, p0, Ljava/net/ConnectException;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retry after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/opensdk/exception/RetriableException;->mRetrytime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    return-object v0
.end method
