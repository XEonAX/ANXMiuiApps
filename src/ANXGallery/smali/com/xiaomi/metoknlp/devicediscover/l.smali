.class public Lcom/xiaomi/metoknlp/devicediscover/l;
.super Ljava/lang/Thread;
.source "Scanner.java"


# instance fields
.field private T:Ljava/lang/ref/WeakReference;

.field private U:Ljava/lang/ref/WeakReference;

.field private final mWhat:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/l;->T:Ljava/lang/ref/WeakReference;

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/l;->U:Ljava/lang/ref/WeakReference;

    .line 28
    iput p3, p0, Lcom/xiaomi/metoknlp/devicediscover/l;->mWhat:I

    .line 29
    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/devicediscover/l;->start()V

    .line 30
    return-void
.end method

.method private L()Ljava/util/HashMap;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/16 v9, 0xff

    .line 65
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 66
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/metoknlp/devicediscover/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    const/4 v3, 0x0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 70
    const/16 v0, 0x28

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 73
    const/16 v0, 0xff

    :try_start_0
    new-array v5, v0, [Ljava/lang/Runnable;

    move v0, v1

    .line 74
    :goto_0
    if-ge v0, v9, :cond_0

    .line 75
    new-instance v6, Lcom/xiaomi/metoknlp/devicediscover/d;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/xiaomi/metoknlp/devicediscover/d;-><init>(Lcom/xiaomi/metoknlp/devicediscover/l;Ljava/lang/String;)V

    aput-object v6, v5, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 77
    :goto_1
    if-ge v0, v9, :cond_1

    .line 78
    aget-object v6, v5, v0

    invoke-interface {v4, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_1
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 84
    const-wide/16 v6, 0x2710

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 88
    :goto_2
    invoke-direct {p0, v3, v1, v9, v2}, Lcom/xiaomi/metoknlp/devicediscover/l;->a(Ljava/lang/String;IILjava/util/HashMap;)V

    .line 91
    :cond_2
    return-object v2

    .line 80
    :catch_0
    move-exception v0

    .line 82
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 84
    const-wide/16 v6, 0x2710

    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 85
    :catch_1
    move-exception v0

    goto :goto_2

    .line 82
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 84
    const-wide/16 v2, 0x2710

    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 86
    :goto_3
    throw v0

    .line 85
    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/xiaomi/metoknlp/devicediscover/l;

    invoke-direct {v0, p1, p0, p2}, Lcom/xiaomi/metoknlp/devicediscover/l;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    .line 35
    return-void
.end method

.method private a(Ljava/lang/String;IILjava/util/HashMap;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 95
    const/4 v1, 0x0

    .line 97
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/net/arp"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 102
    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    move v1, v2

    .line 103
    :goto_0
    sub-int v4, p3, p2

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 107
    const-string v4, "[ ]+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 108
    array-length v4, v1

    const/4 v5, 0x6

    if-lt v4, v5, :cond_0

    .line 114
    const/4 v4, 0x0

    aget-object v4, v1, v4

    .line 115
    const/4 v5, 0x3

    aget-object v5, v1, v5

    .line 117
    array-length v6, v3

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_0

    aget-object v7, v3, v1

    .line 118
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "..:..:..:..:..:.."

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "00:00:00:00:00:00"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 121
    invoke-virtual {p4, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_2
    if-eqz v0, :cond_3

    .line 130
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 136
    :cond_3
    :goto_2
    return-void

    .line 125
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 129
    :goto_3
    if-eqz v0, :cond_3

    .line 130
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 132
    :catch_1
    move-exception v0

    goto :goto_2

    .line 126
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 129
    :goto_4
    if-eqz v0, :cond_3

    .line 130
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 132
    :catch_3
    move-exception v0

    goto :goto_2

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    :goto_5
    if-eqz v1, :cond_4

    .line 130
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 134
    :cond_4
    :goto_6
    throw v0

    .line 132
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_6

    .line 128
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5

    .line 126
    :catch_6
    move-exception v1

    goto :goto_4

    .line 125
    :catch_7
    move-exception v1

    goto :goto_3
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/l;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 45
    iget v1, p0, Lcom/xiaomi/metoknlp/devicediscover/l;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 46
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/l;->T:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/l;->U:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/l;->T:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/l;->T:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    check-cast v0, Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/l;->L()Ljava/util/HashMap;

    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Lcom/xiaomi/metoknlp/devicediscover/l;->a(Ljava/util/HashMap;)V

    .line 41
    return-void
.end method
