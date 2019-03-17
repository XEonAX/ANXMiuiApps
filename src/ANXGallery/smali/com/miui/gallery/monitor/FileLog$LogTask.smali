.class Lcom/miui/gallery/monitor/FileLog$LogTask;
.super Ljava/lang/Thread;
.source "FileLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/monitor/FileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private final mLogPath:Ljava/lang/String;

.field private mWriter:Ljava/io/BufferedWriter;

.field final synthetic this$0:Lcom/miui/gallery/monitor/FileLog;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/monitor/FileLog;Ljava/lang/String;)V
    .locals 1
    .param p2, "logPath"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->this$0:Lcom/miui/gallery/monitor/FileLog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mActive:Z

    .line 53
    iput-object p2, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mLogPath:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private getDefaultLogPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 57
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy_MM_dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "format":Ljava/text/SimpleDateFormat;
    const-string v2, "blog_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLogPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mLogPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/monitor/FileLog$LogTask;->getDefaultLogPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mLogPath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public active()V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 82
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lcom/miui/gallery/monitor/FileLog$LogTask;->getLogPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mWriter:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mWriter:Ljava/io/BufferedWriter;

    if-eqz v4, :cond_0

    .line 89
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mActive:Z

    if-eqz v4, :cond_5

    .line 91
    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->this$0:Lcom/miui/gallery/monitor/FileLog;

    invoke-static {v4}, Lcom/miui/gallery/monitor/FileLog;->access$000(Lcom/miui/gallery/monitor/FileLog;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :try_start_2
    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->this$0:Lcom/miui/gallery/monitor/FileLog;

    invoke-static {v4}, Lcom/miui/gallery/monitor/FileLog;->access$100(Lcom/miui/gallery/monitor/FileLog;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->this$0:Lcom/miui/gallery/monitor/FileLog;

    invoke-static {v4}, Lcom/miui/gallery/monitor/FileLog;->access$200(Lcom/miui/gallery/monitor/FileLog;)Ljava/util/LinkedList;

    move-result-object v0

    .line 93
    .local v0, "activeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_2
    const-string v4, "FileLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "write active cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->this$0:Lcom/miui/gallery/monitor/FileLog;

    invoke-static {v7}, Lcom/miui/gallery/monitor/FileLog;->access$100(Lcom/miui/gallery/monitor/FileLog;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->this$0:Lcom/miui/gallery/monitor/FileLog;

    iget-object v6, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->this$0:Lcom/miui/gallery/monitor/FileLog;

    invoke-static {v6}, Lcom/miui/gallery/monitor/FileLog;->access$100(Lcom/miui/gallery/monitor/FileLog;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcom/miui/gallery/monitor/FileLog;->access$102(Lcom/miui/gallery/monitor/FileLog;I)I

    .line 95
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :try_start_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    .local v2, "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v5, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 98
    iget-object v5, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mWriter:Ljava/io/BufferedWriter;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 110
    .end local v0    # "activeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 111
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    :try_start_5
    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 115
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mWriter:Ljava/io/BufferedWriter;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 121
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_4
    return-void

    .line 83
    :catch_1
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    iput-object v9, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mWriter:Ljava/io/BufferedWriter;

    .line 85
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_6
    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->this$0:Lcom/miui/gallery/monitor/FileLog;

    invoke-static {v4}, Lcom/miui/gallery/monitor/FileLog;->access$300(Lcom/miui/gallery/monitor/FileLog;)Ljava/util/LinkedList;

    move-result-object v0

    goto :goto_2

    .line 95
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 113
    :catchall_1
    move-exception v4

    .line 114
    :try_start_8
    iget-object v5, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 115
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mWriter:Ljava/io/BufferedWriter;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 118
    :goto_5
    throw v4

    .line 100
    .restart local v0    # "activeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_2
    :try_start_9
    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 101
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 102
    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->this$0:Lcom/miui/gallery/monitor/FileLog;

    invoke-static {v4}, Lcom/miui/gallery/monitor/FileLog;->access$100(Lcom/miui/gallery/monitor/FileLog;)I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->this$0:Lcom/miui/gallery/monitor/FileLog;

    invoke-static {v4}, Lcom/miui/gallery/monitor/FileLog;->access$200(Lcom/miui/gallery/monitor/FileLog;)Ljava/util/LinkedList;

    move-result-object v0

    .line 103
    :goto_6
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 104
    :goto_7
    :try_start_a
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-gtz v4, :cond_4

    .line 105
    const-string v4, "FileLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wait cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->this$0:Lcom/miui/gallery/monitor/FileLog;

    invoke-static {v6}, Lcom/miui/gallery/monitor/FileLog;->access$100(Lcom/miui/gallery/monitor/FileLog;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_7

    .line 108
    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v4

    .line 102
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->this$0:Lcom/miui/gallery/monitor/FileLog;

    invoke-static {v4}, Lcom/miui/gallery/monitor/FileLog;->access$300(Lcom/miui/gallery/monitor/FileLog;)Ljava/util/LinkedList;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v0

    goto :goto_6

    .line 108
    :cond_4
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_1

    .line 114
    .end local v0    # "activeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_5
    :try_start_d
    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 115
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/gallery/monitor/FileLog$LogTask;->mWriter:Ljava/io/BufferedWriter;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    .line 116
    :catch_2
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_4
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method
