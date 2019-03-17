.class public Lcom/xiaomi/smack/util/TrafficUtils;
.super Ljava/lang/Object;
.source "TrafficUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;
    }
.end annotation


# static fields
.field private static dbHelper:Lcom/xiaomi/push/providers/TrafficDatabaseHelper;

.field private static imsi:Ljava/lang/String;

.field private static lastRxTs:J

.field private static final lock:Ljava/lang/Object;

.field private static mAsyncProcessor:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

.field private static networkType:I

.field private static trafficList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->mAsyncProcessor:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/smack/util/TrafficUtils;->networkType:I

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/smack/util/TrafficUtils;->lastRxTs:J

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->lock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->trafficList:Ljava/util/List;

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->imsi:Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->dbHelper:Lcom/xiaomi/push/providers/TrafficDatabaseHelper;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->trafficList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/xiaomi/smack/util/TrafficUtils;->insertTraffic(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static distributionTraffic(Landroid/content/Context;Ljava/lang/String;JZZJ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bytesLength"    # J
    .param p4, "isRx"    # Z
    .param p5, "isSlim"    # Z
    .param p6, "ts"    # J

    .prologue
    .line 119
    invoke-static {p0}, Lcom/xiaomi/smack/util/TrafficUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .local v0, "type":I
    move-wide v1, p2

    move v3, p4

    move-wide/from16 v4, p6

    move v6, p5

    .line 120
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/smack/util/TrafficUtils;->getTraffic(IJZJZ)J

    move-result-wide v4

    .local v4, "length":J
    move-object v2, p0

    move-object v3, p1

    move v6, p4

    move-wide/from16 v7, p6

    .line 121
    invoke-static/range {v2 .. v8}, Lcom/xiaomi/smack/util/TrafficUtils;->saveTraffic(Landroid/content/Context;Ljava/lang/String;JZJ)V

    .line 122
    return-void
.end method

.method private static getActiveNetworkType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v2, -0x1

    .line 58
    .local v2, "defaultValue":I
    const/4 v1, 0x0

    .line 60
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    const-string v5, "connectivity"

    .line 61
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    if-nez v1, :cond_1

    .line 75
    .end local v2    # "defaultValue":I
    :cond_0
    :goto_0
    return v2

    .line 62
    .restart local v2    # "defaultValue":I
    :catch_0
    move-exception v3

    .line 63
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 67
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    .line 69
    .local v4, "info":Landroid/net/NetworkInfo;
    :try_start_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 73
    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    goto :goto_0

    .line 70
    :catch_1
    move-exception v3

    .line 71
    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static declared-synchronized getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const-class v2, Lcom/xiaomi/smack/util/TrafficUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/MIUIUtils;->isGDPREnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit v2

    return-object v1

    .line 85
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/smack/util/TrafficUtils;->imsi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    sget-object v1, Lcom/xiaomi/smack/util/TrafficUtils;->imsi:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :cond_1
    :try_start_2
    const-string v1, "phone"

    .line 90
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 91
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/smack/util/TrafficUtils;->imsi:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .end local v0    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_1
    :try_start_3
    sget-object v1, Lcom/xiaomi/smack/util/TrafficUtils;->imsi:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 94
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget v0, Lcom/xiaomi/smack/util/TrafficUtils;->networkType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 51
    invoke-static {p0}, Lcom/xiaomi/smack/util/TrafficUtils;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/xiaomi/smack/util/TrafficUtils;->networkType:I

    .line 53
    :cond_0
    sget v0, Lcom/xiaomi/smack/util/TrafficUtils;->networkType:I

    return v0
.end method

.method private static getTraffic(IJZJZ)J
    .locals 7
    .param p0, "networkType"    # I
    .param p1, "byteLength"    # J
    .param p3, "isRx"    # Z
    .param p4, "ts"    # J
    .param p6, "isSlim"    # Z

    .prologue
    .line 164
    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    .line 166
    sget-wide v0, Lcom/xiaomi/smack/util/TrafficUtils;->lastRxTs:J

    .line 167
    .local v0, "last":J
    sput-wide p4, Lcom/xiaomi/smack/util/TrafficUtils;->lastRxTs:J

    .line 168
    sub-long v2, p4, v0

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-wide/16 v2, 0x400

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 169
    const-wide/16 v2, 0x2

    mul-long/2addr v2, p1

    .line 173
    .end local v0    # "last":J
    :goto_0
    return-wide v2

    :cond_0
    if-nez p0, :cond_1

    const/16 v2, 0xd

    :goto_1
    int-to-long v2, v2

    mul-long/2addr v2, p1

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    goto :goto_0

    :cond_1
    const/16 v2, 0xb

    goto :goto_1
.end method

.method private static getTrafficDatabaseHelper(Landroid/content/Context;)Lcom/xiaomi/push/providers/TrafficDatabaseHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    sget-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->dbHelper:Lcom/xiaomi/push/providers/TrafficDatabaseHelper;

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->dbHelper:Lcom/xiaomi/push/providers/TrafficDatabaseHelper;

    .line 210
    :goto_0
    return-object v0

    .line 209
    :cond_0
    new-instance v0, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->dbHelper:Lcom/xiaomi/push/providers/TrafficDatabaseHelper;

    .line 210
    sget-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->dbHelper:Lcom/xiaomi/push/providers/TrafficDatabaseHelper;

    goto :goto_0
.end method

.method public static getTrafficFlow(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 220
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    goto :goto_0
.end method

.method private static insertTraffic(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;>;"
    :try_start_0
    sget-object v6, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->DataBaseLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :try_start_1
    invoke-static {p0}, Lcom/xiaomi/smack/util/TrafficUtils;->getTrafficDatabaseHelper(Landroid/content/Context;)Lcom/xiaomi/push/providers/TrafficDatabaseHelper;

    move-result-object v1

    .line 180
    .local v1, "dbHelper":Lcom/xiaomi/push/providers/TrafficDatabaseHelper;
    invoke-virtual {v1}, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 181
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;

    .line 184
    .local v3, "trafficInfo":Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 185
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "package_name"

    iget-object v8, v3, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v7, "message_ts"

    iget-wide v8, v3, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->messageTs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    const-string v7, "network_type"

    iget v8, v3, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->networkType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v7, "bytes"

    iget-wide v8, v3, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->bytes:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v7, "rcv"

    iget v8, v3, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->rcv:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v7, "imsi"

    iget-object v8, v3, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v7, "traffic"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 195
    .end local v3    # "trafficInfo":Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 197
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "dbHelper":Lcom/xiaomi/push/providers/TrafficDatabaseHelper;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 201
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_1
    return-void

    .line 193
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "dbHelper":Lcom/xiaomi/push/providers/TrafficDatabaseHelper;
    :cond_0
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 197
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method private static insertTrafficInfo2List(Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;)V
    .locals 6
    .param p0, "info"    # Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;

    .prologue
    .line 227
    sget-object v1, Lcom/xiaomi/smack/util/TrafficUtils;->trafficList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;

    .line 228
    .local v0, "element":Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;
    invoke-virtual {v0, p0}, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->canAccumulate(Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget-wide v2, v0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->bytes:J

    iget-wide v4, p0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->bytes:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;->bytes:J

    .line 234
    .end local v0    # "element":Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;
    :goto_0
    return-void

    .line 233
    :cond_1
    sget-object v1, Lcom/xiaomi/smack/util/TrafficUtils;->trafficList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static notifyNetworkChanage(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/xiaomi/smack/util/TrafficUtils;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/xiaomi/smack/util/TrafficUtils;->networkType:I

    .line 47
    return-void
.end method

.method private static saveTraffic(Landroid/content/Context;Ljava/lang/String;JZJ)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bytesLength"    # J
    .param p4, "isRx"    # Z
    .param p5, "ts"    # J

    .prologue
    .line 126
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/smack/util/TrafficUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v4

    .line 133
    .local v4, "type":I
    const/4 v0, -0x1

    if-eq v0, v4, :cond_0

    .line 137
    const/4 v9, 0x0

    .line 138
    .local v9, "listEmpty":Z
    sget-object v10, Lcom/xiaomi/smack/util/TrafficUtils;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 139
    :try_start_0
    sget-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->trafficList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    .line 141
    new-instance v0, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;

    if-eqz p4, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-nez v4, :cond_3

    .line 142
    invoke-static {p0}, Lcom/xiaomi/smack/util/TrafficUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object v1, p1

    move-wide/from16 v2, p5

    move-wide v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;-><init>(Ljava/lang/String;JIILjava/lang/String;J)V

    .line 141
    invoke-static {v0}, Lcom/xiaomi/smack/util/TrafficUtils;->insertTrafficInfo2List(Lcom/xiaomi/smack/util/TrafficUtils$TrafficInfo;)V

    .line 144
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-eqz v9, :cond_0

    .line 148
    sget-object v0, Lcom/xiaomi/smack/util/TrafficUtils;->mAsyncProcessor:Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;

    new-instance v1, Lcom/xiaomi/smack/util/TrafficUtils$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/smack/util/TrafficUtils$1;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor;->addNewTaskWithDelayed(Lcom/xiaomi/channel/commonutils/misc/SerializedAsyncTaskProcessor$SerializedAsyncTask;J)V

    goto :goto_0

    .line 141
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 142
    :cond_3
    :try_start_1
    const-string v6, ""

    goto :goto_2

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
