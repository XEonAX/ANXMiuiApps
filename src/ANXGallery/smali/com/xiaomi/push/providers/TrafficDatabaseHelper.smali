.class public Lcom/xiaomi/push/providers/TrafficDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TrafficDatabaseHelper.java"


# static fields
.field private static DATABASE_VERSION:I

.field public static final DataBaseLock:Ljava/lang/Object;

.field private static final TRAFFIC_Columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 22
    sput v3, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->DATABASE_VERSION:I

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->DataBaseLock:Ljava/lang/Object;

    .line 59
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const-string v1, "TEXT"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "message_ts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " LONG DEFAULT 0 "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " LONG DEFAULT 0 "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " INT DEFAULT -1 "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rcv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " INT DEFAULT -1 "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "imsi"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->TRAFFIC_Columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string/jumbo v0, "traffic.db"

    const/4 v1, 0x0

    sget v2, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->DATABASE_VERSION:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    return-void
.end method

.method private createTrafficTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE traffic(_id INTEGER  PRIMARY KEY ,"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->TRAFFIC_Columns:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    sget-object v2, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->TRAFFIC_Columns:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->TRAFFIC_Columns:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 51
    :cond_1
    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 32
    sget-object v2, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->DataBaseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 34
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->createTrafficTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 39
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Landroid/database/SQLException;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 38
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 57
    return-void
.end method
