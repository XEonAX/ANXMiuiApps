.class Lcom/xiaomi/push/log/LogFilter;
.super Ljava/lang/Object;
.source "LogFilter.java"


# static fields
.field private static MIPUSH_LOG_PATH:Ljava/lang/String;


# instance fields
.field private final dateFormatter:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private mCurrentLen:I

.field private mEndTime:Ljava/lang/String;

.field private mFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mFromTime:Ljava/lang/String;

.field private mMaxLen:I

.field private mStartFound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "/MiPushLog"

    sput-object v0, Lcom/xiaomi/push/log/LogFilter;->MIPUSH_LOG_PATH:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/push/log/LogFilter;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 54
    const/high16 v0, 0x200000

    iput v0, p0, Lcom/xiaomi/push/log/LogFilter;->mMaxLen:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/log/LogFilter;->mFiles:Ljava/util/ArrayList;

    return-void
.end method

.method private doFilter(Ljava/io/BufferedReader;Ljava/io/BufferedWriter;Ljava/util/regex/Pattern;)V
    .locals 14
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "writer"    # Ljava/io/BufferedWriter;
    .param p3, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/16 v12, 0x1000

    new-array v1, v12, [C

    .line 86
    .local v1, "buf":[C
    const/4 v4, 0x0

    .line 87
    .local v4, "foundEnd":Z
    const/4 v10, 0x0

    .line 88
    .local v10, "start":I
    const/4 v3, 0x0

    .line 89
    .local v3, "end":I
    invoke-virtual {p1, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v7

    .line 90
    .local v7, "n":I
    :goto_0
    const/4 v12, -0x1

    if-eq v7, v12, :cond_3

    const/4 v12, 0x1

    if-eq v4, v12, :cond_3

    .line 91
    new-instance v2, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v2, v1, v12, v7}, Ljava/lang/String;-><init>([CII)V

    .line 92
    .local v2, "content":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 93
    .local v6, "matcher":Ljava/util/regex/Matcher;
    const/4 v9, 0x0

    .line 94
    .local v9, "s":I
    move v10, v9

    .line 95
    move v3, v7

    .line 97
    :goto_1
    if-ge v9, v7, :cond_2

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 98
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .line 99
    iget-object v12, p0, Lcom/xiaomi/push/log/LogFilter;->mFromTime:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v2, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, "time":Ljava/lang/String;
    iget-boolean v12, p0, Lcom/xiaomi/push/log/LogFilter;->mStartFound:Z

    if-nez v12, :cond_1

    .line 101
    iget-object v12, p0, Lcom/xiaomi/push/log/LogFilter;->mFromTime:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_0

    .line 102
    move v10, v9

    .line 103
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/xiaomi/push/log/LogFilter;->mStartFound:Z

    .line 112
    :cond_0
    const/16 v12, 0xa

    invoke-virtual {v2, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 113
    .local v8, "nextline":I
    const/4 v12, -0x1

    if-eq v8, v12, :cond_4

    .line 114
    add-int/2addr v9, v8

    goto :goto_1

    .line 106
    .end local v8    # "nextline":I
    :cond_1
    iget-object v12, p0, Lcom/xiaomi/push/log/LogFilter;->mEndTime:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_0

    .line 107
    move v3, v9

    .line 108
    const/4 v4, 0x1

    .line 120
    .end local v11    # "time":Ljava/lang/String;
    :cond_2
    iget-boolean v12, p0, Lcom/xiaomi/push/log/LogFilter;->mStartFound:Z

    if-eqz v12, :cond_6

    .line 121
    sub-int v5, v3, v10

    .line 122
    .local v5, "len":I
    iget v12, p0, Lcom/xiaomi/push/log/LogFilter;->mCurrentLen:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/xiaomi/push/log/LogFilter;->mCurrentLen:I

    .line 123
    if-eqz v4, :cond_5

    .line 124
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v10, v5}, Ljava/io/BufferedWriter;->write([CII)V

    .line 136
    .end local v2    # "content":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "s":I
    :cond_3
    return-void

    .line 116
    .restart local v2    # "content":Ljava/lang/String;
    .restart local v6    # "matcher":Ljava/util/regex/Matcher;
    .restart local v8    # "nextline":I
    .restart local v9    # "s":I
    .restart local v11    # "time":Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/xiaomi/push/log/LogFilter;->mFromTime:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v9, v12

    goto :goto_1

    .line 127
    .end local v8    # "nextline":I
    .end local v11    # "time":Ljava/lang/String;
    .restart local v5    # "len":I
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v10, v5}, Ljava/io/BufferedWriter;->write([CII)V

    .line 129
    iget v12, p0, Lcom/xiaomi/push/log/LogFilter;->mCurrentLen:I

    iget v13, p0, Lcom/xiaomi/push/log/LogFilter;->mMaxLen:I

    if-gt v12, v13, :cond_3

    .line 134
    .end local v5    # "len":I
    :cond_6
    invoke-virtual {p1, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v7

    .line 135
    goto :goto_0
.end method

.method private filter2File(Ljava/io/File;)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 141
    const-string v0, "\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}"

    .line 142
    .local v0, "REGEX_TIME":Ljava/lang/String;
    const-string v9, "\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 144
    .local v8, "pattern":Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    .line 145
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 147
    .local v4, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .local v5, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v3, "builder":Ljava/lang/StringBuilder;
    const-string v9, "model :"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v9, "; os :"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v9, "; uid :"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getDeviceUUID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v9, "; lng :"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v9, "; sdk :"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x26

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v9, "; andver :"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v9, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 161
    const/4 v9, 0x0

    iput v9, p0, Lcom/xiaomi/push/log/LogFilter;->mCurrentLen:I

    .line 162
    iget-object v9, p0, Lcom/xiaomi/push/log/LogFilter;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    move-object v2, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 163
    .local v7, "log":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 165
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-direct {p0, v1, v5, v8}, Lcom/xiaomi/push/log/LogFilter;->doFilter(Ljava/io/BufferedReader;Ljava/io/BufferedWriter;Ljava/util/regex/Pattern;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v1

    .line 167
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 168
    .end local v7    # "log":Ljava/io/File;
    :cond_0
    :try_start_4
    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/network/HostManager;->dump()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 174
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 175
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object v1, v2

    .line 177
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_1
    return-void

    .line 169
    :catch_0
    move-exception v6

    .line 170
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LOG: filter error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 174
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 175
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 171
    :catch_1
    move-exception v6

    .line 172
    .local v6, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LOG: filter error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 174
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 175
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 174
    throw v9

    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    goto :goto_5

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 171
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    goto :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v6

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 169
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v6

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "bw":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v6

    move-object v4, v5

    .end local v5    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "bw":Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method


# virtual methods
.method addFile(Ljava/io/File;)Lcom/xiaomi/push/log/LogFilter;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaomi/push/log/LogFilter;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-object p0
.end method

.method filter(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Ljava/io/File;)Ljava/io/File;
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "from"    # Ljava/util/Date;
    .param p3, "to"    # Ljava/util/Date;
    .param p4, "destDir"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 212
    const/4 v0, 0x0

    .line 216
    .local v0, "dir":Ljava/io/File;
    const-string v6, "com.xiaomi.xmsf"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 218
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "xmsf.log.1"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/xiaomi/push/log/LogFilter;->addFile(Ljava/io/File;)Lcom/xiaomi/push/log/LogFilter;

    .line 219
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "xmsf.log"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/xiaomi/push/log/LogFilter;->addFile(Ljava/io/File;)Lcom/xiaomi/push/log/LogFilter;

    .line 227
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v4, v5

    .line 253
    :cond_0
    :goto_1
    return-object v4

    .line 222
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "dir":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/push/log/LogFilter;->MIPUSH_LOG_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .restart local v0    # "dir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "log0.txt"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/xiaomi/push/log/LogFilter;->addFile(Ljava/io/File;)Lcom/xiaomi/push/log/LogFilter;

    .line 224
    new-instance v6, Ljava/io/File;

    const-string v7, "log1.txt"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/xiaomi/push/log/LogFilter;->addFile(Ljava/io/File;)Lcom/xiaomi/push/log/LogFilter;

    goto :goto_0

    .line 231
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 232
    .local v4, "zip":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v4, v5

    .line 234
    goto :goto_1

    .line 237
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/push/log/LogFilter;->setRange(Ljava/util/Date;Ljava/util/Date;)Lcom/xiaomi/push/log/LogFilter;

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 239
    .local v2, "start":J
    new-instance v1, Ljava/io/File;

    const-string v6, "log.txt"

    invoke-direct {v1, p4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    .local v1, "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/xiaomi/push/log/LogFilter;->filter2File(Ljava/io/File;)V

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LOG: filter cost = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 246
    invoke-static {v4, v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->zip(Ljava/io/File;Ljava/io/File;)V

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LOG: zip cost = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 249
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    move-object v4, v5

    .line 253
    goto/16 :goto_1
.end method

.method setMaxLen(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    iput p1, p0, Lcom/xiaomi/push/log/LogFilter;->mMaxLen:I

    .line 75
    :cond_0
    return-void
.end method

.method setRange(Ljava/util/Date;Ljava/util/Date;)Lcom/xiaomi/push/log/LogFilter;
    .locals 1
    .param p1, "from"    # Ljava/util/Date;
    .param p2, "to"    # Ljava/util/Date;

    .prologue
    .line 60
    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaomi/push/log/LogFilter;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/log/LogFilter;->mFromTime:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/xiaomi/push/log/LogFilter;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/log/LogFilter;->mEndTime:Ljava/lang/String;

    .line 68
    :goto_0
    return-object p0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/log/LogFilter;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/log/LogFilter;->mFromTime:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/xiaomi/push/log/LogFilter;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/log/LogFilter;->mEndTime:Ljava/lang/String;

    goto :goto_0
.end method
