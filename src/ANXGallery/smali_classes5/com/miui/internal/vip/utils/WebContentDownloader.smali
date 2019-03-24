.class public Lcom/miui/internal/vip/utils/WebContentDownloader;
.super Ljava/io/InputStream;
.source "WebContentDownloader.java"


# static fields
.field static final EXT_IMAGES:[Ljava/lang/String;

.field static final INTERVAL:J

.field static final MAX_RETRY_TIMES:I = 0x3

.field static final QUESTION_MARK:Ljava/lang/String; = "?"

.field static final TAG:Ljava/lang/String; = "WebContentDownloader"

.field public static final TIMEOUT_CONNECTION:I

.field public static final TIMEOUT_SOCKET:I

.field static final WAIT_TIME:J


# instance fields
.field mConn:Ljava/net/HttpURLConnection;

.field mFailed:Z

.field mIs:Ljava/io/InputStream;

.field mReadBytes:J

.field mRetryTimes:I

.field mUrl:Ljava/lang/String;

.field mWriter:Lcom/miui/internal/vip/utils/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 19
    const-string v0, ".jpg"

    const-string v1, ".jpeg"

    const-string v2, ".png"

    const-string v3, ".webp"

    const-string v4, ".bmp"

    const-string v5, ".mng"

    const-string v6, ".gif"

    const-string v7, ".apng"

    const-string v8, ".ico"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/WebContentDownloader;->EXT_IMAGES:[Ljava/lang/String;

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/internal/vip/utils/WebContentDownloader;->INTERVAL:J

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/internal/vip/utils/WebContentDownloader;->WAIT_TIME:J

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/miui/internal/vip/utils/WebContentDownloader;->TIMEOUT_CONNECTION:I

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/miui/internal/vip/utils/WebContentDownloader;->TIMEOUT_SOCKET:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mFailed:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mReadBytes:J

    .line 39
    iput-object p1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mUrl:Ljava/lang/String;

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/miui/internal/vip/utils/FileWriter;

    invoke-direct {v0, p2}, Lcom/miui/internal/vip/utils/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    .line 43
    :cond_0
    return-void
.end method

.method private disconnect()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    .line 152
    :cond_0
    return-void
.end method

.method static getExtName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, "index":I
    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "ext":Ljava/lang/String;
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 160
    .local v2, "qIndex":I
    if-lez v2, :cond_0

    .line 161
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_0
    return-object v1

    .line 166
    .end local v0    # "index":I
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "qIndex":I
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method static isImageFile(Ljava/lang/String;)Z
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .line 170
    invoke-static {p0}, Lcom/miui/internal/vip/utils/FileServerUtil;->isFileOnMarketServer(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 172
    return v1

    .line 174
    :cond_0
    invoke-static {p0}, Lcom/miui/internal/vip/utils/WebContentDownloader;->getExtName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "fileExt":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 176
    sget-object v2, Lcom/miui/internal/vip/utils/WebContentDownloader;->EXT_IMAGES:[Ljava/lang/String;

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 177
    .local v6, "ext":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 178
    return v1

    .line 176
    .end local v6    # "ext":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 182
    :cond_2
    return v3
.end method

.method private openConnection()V
    .locals 8

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "retryTimes":I
    const/4 v1, 0x0

    move v2, v0

    move-object v0, v1

    .line 118
    .local v0, "is":Ljava/io/InputStream;
    .local v2, "retryTimes":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 120
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 121
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    iput-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    .line 122
    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 124
    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    sget v6, Lcom/miui/internal/vip/utils/WebContentDownloader;->TIMEOUT_CONNECTION:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 125
    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    sget v6, Lcom/miui/internal/vip/utils/WebContentDownloader;->TIMEOUT_SOCKET:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 127
    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v0, v5

    .line 128
    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mConn:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Encoding"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "encoding":Ljava/lang/String;
    const-string v6, "gzip"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    goto :goto_1

    .line 132
    :cond_0
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    return-void

    .line 135
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 136
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "WebContentDownloaderopenConnection failed, %s, %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mUrl:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 138
    iget-object v3, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 139
    const/4 v0, 0x0

    .line 140
    iput-object v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    .line 141
    invoke-direct {p0}, Lcom/miui/internal/vip/utils/WebContentDownloader;->disconnect()V

    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 145
    :cond_1
    return-void
.end method

.method private openIfNeed()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/miui/internal/vip/utils/WebContentDownloader;->openConnection()V

    .line 48
    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mFailed:Z

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 99
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/internal/vip/utils/WebContentDownloader;->disconnect()V

    .line 100
    iget-object v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v1, v1, Lcom/miui/internal/vip/utils/FileWriter;->mFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mFailed:Z

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    iget-object v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-virtual {v1}, Lcom/miui/internal/vip/utils/FileWriter;->close()V

    .line 104
    :cond_0
    iput-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    .line 105
    iget-boolean v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mFailed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/internal/vip/utils/WebContentDownloader;->isImageFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "WebContentDownloaderInputStreamProxy.close, failed, image, mRetryTiems = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mRetryTimes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 110
    iput-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    .line 111
    nop

    .line 112
    return-void

    .line 109
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 110
    iput-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    throw v1
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/miui/internal/vip/utils/WebContentDownloader;->openIfNeed()V

    .line 56
    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 57
    goto :goto_0

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 61
    .local v0, "ch":I
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-virtual {v2, v0}, Lcom/miui/internal/vip/utils/FileWriter;->writeToFile(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_1
    return v0

    .line 65
    .end local v0    # "ch":I
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WebContentDownloader, InputStreamProxy.read failed, url = %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iput-boolean v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mFailed:Z

    .line 70
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/miui/internal/vip/utils/WebContentDownloader;->openIfNeed()V

    .line 77
    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 78
    goto :goto_1

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mIs:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 82
    .local v0, "size":I
    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mWriter:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-virtual {v2, p1, p2, v0}, Lcom/miui/internal/vip/utils/FileWriter;->writeToFile([BII)V

    .line 85
    :cond_1
    if-ltz v0, :cond_2

    iget-wide v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mReadBytes:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mReadBytes:J

    :goto_0
    iput-wide v2, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mReadBytes:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return v0

    .line 87
    .end local v0    # "size":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WebContentDownloader, InputStreamProxy.read buffer failed, url = %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iput-boolean v1, p0, Lcom/miui/internal/vip/utils/WebContentDownloader;->mFailed:Z

    .line 92
    const/4 v0, -0x1

    return v0
.end method
