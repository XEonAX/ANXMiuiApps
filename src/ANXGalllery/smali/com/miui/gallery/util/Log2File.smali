.class public Lcom/miui/gallery/util/Log2File;
.super Ljava/lang/Object;
.source "Log2File.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/Log2File$SingletonHolder;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_FEATURE_OPEN_PATH:Ljava/lang/String;

.field private static final TIME_FORMAT:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCanLog:Z

.field private mOut:Ljava/io/BufferedWriter;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/miui/gallery/util/Log2File$1;

    invoke-direct {v0}, Lcom/miui/gallery/util/Log2File$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/Log2File;->TIME_FORMAT:Lmiui/util/SoftReferenceSingleton;

    .line 28
    new-instance v0, Lcom/miui/gallery/util/Log2File$2;

    invoke-direct {v0}, Lcom/miui/gallery/util/Log2File$2;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/Log2File;->DATE_FORMAT:Lmiui/util/SoftReferenceSingleton;

    .line 40
    const-string v0, "MIUI/Gallery/cloud/openlog"

    .line 41
    invoke-static {v0}, Lcom/miui/gallery/util/StorageUtils;->getPathInPrimaryStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/Log2File;->LOG_FEATURE_OPEN_PATH:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/util/Log2File;->mCanLog:Z

    .line 47
    sget-boolean v0, Lcom/miui/os/Rom;->IS_ALPHA:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/gallery/util/Log2File;->LOG_FEATURE_OPEN_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/util/Log2File;->mCanLog:Z

    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/util/Log2File;->initialWriter()V

    .line 51
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/Log2File$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/util/Log2File$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/util/Log2File;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/util/Log2File;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/miui/gallery/util/Log2File$SingletonHolder;->access$100()Lcom/miui/gallery/util/Log2File;

    move-result-object v0

    return-object v0
.end method

.method private initialWriter()V
    .locals 8

    .prologue
    .line 54
    iget-boolean v4, p0, Lcom/miui/gallery/util/Log2File;->mCanLog:Z

    if-eqz v4, :cond_0

    .line 55
    sget-object v4, Lcom/miui/gallery/util/Log2File;->DATE_FORMAT:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v4}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 56
    .local v2, "format":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "fileName":Ljava/lang/String;
    const-string v4, "MIUI/Gallery/cloud"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_gallery_log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {v4, v5}, Lcom/miui/gallery/util/FileUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {v4}, Lcom/miui/gallery/util/StorageUtils;->getPathInPrimaryStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "path":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v4, p0, Lcom/miui/gallery/util/Log2File;->mOut:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 63
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    throw v4
.end method


# virtual methods
.method public canLog()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/miui/gallery/util/Log2File;->mCanLog:Z

    return v0
.end method

.method public declared-synchronized flushLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/miui/gallery/util/Log2File;->mCanLog:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mOut:Ljava/io/BufferedWriter;

    if-nez v3, :cond_2

    .line 92
    invoke-direct {p0}, Lcom/miui/gallery/util/Log2File;->initialWriter()V

    .line 94
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mOut:Ljava/io/BufferedWriter;

    if-eqz v3, :cond_0

    .line 98
    sget-object v3, Lcom/miui/gallery/util/Log2File;->TIME_FORMAT:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v3}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 99
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "time":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    if-eqz p3, :cond_3

    .line 110
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mOut:Ljava/io/BufferedWriter;

    if-eqz v3, :cond_4

    .line 117
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mOut:Ljava/io/BufferedWriter;

    iget-object v4, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mOut:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :cond_4
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/miui/gallery/util/Log2File;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 88
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    .end local v2    # "time":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 120
    .restart local v1    # "format":Ljava/text/SimpleDateFormat;
    .restart local v2    # "time":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
