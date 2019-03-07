.class public Lcom/xiaomi/stat/F;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/F$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field private static final b:I = 0x2710

.field private static final c:I = 0x3


# instance fields
.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;

.field private f:Landroid/os/HandlerThread;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/stat/F;->g:I

    .line 26
    const/16 v0, 0x2710

    iput v0, p0, Lcom/xiaomi/stat/F;->h:I

    .line 28
    iput v1, p0, Lcom/xiaomi/stat/F;->i:I

    .line 30
    iput-boolean v1, p0, Lcom/xiaomi/stat/F;->j:Z

    .line 33
    iput-object p1, p0, Lcom/xiaomi/stat/F;->e:Ljava/lang/Runnable;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/F;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/xiaomi/stat/F;->g:I

    return v0
.end method

.method static synthetic b(Lcom/xiaomi/stat/F;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/xiaomi/stat/F;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/stat/F;)Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/xiaomi/stat/F;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/xiaomi/stat/F;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/xiaomi/stat/F;->h:I

    return v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 37
    new-instance v0, Lcom/xiaomi/stat/F$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/stat/F$a;-><init>(Lcom/xiaomi/stat/F;Lcom/xiaomi/stat/G;)V

    .line 38
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, ""

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/stat/F;->f:Landroid/os/HandlerThread;

    .line 39
    iget-object v1, p0, Lcom/xiaomi/stat/F;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 40
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/stat/F;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/xiaomi/stat/F;->d:Landroid/os/Handler;

    .line 41
    iget-object v1, p0, Lcom/xiaomi/stat/F;->d:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/xiaomi/stat/F$a;->a(Lcom/xiaomi/stat/F$a;Landroid/os/Handler;)V

    .line 42
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 45
    iget-object v0, p0, Lcom/xiaomi/stat/F;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/F;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/stat/F;->d()V

    .line 47
    iget-object v0, p0, Lcom/xiaomi/stat/F;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 48
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    iput-boolean v2, p0, Lcom/xiaomi/stat/F;->j:Z

    .line 50
    iget-object v1, p0, Lcom/xiaomi/stat/F;->d:Landroid/os/Handler;

    iget v2, p0, Lcom/xiaomi/stat/F;->i:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 52
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/xiaomi/stat/F;->i:I

    .line 62
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xiaomi/stat/F;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    iget-object v0, p0, Lcom/xiaomi/stat/F;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stat/F;->j:Z

    .line 58
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/xiaomi/stat/F;->g:I

    .line 67
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/xiaomi/stat/F;->h:I

    .line 71
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/xiaomi/stat/F;->j:Z

    return v0
.end method
