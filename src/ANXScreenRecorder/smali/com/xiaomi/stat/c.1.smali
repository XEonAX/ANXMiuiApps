.class public Lcom/xiaomi/stat/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DBExecutor"

.field private static b:Ljava/lang/String; = null

.field private static final c:Ljava/lang/String; = "mistat"

.field private static final d:Ljava/lang/String; = "db.lk"

.field private static e:Landroid/os/Handler;

.field private static f:Ljava/nio/channels/FileLock;

.field private static g:Ljava/nio/channels/FileChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "mistat_db"

    sput-object v0, Lcom/xiaomi/stat/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/xiaomi/stat/c;->c()V

    .line 44
    sget-object v0, Lcom/xiaomi/stat/c;->e:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/stat/c$a;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/c$a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/xiaomi/stat/c;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/xiaomi/stat/c;->e()V

    return-void
.end method

.method private static c()V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/xiaomi/stat/c;->e:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/xiaomi/stat/c;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/c;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v2, Lcom/xiaomi/stat/c;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/xiaomi/stat/c;->e:Landroid/os/Handler;

    .line 37
    :cond_0
    monitor-exit v1

    .line 39
    :cond_1
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static d()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 70
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "mistat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 75
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "db.lk"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    .line 86
    :try_start_1
    sget-object v1, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/stat/c;->f:Ljava/nio/channels/FileLock;

    .line 87
    const-string v1, "DBExecutor"

    const-string v2, "acquire lock for db"

    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    const-string v2, "DBExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire lock for db failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :catch_1
    move-exception v1

    .line 90
    const-string v2, "DBExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire lock for db failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :try_start_2
    sget-object v2, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 93
    const/4 v2, 0x0

    sput-object v2, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 94
    :catch_2
    move-exception v2

    .line 95
    const-string v2, "DBExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close file stream failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static e()V
    .locals 4

    .prologue
    .line 103
    sget-object v0, Lcom/xiaomi/stat/c;->f:Ljava/nio/channels/FileLock;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 107
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/c;->f:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/stat/c;->f:Ljava/nio/channels/FileLock;

    .line 109
    const-string v0, "DBExecutor"

    const-string v1, "release lock for db"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v1, "DBExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release lock for db failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
