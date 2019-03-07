.class public Lcom/xiaomi/stat/b/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/String; = " http://data.mistat.xiaomi.com/idservice/deviceid_get"

.field private static final c:Ljava/lang/String; = "DeviceIdManager"

.field private static final d:Ljava/lang/String; = "ia"

.field private static final e:Ljava/lang/String; = "ib"

.field private static final f:Ljava/lang/String; = "md"

.field private static final g:Ljava/lang/String; = "mm"

.field private static final h:Ljava/lang/String; = "bm"

.field private static final i:Ljava/lang/String; = "aa"

.field private static final j:Ljava/lang/String; = "ai"

.field private static final k:I = 0x0

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static final n:I = 0x3

.field private static final o:I = 0x4

.field private static final p:I = 0x5

.field private static final q:I = 0x6

.field private static final r:I = 0x1

.field private static final s:Ljava/lang/String; = "pref_key_device_id"

.field private static final t:Ljava/lang/String; = "pref_key_restore_ts"

.field private static u:Lcom/xiaomi/stat/b/d;


# instance fields
.field private v:Ljava/lang/String;

.field private w:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b/d;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    .line 74
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_key_device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static a()Lcom/xiaomi/stat/b/d;
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/xiaomi/stat/b/d;->u:Lcom/xiaomi/stat/b/d;

    if-nez v0, :cond_1

    .line 79
    sget-object v1, Lcom/xiaomi/stat/b/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/xiaomi/stat/b/d;->u:Lcom/xiaomi/stat/b/d;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/xiaomi/stat/b/d;

    invoke-direct {v0}, Lcom/xiaomi/stat/b/d;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b/d;->u:Lcom/xiaomi/stat/b/d;

    .line 83
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    sget-object v0, Lcom/xiaomi/stat/b/d;->u:Lcom/xiaomi/stat/b/d;

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

.method private e()V
    .locals 4

    .prologue
    .line 125
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    :cond_0
    const-string v0, "DeviceIdManager"

    const-string v1, "request abort: statistic or network is not enabled"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    const/4 v1, 0x3

    .line 132
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v1, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->f()Z

    move-result v2

    .line 134
    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 138
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :catch_0
    move-exception v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 145
    :cond_3
    const-string v0, "DeviceIdManager"

    const-string v1, "network is not connected!"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 154
    :try_start_0
    const-string v1, " http://data.mistat.xiaomi.com/idservice/deviceid_get"

    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->h()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    .line 155
    const-string v2, "DeviceIdManager"

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v1, "timestamp"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 159
    const-string v1, "code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 160
    const-string v3, "device_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    if-ne v1, v0, :cond_1

    .line 163
    iput-object v2, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    .line 164
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v1

    .line 165
    iget-object v3, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    const-string v3, "pref_key_device_id"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v2, "pref_key_restore_ts"

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/stat/A;->b(Ljava/lang/String;J)V

    .line 169
    :cond_0
    invoke-static {v4, v5}, Lcom/xiaomi/stat/d/r;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    const/4 v0, 0x0

    .line 179
    :cond_1
    :goto_0
    return v0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    const-string v2, "DeviceIdManager"

    const-string v3, "[getDeviceIdLocal IOException]:"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 175
    :catch_1
    move-exception v1

    .line 176
    const-string v2, "DeviceIdManager"

    const-string v3, "[getDeviceIdLocal JSONException]:"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private g()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 192
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 193
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 194
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 195
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 196
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 197
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 198
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 199
    return-object v0
.end method

.method private h()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 203
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 204
    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->g()[Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 207
    :try_start_0
    const-string v1, "ia"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v1, "ib"

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v1, "md"

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v1, "mm"

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v1, "bm"

    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v1, "aa"

    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v1, "ai"

    const/4 v4, 0x6

    aget-object v0, v0, v4

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    const-string v0, "DeviceIdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[pay-load]:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-array v1, v5, [B

    .line 220
    :try_start_1
    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v0

    .line 221
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/stat/b/h;->a([B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 225
    :goto_1
    const/4 v0, 0x0

    .line 226
    if-eqz v1, :cond_0

    .line 228
    invoke-static {v1, v6}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/d;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_0
    const-string v1, "sv"

    const-string v3, "3.0.6"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "p"

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, "ai"

    invoke-static {}, Lcom/xiaomi/stat/I;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "gzip"

    const-string v1, "0"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v0, "fc"

    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stat/b/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "sid"

    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stat/b/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-object v2

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    if-eqz p1, :cond_1

    .line 116
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/I;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/e;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/xiaomi/stat/b/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->e()V

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 98
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Lcom/xiaomi/stat/A;->a()Lcom/xiaomi/stat/A;

    move-result-object v0

    const-string v1, "pref_key_device_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/A;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
