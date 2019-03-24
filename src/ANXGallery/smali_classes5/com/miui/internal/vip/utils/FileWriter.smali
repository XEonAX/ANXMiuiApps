.class public Lcom/miui/internal/vip/utils/FileWriter;
.super Ljava/lang/Object;
.source "FileWriter.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CacheFileWriter"

.field static final TEMP:Ljava/lang/String; = ".temp"

.field private static final sThread:Ljava/util/concurrent/Executor;


# instance fields
.field mFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mFile:Ljava/io/File;

.field mOut:Ljava/io/OutputStream;

.field mRealPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    invoke-static {}, Lcom/miui/internal/vip/utils/RunnableHelper;->createSingleThreadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/FileWriter;->sThread:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter;->mFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    sget-object v0, Lcom/miui/internal/vip/utils/FileWriter;->sThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/internal/vip/utils/FileWriter$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/internal/vip/utils/FileWriter$1;-><init>(Lcom/miui/internal/vip/utils/FileWriter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 107
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-static {p0}, Lcom/miui/internal/vip/utils/FileWriter;->deleteNonDirectory(Ljava/io/File;)V

    .line 113
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 117
    .local v0, "subs":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 118
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 119
    .local v3, "sub":Ljava/io/File;
    invoke-static {v3}, Lcom/miui/internal/vip/utils/FileWriter;->deleteFile(Ljava/io/File;)V

    .line 118
    .end local v3    # "sub":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {p0}, Lcom/miui/internal/vip/utils/FileWriter;->deleteNonDirectory(Ljava/io/File;)V

    .line 123
    return-void

    .line 108
    .end local v0    # "subs":[Ljava/io/File;
    :cond_3
    :goto_1
    return-void
.end method

.method private static deleteNonDirectory(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .line 126
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 127
    .local v0, "suc":Z
    const-string v1, "CacheFileWriterdelete %s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "directory"

    goto :goto_0

    :cond_0
    const-string v3, "file"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    const-string v4, "suc"

    goto :goto_1

    :cond_1
    const-string v4, "failed"

    :goto_1
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 75
    sget-object v0, Lcom/miui/internal/vip/utils/FileWriter;->sThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/internal/vip/utils/FileWriter$4;

    invoke-direct {v1, p0}, Lcom/miui/internal/vip/utils/FileWriter$4;-><init>(Lcom/miui/internal/vip/utils/FileWriter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method closeOutputStream()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter;->mOut:Ljava/io/OutputStream;

    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter;->mOut:Ljava/io/OutputStream;

    .line 95
    return-void
.end method

.method onFileOperationError()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/FileWriter;->closeOutputStream()V

    .line 99
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/internal/vip/utils/FileWriter;->deleteFile(Ljava/io/File;)V

    .line 100
    return-void
.end method

.method public writeToFile(I)V
    .locals 2
    .param p1, "ch"    # I

    .line 41
    if-ltz p1, :cond_0

    .line 42
    sget-object v0, Lcom/miui/internal/vip/utils/FileWriter;->sThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/internal/vip/utils/FileWriter$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/internal/vip/utils/FileWriter$2;-><init>(Lcom/miui/internal/vip/utils/FileWriter;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    :cond_0
    return-void
.end method

.method public writeToFile([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "size"    # I

    .line 57
    if-lez p3, :cond_0

    .line 58
    new-array v0, p3, [B

    .line 59
    .local v0, "copyBuff":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    sget-object v1, Lcom/miui/internal/vip/utils/FileWriter;->sThread:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/miui/internal/vip/utils/FileWriter$3;

    invoke-direct {v2, p0, v0, p3}, Lcom/miui/internal/vip/utils/FileWriter$3;-><init>(Lcom/miui/internal/vip/utils/FileWriter;[BI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    .end local v0    # "copyBuff":[B
    :cond_0
    return-void
.end method
