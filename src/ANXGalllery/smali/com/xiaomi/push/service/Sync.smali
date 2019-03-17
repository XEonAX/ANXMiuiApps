.class public final Lcom/xiaomi/push/service/Sync;
.super Ljava/lang/Object;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/Sync$SyncJob;
    }
.end annotation


# static fields
.field private static volatile sSync:Lcom/xiaomi/push/service/Sync;


# instance fields
.field mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/Sync;->mContext:Landroid/content/Context;

    .line 42
    const-string/jumbo v0, "sync"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/Sync;->mPrefs:Landroid/content/SharedPreferences;

    .line 43
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/push/service/Sync;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/xiaomi/push/service/Sync;->sSync:Lcom/xiaomi/push/service/Sync;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/push/service/Sync;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/push/service/Sync;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xiaomi/push/service/Sync;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/Sync;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lcom/xiaomi/push/service/Sync;->sSync:Lcom/xiaomi/push/service/Sync;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/xiaomi/push/service/Sync;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/Sync;->sSync:Lcom/xiaomi/push/service/Sync;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/xiaomi/push/service/Sync;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/Sync;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/Sync;->sSync:Lcom/xiaomi/push/service/Sync;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/Sync;->sSync:Lcom/xiaomi/push/service/Sync;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xiaomi/push/service/Sync;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lcom/xiaomi/push/service/Sync;->sSync:Lcom/xiaomi/push/service/Sync;

    iget-object v0, v0, Lcom/xiaomi/push/service/Sync;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/SharedPrefsCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 80
    return-void
.end method

.method public schedSync(Lcom/xiaomi/push/service/Sync$SyncJob;)V
    .locals 6
    .param p1, "job"    # Lcom/xiaomi/push/service/Sync$SyncJob;

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/lit8 v0, v1, 0xa

    .line 85
    .local v0, "randomness":I
    iget-object v1, p0, Lcom/xiaomi/push/service/Sync;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager;->addOneShootJob(Ljava/lang/Runnable;I)V

    .line 86
    return-void
.end method
