.class public Lcom/xiaomi/metoknlp/devicediscover/f;
.super Ljava/lang/Object;
.source "WifiCampStatistics.java"


# static fields
.field private static final H:J

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private I:Landroid/net/ConnectivityManager;

.field private J:Lcom/xiaomi/metoknlp/devicediscover/o;

.field private K:Lcom/xiaomi/metoknlp/devicediscover/b;

.field private L:Lcom/xiaomi/metoknlp/devicediscover/n;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/xiaomi/metoknlp/a;->g()Lcom/xiaomi/metoknlp/a;

    invoke-static {}, Lcom/xiaomi/metoknlp/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7530

    :goto_0
    sput-wide v0, Lcom/xiaomi/metoknlp/devicediscover/f;->H:J

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/metoknlp/devicediscover/f;->mLock:Ljava/lang/Object;

    return-void

    .line 27
    :cond_0
    const-wide/32 v0, 0x1b7740

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/xiaomi/metoknlp/devicediscover/k;

    invoke-direct {v0, p0}, Lcom/xiaomi/metoknlp/devicediscover/k;-><init>(Lcom/xiaomi/metoknlp/devicediscover/f;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    iput-object p1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mContext:Landroid/content/Context;

    .line 207
    return-void
.end method

.method private A()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 164
    const/4 v3, 0x0

    .line 165
    invoke-static {}, Lcom/xiaomi/metoknlp/a;->g()Lcom/xiaomi/metoknlp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-static {}, Lcom/xiaomi/metoknlp/a;->g()Lcom/xiaomi/metoknlp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/a;->n()J

    move-result-wide v0

    .line 167
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 168
    :goto_0
    iget-object v4, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v4}, Lcom/xiaomi/metoknlp/devicediscover/b;->d()V

    .line 169
    iget-object v4, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v4}, Lcom/xiaomi/metoknlp/devicediscover/b;->getDuration()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    move v0, v2

    .line 178
    :goto_1
    return v0

    .line 167
    :cond_0
    const-wide/32 v0, 0xa4cb800

    goto :goto_0

    :cond_1
    move v0, v2

    .line 173
    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private B()Z
    .locals 10

    .prologue
    .line 182
    const/4 v4, 0x0

    .line 183
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/b;->c()J

    move-result-wide v6

    .line 184
    const-wide/32 v2, 0xa4cb800

    .line 185
    invoke-static {}, Lcom/xiaomi/metoknlp/a;->g()Lcom/xiaomi/metoknlp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/a;->l()J

    move-result-wide v0

    .line 186
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v0, v8

    if-eqz v5, :cond_1

    .line 188
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 195
    :goto_1
    return v0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private C()V
    .locals 6

    .prologue
    .line 202
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->J:Lcom/xiaomi/metoknlp/devicediscover/o;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/devicediscover/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v2}, Lcom/xiaomi/metoknlp/devicediscover/b;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v4}, Lcom/xiaomi/metoknlp/devicediscover/b;->getDuration()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/metoknlp/devicediscover/o;->a(Ljava/lang/String;JJ)V

    .line 203
    return-void
.end method

.method private D()V
    .locals 3

    .prologue
    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    return-void
.end method

