.class public Lcom/xiaomi/metoknlp/b/c;
.super Ljava/lang/Object;
.source "ConnectivityMonitor.java"


# static fields
.field private static Y:Lcom/xiaomi/metoknlp/b/c;


# instance fields
.field private j:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/xiaomi/metoknlp/b/c;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/b/c;->j:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/xiaomi/metoknlp/b/d;

    invoke-static {}, Lcom/xiaomi/metoknlp/MetokApplication;->get()Lcom/xiaomi/metoknlp/MetokApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/MetokApplication;->getAppHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/metoknlp/b/d;-><init>(Lcom/xiaomi/metoknlp/b/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/b/c;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/xiaomi/metoknlp/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/metoknlp/b/e;-><init>(Lcom/xiaomi/metoknlp/b/c;Lcom/xiaomi/metoknlp/b/b;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/b/c;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/xiaomi/metoknlp/b/c;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/metoknlp/b/c;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method public static M()Lcom/xiaomi/metoknlp/b/c;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/xiaomi/metoknlp/b/c;->Y:Lcom/xiaomi/metoknlp/b/c;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/b/c;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/xiaomi/metoknlp/b/c;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/metoknlp/b/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/xiaomi/metoknlp/b/c;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/xiaomi/metoknlp/b/c;->Y:Lcom/xiaomi/metoknlp/b/c;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/xiaomi/metoknlp/b/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/metoknlp/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/metoknlp/b/c;->Y:Lcom/xiaomi/metoknlp/b/c;

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/metoknlp/b/a;)V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/xiaomi/metoknlp/b/c;->j:Ljava/util/List;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/b/c;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
