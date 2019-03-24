.class public Lcom/miui/internal/log/appender/FileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileManager"

.field private static final gA:I = 0x7530

.field private static final gB:I = 0xa

.field private static final gy:Ljava/lang/String; = ".log"

.field private static final gz:I = 0x3e8


# instance fields
.field private gC:Ljava/io/FileOutputStream;

.field private gD:Ljava/io/OutputStreamWriter;

.field private gE:J

.field private gF:J

.field private gG:I

.field private gH:J

.field protected mLogFile:Ljava/io/File;

.field protected mLogName:Ljava/lang/String;

.field protected mLogRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/internal/log/appender/FileManager;->mLogRoot:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/miui/internal/log/appender/FileManager;->mLogName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private L()V
    .locals 6

    .line 116
    iget v0, p0, Lcom/miui/internal/log/appender/FileManager;->gG:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 118
    iget-wide v2, p0, Lcom/miui/internal/log/appender/FileManager;->gF:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 119
    iput-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->gF:J

    goto :goto_0

    .line 121
    :cond_0
    return-void

    .line 124
    :cond_1
    :goto_0
    iget v0, p0, Lcom/miui/internal/log/appender/FileManager;->gG:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/log/appender/FileManager;->gG:I

    .line 126
    invoke-virtual {p0}, Lcom/miui/internal/log/appender/FileManager;->onCreateLogFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    .line 127
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 129
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->gC:Ljava/io/FileOutputStream;

    .line 130
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/miui/internal/log/appender/FileManager;->gC:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->gD:Ljava/io/OutputStreamWriter;

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/log/appender/FileManager;->gG:I

    .line 132
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->gH:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to create writer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :cond_2
    :goto_1
    return-void
.end method

.method private M()V
    .locals 0

    .line 140
    invoke-virtual {p0}, Lcom/miui/internal/log/appender/FileManager;->close()V

    .line 141
    invoke-direct {p0}, Lcom/miui/internal/log/appender/FileManager;->L()V

    .line 142
    return-void
.end method

.method private m(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->gD:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->gD:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 102
    iget-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->gH:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->gH:J

    .line 103
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 106
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/internal/log/appender/FileManager;->gG:I

    .line 108
    iput-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->gC:Ljava/io/FileOutputStream;

    .line 109
    iget-object v1, p0, Lcom/miui/internal/log/appender/FileManager;->gD:Ljava/io/OutputStreamWriter;

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 110
    iput-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->gD:Ljava/io/OutputStreamWriter;

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->gH:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogExtension()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, ".log"

    return-object v0
.end method

.method public getLogFile()Ljava/io/File;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    return-object v0
.end method

.method public getLogName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogRoot()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getLogSize()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->gH:J

    return-wide v0
.end method

.method protected onBuildLogPath()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/log/appender/FileManager;->mLogRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/appender/FileManager;->mLogName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLogFile()Ljava/io/File;
    .locals 6

    .line 145
    invoke-virtual {p0}, Lcom/miui/internal/log/appender/FileManager;->onBuildLogPath()Ljava/lang/String;

    move-result-object v0

    .line 146
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 147
    const-string v0, "FileManager"

    const-string v2, "Fail to build log path"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v1

    .line 151
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 155
    const-string v0, "FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogDir is not a directory: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v1

    .line 159
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 160
    if-nez v4, :cond_2

    .line 162
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 163
    const-string v0, "FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to create directory: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-object v1

    .line 169
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_5

    .line 171
    const-string v2, "FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogFile is not a file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-object v1

    .line 176
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    .line 177
    if-nez v3, :cond_4

    .line 179
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 180
    const-string v2, "FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to create LogFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    return-object v1

    .line 187
    :cond_4
    nop

    .line 190
    :cond_5
    return-object v2

    .line 184
    :catch_0
    move-exception v2

    .line 185
    const-string v3, "FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to create LogFile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    return-object v1
.end method

.method public declared-synchronized write(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->gD:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/miui/internal/log/appender/FileManager;->L()V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->gD:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_1

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 67
    iget-wide v2, p0, Lcom/miui/internal/log/appender/FileManager;->gE:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 68
    iput-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->gE:J

    .line 69
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const-string v0, "FileManager"

    const-string v1, "Repair writer for log file is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0}, Lcom/miui/internal/log/appender/FileManager;->M()V

    .line 77
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->gD:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_2

    .line 78
    const-string p1, "FileManager"

    const-string v0, "Fail to append log for writer is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 81
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/miui/internal/log/appender/FileManager;->m(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 84
    :try_start_2
    const-string v1, "FileManager"

    const-string v2, "Retry to write log"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    invoke-direct {p0}, Lcom/miui/internal/log/appender/FileManager;->M()V

    .line 86
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->gD:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_3

    .line 87
    const-string p1, "FileManager"

    const-string v0, "Fail to append log for writer is null when retry"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 90
    :cond_3
    :try_start_3
    invoke-direct {p0, p1}, Lcom/miui/internal/log/appender/FileManager;->m(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    goto :goto_1

    .line 91
    :catch_1
    move-exception p1

    .line 92
    :try_start_4
    const-string v0, "FileManager"

    const-string v1, "Fail to append log for writer is null when retry"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    :goto_1
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