.method private E()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 248
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->L:Lcom/xiaomi/metoknlp/devicediscover/n;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/devicediscover/n;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->L:Lcom/xiaomi/metoknlp/devicediscover/n;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/devicediscover/n;->removeMessages(I)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->L:Lcom/xiaomi/metoknlp/devicediscover/n;

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/n;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->L:Lcom/xiaomi/metoknlp/devicediscover/n;

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/n;->removeMessages(I)V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/devicediscover/f;)Lcom/xiaomi/metoknlp/devicediscover/n;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->L:Lcom/xiaomi/metoknlp/devicediscover/n;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/devicediscover/f;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/xiaomi/metoknlp/devicediscover/f;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 83
    const/4 v0, 0x0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v3, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->I:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->I:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    if-nez v1, :cond_1

    .line 122
    :goto_1
    return-void

    .line 99
    :cond_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v5, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/xiaomi/metoknlp/devicediscover/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/devicediscover/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/devicediscover/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/metoknlp/devicediscover/b;->a(Ljava/lang/String;)V

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->L:Lcom/xiaomi/metoknlp/devicediscover/n;

    invoke-virtual {v0, v4}, Lcom/xiaomi/metoknlp/devicediscover/n;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->L:Lcom/xiaomi/metoknlp/devicediscover/n;

    invoke-virtual {v0, v4}, Lcom/xiaomi/metoknlp/devicediscover/n;->removeMessages(I)V

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->L:Lcom/xiaomi/metoknlp/devicediscover/n;

    invoke-virtual {v0, v4}, Lcom/xiaomi/metoknlp/devicediscover/n;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 112
    sget-wide v2, Lcom/xiaomi/metoknlp/devicediscover/f;->H:J

    .line 113
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    if-eqz p1, :cond_5

    .line 115
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->L:Lcom/xiaomi/metoknlp/devicediscover/n;

    invoke-virtual {v1, v0}, Lcom/xiaomi/metoknlp/devicediscover/n;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 117
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->L:Lcom/xiaomi/metoknlp/devicediscover/n;

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/metoknlp/devicediscover/n;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 120
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/b;->f()V

    goto :goto_1

    .line 92
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/metoknlp/devicediscover/f;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/xiaomi/metoknlp/devicediscover/f;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/xiaomi/metoknlp/a;->g()Lcom/xiaomi/metoknlp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/f;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/f;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/f;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/f;->C()V

    .line 136
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/b;->e()V

    .line 137
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/b;->save()V

    .line 140
    :cond_1
    return-void
.end method

.method private getFetchDeviceWay()I
    .locals 1

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/xiaomi/metoknlp/MetokApplication;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/MetokApplication;->getFetchDeviceWay()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 239
    :goto_0
    return v0

    .line 236
    :catch_0
    move-exception v0

    .line 239
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 143
    const/4 v3, 0x0

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 145
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/b;->b()J

    move-result-wide v6

    .line 146
    invoke-static {}, Lcom/xiaomi/metoknlp/a;->g()Lcom/xiaomi/metoknlp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/a;->o()J

    move-result-wide v0

    .line 147
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v0, v8

    if-nez v8, :cond_0

    sget-wide v0, Lcom/xiaomi/metoknlp/devicediscover/f;->H:J

    .line 149
    :cond_0
    iget-object v8, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v8}, Lcom/xiaomi/metoknlp/devicediscover/b;->a()Ljava/lang/String;

    move-result-object v8

    .line 150
    if-eqz v8, :cond_1

    iget-object v9, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/xiaomi/metoknlp/devicediscover/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sub-long/2addr v4, v6

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    move v0, v2

    .line 160
    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public F()V
    .locals 2

    .prologue
    .line 264
    sget-object v1, Lcom/xiaomi/metoknlp/devicediscover/f;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->J:Lcom/xiaomi/metoknlp/devicediscover/o;

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/xiaomi/metoknlp/devicediscover/o;)V
    .locals 2

    .prologue
    .line 258
    sget-object v1, Lcom/xiaomi/metoknlp/devicediscover/f;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->J:Lcom/xiaomi/metoknlp/devicediscover/o;

    .line 260
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fecthDeviceImmediately()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/metoknlp/devicediscover/f;->a(Z)V

    .line 79
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/xiaomi/metoknlp/devicediscover/b;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/metoknlp/devicediscover/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    .line 211
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->I:Landroid/net/ConnectivityManager;

    .line 213
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiCampStatics"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mHandlerThread:Landroid/os/HandlerThread;

    .line 214
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 215
    new-instance v0, Lcom/xiaomi/metoknlp/devicediscover/n;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/metoknlp/devicediscover/n;-><init>(Lcom/xiaomi/metoknlp/devicediscover/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->L:Lcom/xiaomi/metoknlp/devicediscover/n;

    .line 216
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/f;->getFetchDeviceWay()I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/f;->D()V

    .line 219
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/f;->getFetchDeviceWay()I

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/devicediscover/f;->E()V

    .line 225
    :cond_0
    iput-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->I:Landroid/net/ConnectivityManager;

    .line 226
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->K:Lcom/xiaomi/metoknlp/devicediscover/b;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/b;->reset()V

    .line 227
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 229
    iput-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/f;->mHandlerThread:Landroid/os/HandlerThread;

    .line 231
    :cond_1
    return-void
.end method
