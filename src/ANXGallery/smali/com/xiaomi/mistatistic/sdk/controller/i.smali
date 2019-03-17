.class public Lcom/xiaomi/mistatistic/sdk/controller/i;
.super Ljava/lang/Object;
.source "HttpEventController.java"


# static fields
.field private static volatile a:Lcom/xiaomi/mistatistic/sdk/controller/i;


# instance fields
.field private b:Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Lcom/xiaomi/mistatistic/sdk/controller/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->c:Ljava/util/List;

    .line 87
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/i$2;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->d()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->d:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/i$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/i;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->b:Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;

    .line 75
    return-void
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/controller/i;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Lcom/xiaomi/mistatistic/sdk/controller/i;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/xiaomi/mistatistic/sdk/controller/i;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Lcom/xiaomi/mistatistic/sdk/controller/i;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/i;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Lcom/xiaomi/mistatistic/sdk/controller/i;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/i;->a:Lcom/xiaomi/mistatistic/sdk/controller/i;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/i;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/i;Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/i;Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/i;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a()Lcom/xiaomi/mistatistic/sdk/controller/s;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 284
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->f()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v2

    .line 286
    invoke-static {v2, v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 287
    const-string v3, "app_package"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v3, "device_uuid"

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v2, "device_os"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v2, "device_model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v2, "app_version"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v2, "app_channel"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v2, "net_value"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {v1, v0, p2}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;",
            ">;",
            "Lcom/xiaomi/mistatistic/sdk/controller/l$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 244
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    .line 248
    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 250
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 251
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 262
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 264
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 265
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    .line 266
    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 269
    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 270
    const-string/jumbo v6, "url"

    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v0, "data"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 275
    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/l$b;)V

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 299
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 301
    const-string v1, "sample_rate"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 302
    const-string v2, "delay"

    const v3, 0x493e0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 303
    const-string v3, "ban_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 304
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 305
    const-string v3, "rt_upload_rate"

    invoke-static {v0, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 306
    const-string v1, "rt_upload_delay"

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 307
    const-string v1, "rt_ban_time"

    invoke-static {v0, v1, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 308
    const-string v1, "rt_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 310
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 220
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 221
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://data.mistat.xiaomi.com/micrash"

    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://data.mistat.xiaomi.com/mistats"

    .line 223
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://data.mistat.xiaomi.com/mistats/v2"

    .line 224
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://abtest.mistat.xiaomi.com/experiments"

    .line 225
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://data.mistat.xiaomi.com/getconfig"

    .line 226
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://dev.mi.com/mistats/xmstats/event/dynamic/upload"

    .line 227
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://data.mistat.xiaomi.com/realtime_network"

    .line 228
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://data.mistat.xiaomi.com/micrash"

    .line 229
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://data.mistat.xiaomi.com/mistats"

    .line 230
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://data.mistat.xiaomi.com/mistats/v2"

    .line 231
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://abtest.mistat.xiaomi.com/experiments"

    .line 232
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://data.mistat.xiaomi.com/getconfig"

    .line 233
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://dev.mi.com/mistats/xmstats/event/dynamic/upload"

    .line 234
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://data.mistat.xiaomi.com/realtime_network"

    .line 235
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()J
    .locals 4

    .prologue
    .line 210
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rt_upload_delay"

    const-wide/32 v2, 0x493e0

    .line 209
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isTestNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://test.data.mistat.xiaomi.srv/realtime_network"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://data.mistat.xiaomi.com/realtime_network"

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V
    .locals 5

    .prologue
    const/16 v4, 0x3ff

    .line 177
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 178
    if-nez v0, :cond_1

    .line 179
    const-string v0, "HEC"

    const-string v1, "add http event without initialization."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    const-string v0, "HEC"

    const-string v1, "disabled the http event upload"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isSelfStats()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->b:Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->b:Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;

    invoke-interface {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;->onEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    move-result-object p1

    .line 193
    :cond_4
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->c:Ljava/util/List;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_5

    .line 197
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 199
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->d:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a()V

    .line 203
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->d:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->e()J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->c:Ljava/util/List;

    monitor-enter v1

    .line 83
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/i;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 6

    .prologue
    .line 157
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v0

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "rt_ban_time"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 159
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v4

    const-string v1, "rt_upload_rate"

    const/16 v4, 0x2710

    invoke-static {v0, v1, v4}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 6

    .prologue
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 172
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rt_update_time"

    const-wide/16 v4, 0x0

    .line 171
    invoke-static {v2, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
