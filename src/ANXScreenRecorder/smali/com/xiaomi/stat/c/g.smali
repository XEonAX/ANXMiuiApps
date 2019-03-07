.class public Lcom/xiaomi/stat/c/g;
.super Landroid/os/Handler;


# static fields
.field private static final c:Ljava/lang/String; = "UploadTimer"

.field private static final d:I = 0x3a98

.field private static final e:I = 0x5

.field private static final f:I = 0x15180

.field private static final g:I = 0x1

.field private static final h:I = 0x2


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field b:Landroid/content/BroadcastReceiver;

.field private i:J

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private k:I

.field private l:Z

.field private m:J

.field private n:J

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/xiaomi/stat/c/g;->i:J

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/stat/c/g;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    .line 39
    iput-boolean v2, p0, Lcom/xiaomi/stat/c/g;->l:Z

    .line 42
    iput-boolean v2, p0, Lcom/xiaomi/stat/c/g;->o:Z

    .line 127
    new-instance v0, Lcom/xiaomi/stat/c/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/c/h;-><init>(Lcom/xiaomi/stat/c/g;)V

    iput-object v0, p0, Lcom/xiaomi/stat/c/g;->b:Landroid/content/BroadcastReceiver;

    .line 47
    const v0, 0xea60

    iput v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    .line 48
    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/xiaomi/stat/c/g;->k:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 49
    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/stat/c/g;->sendEmptyMessageDelayed(IJ)Z

    .line 50
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/g;->a(Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadTimer UploadTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/stat/c/g;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    const v1, 0x15180

    const/4 v0, 0x5

    .line 68
    if-gez p1, :cond_1

    .line 69
    const/4 p1, 0x0

    .line 75
    :cond_0
    :goto_0
    return p1

    .line 70
    :cond_1
    if-lez p1, :cond_2

    if-ge p1, v0, :cond_2

    move p1, v0

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    if-le p1, v1, :cond_0

    move p1, v1

    .line 73
    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/stat/c/g;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/xiaomi/stat/c/g;->n:J

    return-wide v0
.end method

.method static synthetic a(Lcom/xiaomi/stat/c/g;J)J
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/xiaomi/stat/c/g;->n:J

    return-wide p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/xiaomi/stat/c/g;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/stat/c/g;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    return v0
.end method

.method static synthetic c(Lcom/xiaomi/stat/c/g;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/xiaomi/stat/c/g;->l:Z

    return v0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/xiaomi/stat/b;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/g;->a(I)I

    move-result v0

    .line 56
    if-lez v0, :cond_0

    .line 57
    mul-int/lit16 v0, v0, 0x3e8

    .line 64
    :goto_0
    return v0

    .line 60
    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/b;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/g;->a(I)I

    move-result v0

    .line 61
    if-lez v0, :cond_1

    .line 62
    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 64
    :cond_1
    const/16 v0, 0x3a98

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/i;->c()V

    .line 94
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 167
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/c;->c()J

    move-result-wide v0

    .line 169
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 181
    :goto_0
    return-void

    .line 173
    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    .line 175
    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadTimer checkDatabase mIsDatabaseEmpty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/xiaomi/stat/c/g;->m:J

    return-wide v0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 101
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/stat/c/g;->o:Z

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    .line 104
    :cond_0
    iput-boolean p1, p0, Lcom/xiaomi/stat/c/g;->l:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stat/c/g;->o:Z

    .line 106
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    .line 111
    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/xiaomi/stat/c/g;->k:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/xiaomi/stat/c/g;->removeMessages(I)V

    .line 113
    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/stat/c/g;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadTimer resetBackgroundInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/stat/c/g;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public b(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 141
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/c;->c()J

    move-result-wide v0

    .line 142
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadTimer totalCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deleteData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/xiaomi/stat/c/g;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/xiaomi/stat/c/g;->i:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaomi/stat/c/g;->l:Z

    if-nez v2, :cond_2

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lcom/xiaomi/stat/c/g;->k:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/xiaomi/stat/c/g;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaomi/stat/c/g;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 81
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->e()V

    .line 84
    iget-boolean v0, p0, Lcom/xiaomi/stat/c/g;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    iput-wide v0, p0, Lcom/xiaomi/stat/c/g;->m:J

    .line 85
    iget-wide v0, p0, Lcom/xiaomi/stat/c/g;->m:J

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/stat/c/g;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadTimer handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/stat/c/g;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_1
    return-void

    .line 84
    :cond_1
    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v0, v0

    goto :goto_0

    .line 87
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->f()V

    goto :goto_1
.end method
