.class public Lcom/xiaomi/micloudsdk/exception/CloudServerException;
.super Lcom/xiaomi/opensdk/exception/ServerException;
.source "CloudServerException.java"


# instance fields
.field public code:I

.field public retryTime:I

.field public serverDate:J

.field public statusCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "statusCode"    # I

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;)V

    .line 77
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 78
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "code"    # I

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;)V

    .line 92
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 93
    iput p2, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    .line 94
    const v0, 0x7fffffff

    iput v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    .line 95
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "code"    # I
    .param p3, "retryTime"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;)V

    .line 99
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 100
    iput p2, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    .line 101
    mul-int/lit16 v0, p3, 0x3e8

    iput v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    .line 102
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;)V

    .line 82
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 83
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 73
    return-void
.end method

.method public constructor <init>(ILorg/apache/http/HttpResponse;)V
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "resp"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/xiaomi/opensdk/exception/ServerException;-><init>(Ljava/lang/String;)V

    .line 122
    iput p1, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 124
    if-eqz p2, :cond_1

    .line 125
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0x1f7

    if-ne v4, v5, :cond_0

    .line 126
    const-string v4, "Retry-After"

    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 127
    .local v3, "header":Lorg/apache/http/Header;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    .line 131
    .end local v3    # "header":Lorg/apache/http/Header;
    :cond_0
    const-string v4, "Date"

    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 132
    .restart local v3    # "header":Lorg/apache/http/Header;
    if-eqz v3, :cond_1

    .line 133
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 134
    .local v1, "dateString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 136
    :try_start_1
    invoke-static {v1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 137
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->serverDate:J
    :try_end_1
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateString":Ljava/lang/String;
    .end local v3    # "header":Lorg/apache/http/Header;
    :cond_1
    :goto_0
    return-void

    .line 138
    .restart local v1    # "dateString":Ljava/lang/String;
    .restart local v3    # "header":Lorg/apache/http/Header;
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Lorg/apache/http/impl/cookie/DateParseException;
    :try_start_2
    const-string v4, "CloudServerException"

    const-string v5, "Error parsing server date"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 144
    .end local v1    # "dateString":Ljava/lang/String;
    .end local v2    # "e":Lorg/apache/http/impl/cookie/DateParseException;
    .end local v3    # "header":Lorg/apache/http/Header;
    :catch_1
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v4, "CloudServerException"

    const-string v5, "Can\'t find retry time in 503 HttpURLConnection response"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isMiCloudServerException(I)Z
    .locals 2
    .param p0, "statusCode"    # I

    .prologue
    .line 166
    const/16 v0, 0x190

    if-eq p0, v0, :cond_0

    const/16 v0, 0x191

    if-eq p0, v0, :cond_0

    const/16 v0, 0x193

    if-eq p0, v0, :cond_0

    const/16 v0, 0x196

    if-eq p0, v0, :cond_0

    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get5xxServerExceptionRetryTime()J
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_0

    .line 179
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    if-lez v0, :cond_0

    .line 180
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    int-to-long v0, v0

    .line 183
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    return v0
.end method

.method public is5xxServerException()Z
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
