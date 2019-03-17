.class public Lcom/miui/gallery/net/download/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;,
        Lcom/miui/gallery/net/download/DownloadTask$CoreTask;
    }
.end annotation


# static fields
.field private static final RETRY_INTERVAL_MILLI:J


# instance fields
.field private mCoreTask:Lcom/miui/gallery/net/download/DownloadTask$CoreTask;

.field private mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/gallery/net/download/DownloadTask;->RETRY_INTERVAL_MILLI:J

    return-void
.end method

.method constructor <init>(Lcom/miui/gallery/net/download/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/miui/gallery/net/download/Request;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;-><init>(Lcom/miui/gallery/net/download/DownloadTask;Lcom/miui/gallery/net/download/Request;)V

    iput-object v0, p0, Lcom/miui/gallery/net/download/DownloadTask;->mCoreTask:Lcom/miui/gallery/net/download/DownloadTask$CoreTask;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/net/download/DownloadTask;Lcom/miui/gallery/net/download/Request;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/net/download/DownloadTask;
    .param p1, "x1"    # Lcom/miui/gallery/net/download/Request;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/miui/gallery/net/download/DownloadTask;->process(Lcom/miui/gallery/net/download/Request;)I

    move-result v0

    return v0
.end method

.method private configure(Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 189
    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 190
    const/16 v0, 0x3a98

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 195
    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private static getTempFile(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "dst"    # Ljava/io/File;

    .prologue
    .line 313
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isRetryState(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 345
    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static openOutputStream(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 364
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 365
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    const-string v4, "DownloadTask"

    const-string v5, "create folder failed"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_0
    return-object v3

    .line 370
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 371
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 372
    const-string v4, "DownloadTask"

    const-string v5, "output file is a directory"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    const-string v4, "DownloadTask"

    const-string v5, "output file will be overwritten"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_2
    invoke-static {p0}, Lcom/miui/gallery/net/download/DownloadTask;->getTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 380
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 381
    const-string v4, "DownloadTask"

    const-string/jumbo v5, "temp file exists, try delete"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 383
    const-string v4, "DownloadTask"

    const-string/jumbo v5, "temp file delete failed, will overwrite"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "DownloadTask"

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private performProgressUpdate([BI)V
    .locals 12
    .param p1, "buff"    # [B
    .param p2, "size"    # I

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 212
    iget-object v4, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    iget-wide v0, v4, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mDownloadSize:J

    .line 213
    .local v0, "downloadSize":J
    iget-object v4, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    iget-wide v6, v4, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mDownloadSize:J

    int-to-long v8, p2

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mDownloadSize:J

    .line 214
    iget-object v4, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    iget-object v4, v4, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mDigest:Ljava/security/MessageDigest;

    if-eqz v4, :cond_0

    .line 215
    iget-object v4, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    iget-object v4, v4, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mDigest:Ljava/security/MessageDigest;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    iget-wide v4, v4, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mContentLength:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 219
    iget-object v4, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    iget-wide v4, v4, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mDownloadSize:J

    long-to-double v4, v4

    iget-object v6, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    iget-wide v6, v6, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mContentLength:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-int v2, v4

    .line 220
    .local v2, "percent":I
    long-to-double v4, v0

    iget-object v6, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    iget-wide v6, v6, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mContentLength:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-int v3, v4

    .line 221
    .local v3, "prePercent":I
    if-eq v3, v2, :cond_1

    .line 222
    iget-object v4, p0, Lcom/miui/gallery/net/download/DownloadTask;->mCoreTask:Lcom/miui/gallery/net/download/DownloadTask$CoreTask;

    invoke-virtual {v4, v2}, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->publishProgress(I)V

    .line 225
    .end local v2    # "percent":I
    .end local v3    # "prePercent":I
    :cond_1
    return-void
.end method

.method private postProcess(I)I
    .locals 5
    .param p1, "code"    # I

    .prologue
    const/16 v2, 0x9

    .line 238
    if-eqz p1, :cond_1

    .line 239
    iget-object v2, p0, Lcom/miui/gallery/net/download/DownloadTask;->mCoreTask:Lcom/miui/gallery/net/download/DownloadTask$CoreTask;

    iget-object v2, v2, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->mRequest:Lcom/miui/gallery/net/download/Request;

    invoke-virtual {v2}, Lcom/miui/gallery/net/download/Request;->getDestination()Ljava/io/File;

    move-result-object v0

    .line 240
    .local v0, "dst":Ljava/io/File;
    invoke-static {v0}, Lcom/miui/gallery/net/download/DownloadTask;->getTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 241
    .local v1, "tmpFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    const-string v2, "DownloadTask"

    const-string v3, "delete tmp file failed %s"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    .end local p1    # "code":I
    :cond_0
    :goto_0
    return p1

    .line 245
    .end local v0    # "dst":Ljava/io/File;
    .end local v1    # "tmpFile":Ljava/io/File;
    .restart local p1    # "code":I
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/net/download/DownloadTask;->mCoreTask:Lcom/miui/gallery/net/download/DownloadTask$CoreTask;

    iget-object v3, v3, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->mRequest:Lcom/miui/gallery/net/download/Request;

    invoke-virtual {v3}, Lcom/miui/gallery/net/download/Request;->getDestination()Ljava/io/File;

    move-result-object v0

    .line 246
    .restart local v0    # "dst":Ljava/io/File;
    invoke-static {v0}, Lcom/miui/gallery/net/download/DownloadTask;->getTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 247
    .restart local v1    # "tmpFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 248
    const-string v3, "DownloadTask"

    const-string v4, "downloaded file missing"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    .line 249
    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 251
    const-string v3, "DownloadTask"

    const-string v4, "downloaded file rename failed"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    .line 252
    goto :goto_0

    .line 254
    :cond_3
    const-string v2, "DownloadTask"

    const-string v3, "rename tmp file success"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postTransferContent()I
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/gallery/net/download/DownloadTask;->mCoreTask:Lcom/miui/gallery/net/download/DownloadTask$CoreTask;

    iget-object v0, v0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->mRequest:Lcom/miui/gallery/net/download/Request;

    invoke-virtual {v0}, Lcom/miui/gallery/net/download/Request;->getVerifier()Lcom/miui/gallery/net/download/Verifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/net/download/DownloadTask;->mCoreTask:Lcom/miui/gallery/net/download/DownloadTask$CoreTask;

    iget-object v0, v0, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->mRequest:Lcom/miui/gallery/net/download/Request;

    invoke-virtual {v0}, Lcom/miui/gallery/net/download/Request;->getVerifier()Lcom/miui/gallery/net/download/Verifier;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    iget-object v1, v1, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/net/download/Verifier;->verify([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    const-string v0, "DownloadTask"

    const-string/jumbo v1, "verify success"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    .line 232
    :cond_1
    const-string v0, "DownloadTask"

    const-string/jumbo v1, "verify fail"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private preProcess(Lcom/miui/gallery/net/download/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/miui/gallery/net/download/Request;

    .prologue
    .line 102
    new-instance v1, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;-><init>(Lcom/miui/gallery/net/download/DownloadTask$1;)V

    iput-object v1, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    .line 104
    invoke-virtual {p1}, Lcom/miui/gallery/net/download/Request;->getListener()Lcom/miui/gallery/net/download/Request$Listener;

    move-result-object v0

    .line 105
    .local v0, "listener":Lcom/miui/gallery/net/download/Request$Listener;
    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/net/download/DownloadTask$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/net/download/DownloadTask$1;-><init>(Lcom/miui/gallery/net/download/DownloadTask;Lcom/miui/gallery/net/download/Request;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 116
    :cond_0
    return-void
.end method

.method private preTransferContent(Lcom/miui/gallery/net/download/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/miui/gallery/net/download/Request;

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/miui/gallery/net/download/Request;->getVerifier()Lcom/miui/gallery/net/download/Verifier;

    move-result-object v0

    .line 205
    .local v0, "verifier":Lcom/miui/gallery/net/download/Verifier;
    if-eqz v0, :cond_0

    .line 206
    const-string v1, "DownloadTask"

    const-string v2, "need verify, try to get MessageDigest"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/net/download/Verifier;->getInstance()Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mDigest:Ljava/security/MessageDigest;

    .line 209
    :cond_0
    return-void
.end method

.method private process(Lcom/miui/gallery/net/download/Request;)I
    .locals 8
    .param p1, "request"    # Lcom/miui/gallery/net/download/Request;

    .prologue
    .line 76
    const-string v4, "DownloadTask"

    const-string/jumbo v5, "start to download request[%s, %s]"

    invoke-virtual {p1}, Lcom/miui/gallery/net/download/Request;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/gallery/net/download/Request;->getDestination()Ljava/io/File;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/miui/gallery/net/download/DownloadTask;->preProcess(Lcom/miui/gallery/net/download/Request;)V

    .line 78
    invoke-virtual {p1}, Lcom/miui/gallery/net/download/Request;->getMaxRetryTimes()I

    move-result v3

    .line 79
    .local v3, "maxRetry":I
    const/4 v2, 0x0

    .line 82
    .local v2, "i":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/net/download/DownloadTask;->tryDownload(Lcom/miui/gallery/net/download/Request;)I

    move-result v0

    .line 83
    .local v0, "code":I
    invoke-static {v0}, Lcom/miui/gallery/net/download/DownloadTask;->isRetryState(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    const-string v4, "DownloadTask"

    const-string v5, "retry for %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :try_start_0
    sget-wide v4, Lcom/miui/gallery/net/download/DownloadTask;->RETRY_INTERVAL_MILLI:J

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    if-le v2, v3, :cond_0

    .line 98
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/net/download/DownloadTask;->postProcess(I)I

    move-result v4

    return v4

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x5

    .line 89
    goto :goto_0
.end method

.method private processHeader(Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mContentLength:J

    .line 200
    const-string v0, "DownloadTask"

    const-string v1, "content length: %d"

    iget-object v2, p0, Lcom/miui/gallery/net/download/DownloadTask;->mTaskInfo:Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;

    iget-wide v2, v2, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;->mContentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method private static translateErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 349
    packed-switch p0, :pswitch_data_0

    .line 359
    const/16 v0, 0xb

    :goto_0
    return v0

    .line 351
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 355
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 357
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static translateResponseCode(I)I
    .locals 6
    .param p0, "code"    # I

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x7

    .line 318
    const/16 v3, 0xc8

    if-eq p0, v3, :cond_5

    .line 319
    const-string v3, "DownloadTask"

    const-string v4, "processing http code %d"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    div-int/lit8 v0, p0, 0x64

    .line 321
    .local v0, "cat":I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 340
    .end local v0    # "cat":I
    :cond_0
    :goto_0
    return v1

    .line 323
    .restart local v0    # "cat":I
    :cond_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 324
    const/16 v3, 0x198

    if-ne p0, v3, :cond_0

    move v1, v2

    .line 325
    goto :goto_0

    .line 328
    :cond_2
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 329
    const/16 v1, 0x1f8

    if-ne p0, v1, :cond_3

    move v1, v2

    .line 330
    goto :goto_0

    .line 332
    :cond_3
    const/16 v1, 0x8

    goto :goto_0

    .line 333
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 339
    .end local v0    # "cat":I
    :cond_5
    const-string v1, "DownloadTask"

    const-string v2, "http status is ok"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tryDownload(Lcom/miui/gallery/net/download/Request;)I
    .locals 11
    .param p1, "request"    # Lcom/miui/gallery/net/download/Request;

    .prologue
    const/4 v10, -0x1

    .line 119
    invoke-virtual {p1}, Lcom/miui/gallery/net/download/Request;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1}, Lcom/miui/gallery/net/download/Request;->getNetworkType()I

    move-result v9

    invoke-static {v8, v9}, Lcom/miui/gallery/net/download/ConnectionController;->open(Landroid/net/Uri;I)Lcom/miui/gallery/net/download/ConnectionController$Holder;

    move-result-object v7

    .line 120
    .local v7, "ret":Lcom/miui/gallery/net/download/ConnectionController$Holder;, "Lcom/miui/gallery/net/download/ConnectionController$Holder<Ljava/net/HttpURLConnection;>;"
    iget-object v2, v7, Lcom/miui/gallery/net/download/ConnectionController$Holder;->value:Ljava/lang/Object;

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 121
    .local v2, "conn":Ljava/net/HttpURLConnection;
    if-nez v2, :cond_1

    .line 122
    const-string v8, "DownloadTask"

    const-string v9, "open connection failed"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget v8, v7, Lcom/miui/gallery/net/download/ConnectionController$Holder;->reason:I

    invoke-static {v8}, Lcom/miui/gallery/net/download/DownloadTask;->translateErrorCode(I)I

    move-result v6

    .line 183
    :cond_0
    :goto_0
    return v6

    .line 126
    :cond_1
    const/4 v4, 0x0

    .line 127
    .local v4, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 129
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-direct {p0, v2}, Lcom/miui/gallery/net/download/DownloadTask;->configure(Ljava/net/HttpURLConnection;)V

    .line 130
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 132
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-static {v8}, Lcom/miui/gallery/net/download/DownloadTask;->translateResponseCode(I)I

    move-result v6

    .line 133
    .local v6, "result":I
    if-eqz v6, :cond_3

    .line 134
    const-string v8, "DownloadTask"

    const-string v9, "response code not valid"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    if-eqz v4, :cond_2

    .line 172
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :cond_2
    :goto_1
    if-eqz v5, :cond_0

    .line 180
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v3

    .line 182
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "DownloadTask"

    invoke-static {v8, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 174
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "DownloadTask"

    invoke-static {v8, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 138
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    invoke-direct {p0, v2}, Lcom/miui/gallery/net/download/DownloadTask;->processHeader(Ljava/net/HttpURLConnection;)V

    .line 140
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 141
    invoke-virtual {p1}, Lcom/miui/gallery/net/download/Request;->getDestination()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/gallery/net/download/DownloadTask;->openOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v5

    .line 143
    if-nez v5, :cond_5

    .line 144
    const-string v8, "DownloadTask"

    const-string v9, "open output stream failed"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    const/4 v6, 0x4

    .line 169
    .end local v6    # "result":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    if-eqz v4, :cond_4

    .line 172
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 178
    :cond_4
    :goto_2
    if-eqz v5, :cond_0

    .line 180
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 181
    :catch_2
    move-exception v3

    .line 182
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "DownloadTask"

    invoke-static {v8, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 174
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "DownloadTask"

    invoke-static {v8, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 148
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "result":I
    :cond_5
    :try_start_6
    invoke-direct {p0, p1}, Lcom/miui/gallery/net/download/DownloadTask;->preTransferContent(Lcom/miui/gallery/net/download/Request;)V

    .line 149
    const-string v8, "DownloadTask"

    const-string/jumbo v9, "start to transfer data"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "bytesRead":I
    const/16 v8, 0x2000

    new-array v0, v8, [B

    .line 153
    .local v0, "buffer":[B
    :goto_3
    iget-object v8, p0, Lcom/miui/gallery/net/download/DownloadTask;->mCoreTask:Lcom/miui/gallery/net/download/DownloadTask$CoreTask;

    invoke-virtual {v8}, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v10, :cond_7

    .line 154
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/net/download/DownloadTask;->performProgressUpdate([BI)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 165
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v6    # "result":I
    :catch_4
    move-exception v3

    .line 166
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_7
    const-string v8, "DownloadTask"

    const-string/jumbo v9, "tryDownload occur error."

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 167
    const/16 v6, 0xb

    .line 169
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    if-eqz v4, :cond_6

    .line 172
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 178
    :cond_6
    :goto_4
    if-eqz v5, :cond_0

    .line 180
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 181
    :catch_5
    move-exception v3

    .line 182
    const-string v8, "DownloadTask"

    invoke-static {v8, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 158
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v6    # "result":I
    :cond_7
    if-ne v1, v10, :cond_9

    .line 159
    :try_start_a
    const-string v8, "DownloadTask"

    const-string v9, "download success"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/miui/gallery/net/download/DownloadTask;->postTransferContent()I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v6

    .line 169
    .end local v6    # "result":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    if-eqz v4, :cond_8

    .line 172
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 178
    :cond_8
    :goto_5
    if-eqz v5, :cond_0

    .line 180
    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_0

    .line 181
    :catch_6
    move-exception v3

    .line 182
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "DownloadTask"

    invoke-static {v8, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 173
    .end local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 174
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "DownloadTask"

    invoke-static {v8, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 162
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "result":I
    :cond_9
    :try_start_d
    const-string v8, "DownloadTask"

    const-string v9, "cancelled, during download"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 163
    const/4 v6, 0x5

    .line 169
    .end local v6    # "result":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    if-eqz v4, :cond_a

    .line 172
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 178
    :cond_a
    :goto_6
    if-eqz v5, :cond_0

    .line 180
    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_0

    .line 181
    :catch_8
    move-exception v3

    .line 182
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "DownloadTask"

    invoke-static {v8, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 173
    .end local v3    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 174
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "DownloadTask"

    invoke-static {v8, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 173
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_a
    move-exception v3

    .line 174
    const-string v8, "DownloadTask"

    invoke-static {v8, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 169
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    if-eqz v4, :cond_b

    .line 172
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 178
    :cond_b
    :goto_7
    if-eqz v5, :cond_c

    .line 180
    :try_start_11
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    .line 183
    :cond_c
    :goto_8
    throw v8

    .line 173
    :catch_b
    move-exception v3

    .line 174
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v9, "DownloadTask"

    invoke-static {v9, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 181
    .end local v3    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v3

    .line 182
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v9, "DownloadTask"

    invoke-static {v9, v3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method


# virtual methods
.method cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/net/download/DownloadTask;->mCoreTask:Lcom/miui/gallery/net/download/DownloadTask$CoreTask;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method execute(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/net/download/DownloadTask;->mCoreTask:Lcom/miui/gallery/net/download/DownloadTask$CoreTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method isDone()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/net/download/DownloadTask;->mCoreTask:Lcom/miui/gallery/net/download/DownloadTask$CoreTask;

    invoke-virtual {v0}, Lcom/miui/gallery/net/download/DownloadTask$CoreTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
