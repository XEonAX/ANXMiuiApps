.class public Lcom/alipay/android/app/helper/TidHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/helper/TidHelper;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/sdk/tid/c;)Lcom/alipay/android/app/helper/Tid;
    .locals 4

    .prologue
    .line 172
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 176
    :cond_1
    new-instance v0, Lcom/alipay/android/app/helper/Tid;

    invoke-direct {v0}, Lcom/alipay/android/app/helper/Tid;-><init>()V

    .line 178
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/Tid;->setTid(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/Tid;->setTidSeed(Ljava/lang/String;)V

    .line 2220
    iget-wide v2, p0, Lcom/alipay/sdk/tid/c;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/helper/Tid;->setTimestamp(J)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/data/c;->a()Lcom/alipay/sdk/data/c;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 149
    :try_start_0
    new-instance v1, Lcom/alipay/sdk/packet/impl/c;

    invoke-direct {v1}, Lcom/alipay/sdk/packet/impl/c;-><init>()V

    .line 150
    invoke-virtual {v1, p0}, Lcom/alipay/sdk/packet/impl/c;->a(Landroid/content/Context;)Lcom/alipay/sdk/packet/b;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_1

    .line 153
    new-instance v2, Lorg/json/JSONObject;

    .line 2045
    iget-object v1, v1, Lcom/alipay/sdk/packet/b;->b:Ljava/lang/String;

    .line 153
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {p0}, Lcom/alipay/sdk/tid/c;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/c;

    move-result-object v1

    .line 155
    const-string v3, "tid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    const-string v4, "client_key"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    invoke-virtual {v1, v3, v2}, Lcom/alipay/sdk/tid/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-static {v1}, Lcom/alipay/android/app/helper/TidHelper;->a(Lcom/alipay/sdk/tid/c;)Lcom/alipay/android/app/helper/Tid;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    :cond_1
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static clearTID(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 115
    invoke-static {p0}, Lcom/alipay/sdk/tid/c;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/c;

    move-result-object v0

    .line 1201
    const-string v1, "TidStorage::delete > %s\uff0c%s\uff0c%s\uff0c%s\uff0c%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/alipay/sdk/tid/c;->j:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/alipay/sdk/tid/c;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, v0, Lcom/alipay/sdk/tid/c;->l:J

    .line 1202
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, v0, Lcom/alipay/sdk/tid/c;->m:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, v0, Lcom/alipay/sdk/tid/c;->n:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1201
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1204
    invoke-virtual {v0}, Lcom/alipay/sdk/tid/c;->d()V

    .line 116
    return-void
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)V

    .line 120
    invoke-static {p0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)V

    .line 125
    invoke-static {p0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getTIDValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    const-class v1, Lcom/alipay/android/app/helper/TidHelper;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->loadOrCreateTID(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->getTid()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getVirtualImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)V

    .line 130
    invoke-static {}, Lcom/alipay/sdk/data/c;->a()Lcom/alipay/sdk/data/c;

    invoke-static {}, Lcom/alipay/sdk/data/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)V

    .line 135
    invoke-static {}, Lcom/alipay/sdk/data/c;->a()Lcom/alipay/sdk/data/c;

    invoke-static {}, Lcom/alipay/sdk/data/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadLocalTid(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 4

    .prologue
    .line 185
    invoke-static {p0}, Lcom/alipay/sdk/tid/c;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/c;

    move-result-object v0

    .line 3212
    invoke-virtual {v0}, Lcom/alipay/sdk/tid/c;->c()Z

    move-result v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 193
    :goto_0
    return-object v0

    .line 189
    :cond_0
    new-instance v0, Lcom/alipay/android/app/helper/Tid;

    invoke-direct {v0}, Lcom/alipay/android/app/helper/Tid;-><init>()V

    .line 190
    invoke-static {p0}, Lcom/alipay/sdk/tid/c;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/Tid;->setTid(Ljava/lang/String;)V

    .line 191
    invoke-static {p0}, Lcom/alipay/sdk/tid/c;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/Tid;->setTidSeed(Ljava/lang/String;)V

    .line 192
    invoke-static {p0}, Lcom/alipay/sdk/tid/c;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/c;

    move-result-object v1

    .line 3220
    iget-wide v2, v1, Lcom/alipay/sdk/tid/c;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/helper/Tid;->setTimestamp(J)V

    goto :goto_0
.end method

.method public static declared-synchronized loadOrCreateTID(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 5

    .prologue
    .line 57
    const-class v1, Lcom/alipay/android/app/helper/TidHelper;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 58
    :try_start_0
    const-string v0, "tid"

    const-string v2, "tid_context_null"

    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    if-eqz p0, :cond_0

    .line 1112
    :try_start_1
    new-instance v4, Lcom/alipay/sdk/app/statistic/c;

    invoke-direct {v4, p0}, Lcom/alipay/sdk/app/statistic/c;-><init>(Landroid/content/Context;)V

    .line 1113
    invoke-virtual {v4, v0, v2, v3}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const-string v0, ""

    invoke-virtual {v4, v0}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)V

    .line 61
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->loadTID(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 64
    const/4 v0, 0x0

    .line 72
    :cond_2
    :goto_1
    monitor-exit v1

    return-object v0

    .line 67
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->b(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static loadTID(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 3

    .prologue
    .line 38
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)V

    .line 39
    invoke-static {p0}, Lcom/alipay/sdk/tid/c;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/c;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->a(Lcom/alipay/sdk/tid/c;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TidHelper:::loadTID > "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    return-object v0
.end method

.method public static resetTID(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u4e0d\u80fd\u5728\u4e3b\u7ebf\u7a0b\u4e2d\u8c03\u7528\u6b64\u65b9\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)V

    .line 96
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->clearTID(Landroid/content/Context;)V

    .line 98
    const/4 v0, 0x0

    .line 101
    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->b(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    :cond_1
    const/4 v0, 0x0

    .line 107
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
