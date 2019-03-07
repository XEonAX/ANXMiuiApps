.class final Lcom/xiaomi/stat/d/e$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/d/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:I = 0x7530


# instance fields
.field private b:Z

.field private c:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stat/d/e$a$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/stat/d/f;)V
    .locals 0

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/xiaomi/stat/d/e$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 798
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    .line 809
    :goto_0
    return-object v0

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/stat/d/e$a$a;->b:Z

    if-nez v0, :cond_2

    .line 802
    monitor-enter p0

    .line 803
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 804
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    if-nez v0, :cond_1

    .line 805
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Not connect or connect timeout to google play service"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 786
    monitor-enter p0

    .line 787
    :try_start_0
    iput-object p2, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    .line 788
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 789
    monitor-exit p0

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/stat/d/e$a$a;->b:Z

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/stat/d/e$a$a;->c:Landroid/os/IBinder;

    .line 795
    return-void
.end method
