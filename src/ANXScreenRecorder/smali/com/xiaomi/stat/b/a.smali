.class public Lcom/xiaomi/stat/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ConfigManager"

.field private static final b:Ljava/lang/String; = "-"

.field private static c:I = 0x0

.field private static d:I = 0x0

.field private static e:I = 0x0

.field private static final f:Ljava/lang/String; = "config_request_count"

.field private static final g:Ljava/lang/String; = "config_request_time"

.field private static final h:Ljava/lang/String; = "config_success_requested"

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x0

.field private static final l:I = -0x1

.field private static final m:I = 0x0

.field private static final n:I = 0xc

.field private static final o:Ljava/lang/String; = "t"

.field private static final p:I

.field private static volatile q:Lcom/xiaomi/stat/b/a;


# instance fields
.field private r:I

.field private s:Landroid/content/Context;

.field private t:Ljava/lang/String;

.field private u:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/stat/b/a;->c:I

    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/stat/b/a;->d:I

    .line 42
    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/stat/b/a;->e:I

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/stat/b/a;->q:Lcom/xiaomi/stat/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/stat/b/a;->r:I

    .line 71
    new-instance v0, Lcom/xiaomi/stat/b/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/b/b;-><init>(Lcom/xiaomi/stat/b/a;)V

    iput-object v0, p0, Lcom/xiaomi/stat/b/a;->u:Landroid/content/BroadcastReceiver;

    .line 101
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/a;->s:Landroid/content/Context;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/b/a;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/xiaomi/stat/b/a;->r:I

    return v0
.end method

.method public static a()Lcom/xiaomi/stat/b/a;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/xiaomi/stat/b/a;->q:Lcom/xiaomi/stat/b/a;

    if-nez v0, :cond_1

    .line 106
    const-class v1, Lcom/xiaomi/stat/b/a;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/b/a;->q:Lcom/xiaomi/stat/b/a;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/xiaomi/stat/b/a;

    invoke-direct {v0}, Lcom/xiaomi/stat/b/a;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b/a;->q:Lcom/xiaomi/stat/b/a;

    .line 110
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_1
    sget-object v0, Lcom/xiaomi/stat/b/a;->q:Lcom/xiaomi/stat/b/a;

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 171
    if-lez p1, :cond_0

    .line 173
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/stat/b/a;->b()Ljava/lang/String;

    .line 179
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 200
    :try_start_0
    const-string v0, "ConfigManager"

    const-string v1, "config result:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lcom/xiaomi/stat/b/a;->d()V

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 207
    if-nez v1, :cond_0

    .line 208
    const-string v1, "time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 209
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v1

    const-string v4, "config_success_requested"

    invoke-virtual {v1, v4, v2, v3}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;J)V

    .line 210
    const-string v1, "configDelay"

    const-string v4, "0-0"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/b;->c(Ljava/lang/String;)V

    .line 212
    const-string v1, "configNetwork"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/stat/b;->c(I)V

    .line 213
    const-string v1, "uploadInterval"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lcom/xiaomi/stat/b;->d(I)V

    .line 215
    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/r;->a(J)V

    .line 216
    invoke-static {}, Lcom/xiaomi/stat/b/f;->a()Lcom/xiaomi/stat/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/stat/b/f;->a(Lorg/json/JSONObject;)V

    .line 218
    iget v0, p0, Lcom/xiaomi/stat/b/a;->r:I

    if-ne v0, v5, :cond_2

    .line 219
    iget-object v0, p0, Lcom/xiaomi/stat/b/a;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/stat/b/a;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/stat/b/a;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v1, "ConfigManager"

    const-string v2, "processResult exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/stat/b/a;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xiaomi/stat/b/a;->u:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 182
    const-string v0, "ConfigManager"

    const-string v1, "requestConfigInner"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v1, 0x0

    .line 185
    invoke-static {}, Lcom/xiaomi/stat/b/f;->a()Lcom/xiaomi/stat/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/a;->t:Ljava/lang/String;

    .line 187
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 188
    const-string v2, "t"

    sget v3, Lcom/xiaomi/stat/b/a;->e:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v2, "ai"

    invoke-static {}, Lcom/xiaomi/stat/I;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v2, p0, Lcom/xiaomi/stat/b/a;->t:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 191
    :try_start_1
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :goto_0
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 193
    :goto_1
    const-string v2, "ConfigManager"

    const-string v3, "requestConfigInner exception "

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 192
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private c()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 229
    .line 230
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    .line 231
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v4

    .line 233
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v5

    const-string v6, "config_request_time"

    invoke-virtual {v5, v6}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 234
    const-string v5, "config_request_time"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 235
    invoke-static {v6, v7}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    const-string v1, "config_request_time"

    invoke-virtual {v4, v1, v2, v3}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;J)V

    .line 238
    const-string v1, "config_request_count"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;I)V

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    const-string v2, "config_request_count"

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;I)I

    move-result v2

    .line 241
    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 242
    goto :goto_0

    .line 246
    :cond_2
    const-string v1, "config_request_time"

    invoke-virtual {v4, v1, v2, v3}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;J)V

    .line 247
    const-string v1, "config_request_count"

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    const-string v2, "ConfigManager"

    const-string v3, "isRequestCountReachMax exception"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 257
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    .line 258
    const-string v1, "config_request_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;I)I

    move-result v1

    .line 259
    const-string v2, "config_request_count"

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    const-string v1, "ConfigManager"

    const-string v2, "addRequestCount exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(ZZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 120
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    :cond_0
    const-string v0, "ConfigManager"

    const-string v1, "update abort: statistic or network is not enabled"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    const-string v0, "ConfigManager"

    const-string v1, "network is not connected!"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/stat/b/a;->r:I

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/xiaomi/stat/b/a;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/stat/b/a;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_2
    :try_start_2
    const-string v1, "ConfigManager"

    const-string v2, "updateConfig"

    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-nez p2, :cond_4

    .line 136
    const-string v1, "MI_STAT_TEST"

    const-string v2, "updateConfig-InToday"

    invoke-static {v1, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v1

    const-string v2, "config_success_requested"

    const-wide/16 v4, 0x0

    .line 138
    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 137
    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    const-string v0, "ConfigManager"

    const-string v1, "Today has successfully requested key."

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/stat/b/a;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    const-string v0, "ConfigManager"

    const-string v1, "config request to max count skip.."

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_4
    if-eqz p1, :cond_5

    if-eqz p2, :cond_6

    .line 150
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/a;->a(I)V

    goto :goto_0

    .line 152
    :cond_6
    invoke-static {}, Lcom/xiaomi/stat/b;->k()Ljava/lang/String;

    move-result-object v1

    .line 153
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 155
    array-length v2, v1

    if-le v2, v6, :cond_7

    .line 156
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 157
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 158
    if-le v1, v2, :cond_7

    .line 159
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 160
    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 163
    :cond_7
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/a;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
