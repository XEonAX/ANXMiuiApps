.class public Lcom/xiaomi/push/log/MIPushLog2File;
.super Ljava/lang/Object;
.source "MIPushLog2File.java"

# interfaces
.implements Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# static fields
.field public static MIPUSH_LOG_PATH:Ljava/lang/String;

.field private static final dateFormatter:Ljava/text/SimpleDateFormat;

.field private static logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mAsyncProcessor:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;


# instance fields
.field private mSDCardRootPath:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private sAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/log/MIPushLog2File;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 38
    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/push/log/MIPushLog2File;->mAsyncProcessor:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    .line 40
    const-string v0, "/MiPushLog"

    sput-object v0, Lcom/xiaomi/push/log/MIPushLog2File;->MIPUSH_LOG_PATH:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/log/MIPushLog2File;->logs:Ljava/util/List;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/log/MIPushLog2File;->mSDCardRootPath:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/xiaomi/push/log/MIPushLog2File;->sAppContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/log/MIPushLog2File;->sAppContext:Landroid/content/Context;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushLog2File;->sAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/xiaomi/push/log/MIPushLog2File;->logs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/push/log/MIPushLog2File;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/log/MIPushLog2File;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/push/log/MIPushLog2File;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/push/log/MIPushLog2File;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/xiaomi/push/log/MIPushLog2File;->writeLog2File()V

    return-void
.end method

