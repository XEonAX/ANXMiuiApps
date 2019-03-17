.class public Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;
.super Ljava/lang/Object;
.source "DefaultPerfProcessor.java"

# interfaces
.implements Lcom/xiaomi/clientreport/processor/IPerfProcessor;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mPerfMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/clientreport/data/BaseClientReport;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static getFirstPerfFileName(Lcom/xiaomi/clientreport/data/BaseClientReport;)Ljava/lang/String;
    .locals 2
    .param p0, "baseClientReport"    # Lcom/xiaomi/clientreport/data/BaseClientReport;

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaomi/clientreport/data/BaseClientReport;->production:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/clientreport/data/BaseClientReport;->clientInterfaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOriginalFilePath(Lcom/xiaomi/clientreport/data/BaseClientReport;)Ljava/lang/String;
    .locals 6
    .param p1, "baseClientReport"    # Lcom/xiaomi/clientreport/data/BaseClientReport;

    .prologue
    .line 134
    const-string v3, ""

    .line 135
    .local v3, "result":Ljava/lang/String;
    iget v2, p1, Lcom/xiaomi/clientreport/data/BaseClientReport;->production:I

    .line 136
    .local v2, "production":I
    iget-object v1, p1, Lcom/xiaomi/clientreport/data/BaseClientReport;->clientInterfaceId:Ljava/lang/String;

    .line 138
    .local v1, "interfaceId":Ljava/lang/String;
    if-lez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mContext:Landroid/content/Context;

    const-string v5, "perf"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 142
    .local v0, "folder":Ljava/io/File;
    if-nez v0, :cond_1

    .line 143
    const-string v4, "cannot get folder when to write perf"

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 144
    const/4 v3, 0x0

    .line 151
    :goto_0
    return-object v3

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getWriteFileName(Lcom/xiaomi/clientreport/data/BaseClientReport;)Ljava/lang/String;
    .locals 5
    .param p1, "clientReport"    # Lcom/xiaomi/clientreport/data/BaseClientReport;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->getOriginalFilePath(Lcom/xiaomi/clientreport/data/BaseClientReport;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "beginFilePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 171
    :cond_0
    :goto_0
    return-object v3

    .line 163
    :cond_1
    const/4 v3, 0x0

    .line 164
    .local v3, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v4, 0x14

    if-ge v1, v4, :cond_0

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->isFileCanBeUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    move-object v3, v2

    .line 168
    goto :goto_0

    .line 164
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public preProcess(Lcom/xiaomi/clientreport/data/BaseClientReport;)V
    .locals 10
    .param p1, "clientReport"    # Lcom/xiaomi/clientreport/data/BaseClientReport;

    .prologue
    .line 103
    instance-of v5, p1, Lcom/xiaomi/clientreport/data/PerfClientReport;

    if-nez v5, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v5, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mPerfMap:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    move-object v4, p1

    .line 109
    check-cast v4, Lcom/xiaomi/clientreport/data/PerfClientReport;

    .line 110
    .local v4, "perfClientReport":Lcom/xiaomi/clientreport/data/PerfClientReport;
    invoke-static {v4}, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->getFirstPerfFileName(Lcom/xiaomi/clientreport/data/BaseClientReport;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "fileKey":Ljava/lang/String;
    invoke-static {v4}, Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;->generateKey(Lcom/xiaomi/clientreport/data/PerfClientReport;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mPerfMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 113
    .local v1, "innerMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/clientreport/data/BaseClientReport;>;"
    if-nez v1, :cond_2

    .line 114
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "innerMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/clientreport/data/BaseClientReport;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    .restart local v1    # "innerMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/clientreport/data/BaseClientReport;>;"
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/clientreport/data/PerfClientReport;

    .line 117
    .local v3, "oldValue":Lcom/xiaomi/clientreport/data/PerfClientReport;
    if-eqz v3, :cond_3

    .line 118
    iget-wide v6, v4, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    iget-wide v8, v3, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    .line 119
    iget-wide v6, v4, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    iget-wide v8, v3, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    .line 121
    :cond_3
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v5, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mPerfMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pre perf inner "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " outer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mPerfMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public process()V
    .locals 7

    .prologue
    .line 82
    iget-object v4, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mPerfMap:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 99
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mPerfMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 86
    iget-object v4, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mPerfMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 87
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mPerfMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 89
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/clientreport/data/BaseClientReport;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "begin write perfJob "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v0, v5, [Lcom/xiaomi/clientreport/data/BaseClientReport;

    .line 92
    .local v0, "dataArray":[Lcom/xiaomi/clientreport/data/BaseClientReport;
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 93
    invoke-virtual {p0, v0}, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->write([Lcom/xiaomi/clientreport/data/BaseClientReport;)V

    goto :goto_1

    .line 98
    .end local v0    # "dataArray":[Lcom/xiaomi/clientreport/data/BaseClientReport;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/clientreport/data/BaseClientReport;>;"
    :cond_2
    iget-object v4, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mPerfMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public readAndSend()V
    .locals 7

    .prologue
    .line 46
    iget-object v3, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mContext:Landroid/content/Context;

    const-string v4, "perf"

    const-string v5, "perfUploading"

    invoke-static {v3, v4, v5}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->moveFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mContext:Landroid/content/Context;

    const-string v4, "perfUploading"

    invoke-static {v3, v4}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->getReadFileName(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 48
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-gtz v3, :cond_1

    .line 59
    :cond_0
    return-void

    .line 51
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  perfread  paths "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 53
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 54
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_2

    .line 53
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_2
    iget-object v5, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;->extractToDatas(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 56
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 57
    invoke-virtual {p0, v2}, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->send(Ljava/util/List;)V

    goto :goto_1
.end method

.method public send(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/clientreport/util/ClientReportUtil;->sendFile(Landroid/content/Context;Ljava/util/List;)V

    .line 64
    return-void
.end method

.method public setPerfMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/clientreport/data/BaseClientReport;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/clientreport/data/BaseClientReport;>;>;"
    iput-object p1, p0, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->mPerfMap:Ljava/util/HashMap;

    .line 182
    return-void
.end method

.method public write([Lcom/xiaomi/clientreport/data/BaseClientReport;)V
    .locals 3
    .param p1, "baseClientReports"    # [Lcom/xiaomi/clientreport/data/BaseClientReport;

    .prologue
    .line 73
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 74
    .local v0, "baseClientReport":Lcom/xiaomi/clientreport/data/BaseClientReport;
    invoke-direct {p0, v0}, Lcom/xiaomi/clientreport/processor/DefaultPerfProcessor;->getWriteFileName(Lcom/xiaomi/clientreport/data/BaseClientReport;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {v1, p1}, Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;->put(Ljava/lang/String;[Lcom/xiaomi/clientreport/data/BaseClientReport;)V

    goto :goto_0
.end method
