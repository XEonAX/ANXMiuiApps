.class public Lcom/xiaomi/mistatistic/sdk/controller/f;
.super Ljava/lang/Object;
.source "ConfigProvider.java"


# static fields
.field private static volatile a:Lcom/xiaomi/mistatistic/sdk/controller/f;

.field private static d:I


# instance fields
.field private b:I

.field private c:Landroid/content/Context;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Lcom/xiaomi/mistatistic/sdk/controller/f;

    .line 52
    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:I

    .line 54
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/f$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/f;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v1, "sessionMgr"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:I

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/f;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mistatistic/sdk/controller/f;
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Lcom/xiaomi/mistatistic/sdk/controller/f;

    if-nez v0, :cond_1

    .line 79
    const-class v1, Lcom/xiaomi/mistatistic/sdk/controller/f;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Lcom/xiaomi/mistatistic/sdk/controller/f;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Lcom/xiaomi/mistatistic/sdk/controller/f;

    .line 83
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Lcom/xiaomi/mistatistic/sdk/controller/f;

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/f;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    .locals 3

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const-string v0, "CP"

    const-string v1, "no internet connection"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:I

    .line 158
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->d()V

    .line 173
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 162
    const-string v1, "channel"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "app_id"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "sdk_version"

    const-string v2, "2.1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "config_version"

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "app_version"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v2, "http://data.mistat.xiaomi.com/getconfig"

    invoke-static {v1, v2, v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string v1, "CP"

    const-string v2, "requestConfig exception "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->g()V

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const-string v0, "CP"

    const-string v1, "config result:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 184
    if-nez v1, :cond_0

    .line 187
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    const-string v1, "configVersion"

    const-string v2, "0.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v3, "configVersion"

    const-string v4, "0.0"

    invoke-static {v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 192
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v2, "configVersion"

    const-string v3, "configVersion"

    const-string v4, "0.0"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v2, "configDelay"

    const-string v3, "configDelay"

    const-string v4, "0-0"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "monitor"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/n;->a(D)V

    .line 195
    const-string/jumbo v1, "uploadPolicy"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 196
    if-nez v1, :cond_6

    .line 197
    const-string/jumbo v2, "uploadInterval"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 198
    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 203
    :cond_2
    :goto_1
    const-string v1, "configNetwork"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadNetwork(I)V

    .line 204
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object v1

    const-string/jumbo v2, "uploadIntervalBasic"

    const-wide/16 v4, -0x1

    .line 205
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v4, "uploadIntervalMin"

    const-wide/16 v6, -0x1

    .line 206
    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 204
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a(JJ)V

    .line 208
    const-string v1, "sessionMgr"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 209
    if-eq v0, v8, :cond_3

    if-eq v0, v9, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v2, "sessionMgr"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 212
    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:I

    .line 215
    :cond_4
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:I

    if-ne v0, v8, :cond_5

    .line 216
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string v1, "CP"

    const-string v2, "processResult exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 199
    :cond_6
    if-ne v1, v8, :cond_2

    .line 200
    :try_start_1
    const-string/jumbo v2, "uploadSize"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 201
    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/controller/f;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/r;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/f$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/f$3;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method static synthetic c(Lcom/xiaomi/mistatistic/sdk/controller/f;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->c()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 141
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v1, "CP"

    const-string v2, "registerNetReceiver exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v1, "configVersion"

    const-string v2, "0.0"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 226
    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 229
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v5, "config_request_time"

    invoke-static {v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v5, "config_request_time"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 231
    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 233
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v4, "config_request_time"

    invoke-static {v1, v4, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 234
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v2, "config_request_count"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v3, "config_request_count"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 237
    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 238
    goto :goto_0

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v4, "config_request_time"

    invoke-static {v1, v4, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 243
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v2, "config_request_count"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    const-string v2, "CP"

    const-string v3, "reachConfigRequestMaxCount exception"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v1, "config_request_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v2, "config_request_count"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string v1, "CP"

    const-string v2, "accumulateConfigRequestCount exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 89
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const-string v0, "CP"

    const-string v1, "Network connection is disabled."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const-string v0, "CP"

    const-string v1, "config request to max count skip.."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    if-nez p1, :cond_2

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "CP"

    const-string/jumbo v2, "updateConfig exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Landroid/content/Context;

    const-string v2, "configDelay"

    const-string v3, "0-0"

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 105
    array-length v2, v1

    if-le v2, v4, :cond_3

    .line 106
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 107
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    if-le v1, v2, :cond_3

    .line 109
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 110
    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 113
    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/f$2;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/f$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/f;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 261
    sget v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:I

    if-eq v1, v0, :cond_0

    sget v1, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 265
    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
