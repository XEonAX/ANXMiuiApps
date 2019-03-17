.class public Lcom/xiaomi/mipush/sdk/CrashStorage;
.super Ljava/lang/Object;
.source "CrashStorage.java"


# static fields
.field private static final mCrashFileLock:Ljava/lang/Object;

.field private static volatile sInstance:Lcom/xiaomi/mipush/sdk/CrashStorage;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/CrashStorage;->mCrashFileLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/CrashStorage;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private getCrashFileBySummary(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "crashSummary"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/CrashStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/crash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "fileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_0
    :goto_0
    return-object v3

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 56
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 57
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    aget-object v3, v1, v2

    goto :goto_0

    .line 56
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/CrashStorage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/mipush/sdk/CrashStorage;->sInstance:Lcom/xiaomi/mipush/sdk/CrashStorage;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/xiaomi/mipush/sdk/CrashStorage;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/CrashStorage;->sInstance:Lcom/xiaomi/mipush/sdk/CrashStorage;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/xiaomi/mipush/sdk/CrashStorage;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/CrashStorage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/CrashStorage;->sInstance:Lcom/xiaomi/mipush/sdk/CrashStorage;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/CrashStorage;->sInstance:Lcom/xiaomi/mipush/sdk/CrashStorage;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAllCrashFile()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 70
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v4, "uploadingFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/CrashStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/crash"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "fileDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 92
    :cond_0
    return-object v4

    .line 77
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 79
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 80
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "crashFileNames":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 79
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_3
    aget-object v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v5, v7, :cond_2

    .line 88
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getCrashSummary(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    const-string v1, ""

    .line 146
    :goto_0
    return-object v1

    .line 142
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "fileNameSplited":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 144
    const-string v1, ""

    goto :goto_0

    .line 146
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public writeCrash2File(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    sget-object v7, Lcom/xiaomi/mipush/sdk/CrashStorage;->mCrashFileLock:Ljava/lang/Object;

    monitor-enter v7

    .line 108
    :try_start_0
    invoke-direct {p0, p2}, Lcom/xiaomi/mipush/sdk/CrashStorage;->getCrashFileBySummary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 109
    .local v0, "crashFile":Ljava/io/File;
    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "fileNameSplited":[Ljava/lang/String;
    array-length v6, v2

    const/4 v8, 0x2

    if-ge v6, v8, :cond_2

    .line 112
    monitor-exit v7

    goto :goto_0

    .line 130
    .end local v0    # "crashFile":Ljava/io/File;
    .end local v2    # "fileNameSplited":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 114
    .restart local v0    # "crashFile":Ljava/io/File;
    .restart local v2    # "fileNameSplited":[Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    :try_start_1
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 115
    .local v5, "times":I
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/xiaomi/mipush/sdk/CrashStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/crash"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 116
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 130
    .end local v2    # "fileNameSplited":[Ljava/lang/String;
    .end local v5    # "times":I
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :cond_3
    const/4 v3, 0x0

    .line 120
    .local v3, "output":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/xiaomi/mipush/sdk/CrashStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/crash"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .local v4, "output":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 123
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 127
    :try_start_4
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 124
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    :try_start_6
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    :goto_3
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 124
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
