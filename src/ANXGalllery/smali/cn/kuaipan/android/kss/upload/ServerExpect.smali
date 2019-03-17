.class public Lcn/kuaipan/android/kss/upload/ServerExpect;
.super Ljava/lang/Object;
.source "ServerExpect.java"

# interfaces
.implements Lcn/kuaipan/android/kss/KssDef;


# instance fields
.field public factoryMode:Z

.field public nextChunkSize:J

.field public uploadDelay:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->factoryMode:Z

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->uploadDelay:I

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->nextChunkSize:J

    return-void
.end method

.method private static getInt(Lorg/apache/http/Header;)I
    .locals 5
    .param p0, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, -0x1

    .line 75
    :goto_0
    return v0

    .line 69
    :cond_0
    const/4 v0, -0x1

    .line 71
    .local v0, "result":I
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "t":Ljava/lang/NumberFormatException;
    const-string v2, "ServerExpect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parser header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getServerExpect(Lcn/kuaipan/android/http/KscHttpResponse;)Lcn/kuaipan/android/kss/upload/ServerExpect;
    .locals 8
    .param p0, "kscResp"    # Lcn/kuaipan/android/http/KscHttpResponse;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 24
    if-nez p0, :cond_0

    move-object v2, v5

    .line 25
    .local v2, "resp":Lorg/apache/http/HttpResponse;
    :goto_0
    if-nez v2, :cond_1

    .line 48
    :goto_1
    return-object v5

    .line 24
    .end local v2    # "resp":Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-virtual {p0}, Lcn/kuaipan/android/http/KscHttpResponse;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto :goto_0

    .line 29
    .restart local v2    # "resp":Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v0, 0x0

    .line 30
    .local v0, "hasExpect":Z
    new-instance v3, Lcn/kuaipan/android/kss/upload/ServerExpect;

    invoke-direct {v3}, Lcn/kuaipan/android/kss/upload/ServerExpect;-><init>()V

    .line 32
    .local v3, "result":Lcn/kuaipan/android/kss/upload/ServerExpect;
    const-string v6, "X-Factory-Mode"

    invoke-interface {v2, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 33
    .local v1, "header":Lorg/apache/http/Header;
    if-eqz v1, :cond_2

    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {v1}, Lcn/kuaipan/android/kss/upload/ServerExpect;->getInt(Lorg/apache/http/Header;)I

    move-result v6

    if-ne v6, v4, :cond_5

    :goto_2
    iput-boolean v4, v3, Lcn/kuaipan/android/kss/upload/ServerExpect;->factoryMode:Z

    .line 37
    :cond_2
    const-string v4, "X-Upload-Delay"

    invoke-interface {v2, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-static {v1}, Lcn/kuaipan/android/kss/upload/ServerExpect;->getInt(Lorg/apache/http/Header;)I

    move-result v4

    iput v4, v3, Lcn/kuaipan/android/kss/upload/ServerExpect;->uploadDelay:I

    .line 42
    :cond_3
    const-string v4, "X-Next-Chunk-Size"

    invoke-interface {v2, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-static {v1}, Lcn/kuaipan/android/kss/upload/ServerExpect;->getInt(Lorg/apache/http/Header;)I

    move-result v4

    int-to-long v6, v4

    iput-wide v6, v3, Lcn/kuaipan/android/kss/upload/ServerExpect;->nextChunkSize:J

    .line 48
    :cond_4
    if-eqz v0, :cond_6

    .end local v3    # "result":Lcn/kuaipan/android/kss/upload/ServerExpect;
    :goto_3
    move-object v5, v3

    goto :goto_1

    .line 35
    .restart local v3    # "result":Lcn/kuaipan/android/kss/upload/ServerExpect;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    move-object v3, v5

    .line 48
    goto :goto_3
.end method


# virtual methods
.method public validate()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x10000

    .line 52
    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->nextChunkSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 53
    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->nextChunkSize:J

    iget-wide v2, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->nextChunkSize:J

    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->nextChunkSize:J

    .line 54
    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->nextChunkSize:J

    sget-wide v2, Lcn/kuaipan/android/kss/upload/ServerExpect;->MAX_CHUNKSIZE:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->nextChunkSize:J

    .line 55
    iget-wide v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->nextChunkSize:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->nextChunkSize:J

    .line 58
    :cond_0
    iget v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->uploadDelay:I

    if-lez v0, :cond_1

    .line 59
    iget-boolean v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->factoryMode:Z

    if-nez v0, :cond_1

    .line 60
    iget v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->uploadDelay:I

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/kuaipan/android/kss/upload/ServerExpect;->uploadDelay:I

    .line 63
    :cond_1
    return-void
.end method