.method private writeLog2File()V
    .locals 21

    .prologue
    .line 95
    const/4 v8, 0x0

    .line 96
    .local v8, "lockFile":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 97
    .local v7, "lock":Ljava/nio/channels/FileLock;
    const/4 v2, 0x0

    .line 99
    .local v2, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mSDCardRootPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->sAppContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 101
    .local v16, "temp":Ljava/io/File;
    if-eqz v16, :cond_0

    .line 102
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/push/log/MIPushLog2File;->mSDCardRootPath:Ljava/lang/String;

    .line 105
    .end local v16    # "temp":Ljava/io/File;
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mSDCardRootPath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/xiaomi/push/log/MIPushLog2File;->MIPUSH_LOG_PATH:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_5

    .line 107
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-nez v17, :cond_5

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "Create mipushlog directory fail."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    if-eqz v2, :cond_2

    .line 154
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 159
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 161
    :try_start_2
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 166
    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    .line 168
    :try_start_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 174
    .end local v4    # "dir":Ljava/io/File;
    :cond_4
    :goto_2
    return-void

    .line 113
    .restart local v4    # "dir":Ljava/io/File;
    :cond_5
    :try_start_4
    new-instance v6, Ljava/io/File;

    const-string v17, "log.lock"

    move-object/from16 v0, v17

    invoke-direct {v6, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 115
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 117
    :cond_7
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v17, "rw"

    move-object/from16 v0, v17

    invoke-direct {v9, v6, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    .end local v8    # "lockFile":Ljava/io/RandomAccessFile;
    .local v9, "lockFile":Ljava/io/RandomAccessFile;
    :try_start_5
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 120
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v17, Ljava/io/OutputStreamWriter;

    new-instance v18, Ljava/io/FileOutputStream;

    new-instance v19, Ljava/io/File;

    const-string v20, "log1.txt"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v20, 0x1

    invoke-direct/range {v18 .. v20}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct/range {v17 .. v18}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .local v3, "bw":Ljava/io/BufferedWriter;
    :goto_3
    :try_start_6
    sget-object v17, Lcom/xiaomi/push/log/MIPushLog2File;->logs:Ljava/util/List;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_b

    .line 123
    sget-object v17, Lcom/xiaomi/push/log/MIPushLog2File;->logs:Ljava/util/List;

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 124
    .local v13, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Throwable;>;"
    iget-object v10, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 125
    .local v10, "log":Ljava/lang/String;
    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 126
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 127
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Throwable;

    invoke-static/range {v17 .. v17}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 129
    :cond_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 130
    invoke-virtual {v3, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 147
    .end local v10    # "log":Ljava/lang/String;
    .end local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Throwable;>;"
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v8, v9

    .line 148
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "lockFile":Ljava/io/RandomAccessFile;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v8    # "lockFile":Ljava/io/RandomAccessFile;
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 152
    if-eqz v2, :cond_9

    .line 154
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 159
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_5
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 161
    :try_start_9
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 166
    :cond_a
    :goto_6
    if-eqz v8, :cond_4

    .line 168
    :try_start_a
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    .line 169
    :catch_1
    move-exception v5

    .line 170
    .local v5, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    :goto_7
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 132
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "lockFile":Ljava/io/RandomAccessFile;
    :cond_b
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 133
    if-eqz v3, :cond_14

    .line 134
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 135
    const/4 v2, 0x0

    .line 138
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    :goto_8
    :try_start_c
    new-instance v11, Ljava/io/File;

    const-string v17, "log1.txt"

    move-object/from16 v0, v17

    invoke-direct {v11, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    .local v11, "newLogFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 140
    .local v14, "size":J
    const-wide/32 v18, 0x100000

    cmp-long v17, v14, v18

    if-ltz v17, :cond_d

    .line 141
    new-instance v12, Ljava/io/File;

    const-string v17, "log0.txt"

    move-object/from16 v0, v17

    invoke-direct {v12, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v12, "oldLogFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 143
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 145
    :cond_c
    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 152
    .end local v12    # "oldLogFile":Ljava/io/File;
    :cond_d
    if-eqz v2, :cond_e

    .line 154
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 159
    :cond_e
    :goto_9
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 161
    :try_start_e
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 166
    :cond_f
    :goto_a
    if-eqz v9, :cond_10

    .line 168
    :try_start_f
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    :cond_10
    :goto_b
    move-object v8, v9

    .line 173
    .end local v9    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "lockFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    .line 152
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "newLogFile":Ljava/io/File;
    .end local v14    # "size":J
    :catchall_0
    move-exception v17

    :goto_c
    if-eqz v2, :cond_11

    .line 154
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 159
    :cond_11
    :goto_d
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 161
    :try_start_11
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    .line 166
    :cond_12
    :goto_e
    if-eqz v8, :cond_13

    .line 168
    :try_start_12
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    .line 152
    :cond_13
    :goto_f
    throw v17

    .line 155
    :catch_2
    move-exception v5

    .line 156
    .restart local v5    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 169
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 170
    .restart local v5    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 162
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 163
    .restart local v5    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 155
    .local v5, "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .line 156
    .local v5, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 162
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 163
    .restart local v5    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 155
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "dir":Ljava/io/File;
    :catch_7
    move-exception v5

    .line 156
    .restart local v5    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 169
    .end local v5    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v5

    .line 170
    .restart local v5    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    goto/16 :goto_7

    .line 162
    .end local v5    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 163
    .restart local v5    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 155
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v11    # "newLogFile":Ljava/io/File;
    .restart local v14    # "size":J
    :catch_a
    move-exception v5

    .line 156
    .restart local v5    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 169
    .end local v5    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v5

    .line 170
    .restart local v5    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 162
    .end local v5    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v5

    .line 163
    .restart local v5    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 152
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "newLogFile":Ljava/io/File;
    .end local v14    # "size":J
    :catchall_1
    move-exception v17

    move-object v8, v9

    .end local v9    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "lockFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_c

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v8    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v9    # "lockFile":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v17

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v8, v9

    .end local v9    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "lockFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_c

    .line 147
    .end local v4    # "dir":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    :catch_d
    move-exception v5

    goto/16 :goto_4

    .end local v8    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "lockFile":Ljava/io/RandomAccessFile;
    :catch_e
    move-exception v5

    move-object v8, v9

    .end local v9    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "lockFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_4

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v8    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v9    # "lockFile":Ljava/io/RandomAccessFile;
    :cond_14
    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    goto/16 :goto_8
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/log/MIPushLog2File;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    sget-object v0, Lcom/xiaomi/push/log/MIPushLog2File;->logs:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "%1$s %2$s %3$s "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/xiaomi/push/log/MIPushLog2File;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 72
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/xiaomi/push/log/MIPushLog2File;->mTag:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/xiaomi/push/log/MIPushLog2File;->mAsyncProcessor:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    new-instance v1, Lcom/xiaomi/push/log/MIPushLog2File$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/log/MIPushLog2File$1;-><init>(Lcom/xiaomi/push/log/MIPushLog2File;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->addNewTask(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;)V

    .line 92
    return-void
.end method
